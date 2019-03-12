<?php

	// Load setup
	require_once(dirname(__FILE__) . '/includes/init.php');

	/*
	if(isValidRequest($_POST, 200, 200))
	{
		idealcheckout_die('Too many $_POST params.', __FILE__, __LINE__);
	}

	if(isValidRequest($_GET, 10, 3))
	{
		idealcheckout_die('Too many $_GET params.', __FILE__, __LINE__);
	}
	*/

	$sOrderId = '';
	$fOrderAmount = 0;
	$fGatewayFee = 0;
	$sOrderDescription = '';
	$sOrderParams = '';
	$aOrderParams = array('data' => array(), 'text' => '');

	$sUrlPayment = '';
	$sUrlSuccess = '';
	$sUrlPending = '';
	$sUrlFailure = '';
	$sHash = '';

	$sStoreCode = idealcheckout_getStoreCode();
	$sGatewayCode = 'ideal';
	$sCountryCode = 'nl';
	$sLanguageCode = 'nl';
	$sCurrencyCode = 'EUR';

	if(!empty($_POST['reference']))
	{
		$sOrderId = $_POST['reference'];
	}
	elseif(!empty($_GET['reference']))
	{
		$sOrderId = $_GET['reference'];
	}

	if(!empty($_POST['amount']))
	{
		$fOrderAmount = floatval(str_replace(',', '.', $_POST['amount']));
	}
	elseif(!empty($_GET['amount']))
	{
		$fOrderAmount = floatval(str_replace(',', '.', $_GET['amount']));
	}

	if(!empty($_POST['description']))
	{
		$sOrderDescription = $_POST['description'];
	}
	elseif(!empty($_GET['description']))
	{
		$sOrderDescription = $_GET['description'];
	}

	if(!empty($_POST['gateway_code']))
	{
		$sGatewayCode = strtolower($_POST['gateway_code']);
	}
	elseif(!empty($_GET['gateway_code']))
	{
		$sGatewayCode = strtolower($_GET['gateway_code']);
	}

	if(!empty($_POST['country_code']))
	{
		$sCountryCode = strtoupper(substr($_POST['country_code'], 0, 2));
	}
	elseif(!empty($_GET['country_code']))
	{
		$sCountryCode = strtoupper(substr($_GET['country_code'], 0, 2));
	}

	if(!empty($_POST['language_code']))
	{
		$sLanguageCode = strtoupper(substr($_POST['language_code'], 0, 2));
	}
	elseif(!empty($_GET['language_code']))
	{
		$sLanguageCode = strtoupper(substr($_GET['language_code'], 0, 2));
	}

	if(!empty($_POST['currency_code']))
	{
		$sCurrencyCode = strtoupper(substr($_POST['currency_code'], 0, 3));
	}
	elseif(!empty($_GET['currency_code']))
	{
		$sCurrencyCode = strtoupper(substr($_GET['currency_code'], 0, 3));
	}

	if(empty($_POST['url_payment']) == false)
	{
		$sUrlPayment = $_POST['url_payment'];
	}
	elseif(empty($_GET['url_payment']) == false)
	{
		$sUrlPayment = $_GET['url_payment'];
	}

	if(empty($_POST['url_success']) == false)
	{
		$sUrlSuccess = $_POST['url_success'];
	}
	elseif(empty($_GET['url_success']) == false)
	{
		$sUrlSuccess = $_GET['url_success'];
	}

	if(empty($_POST['url_pending']) == false)
	{
		$sUrlPending = $_POST['url_pending'];
	}
	elseif(empty($_GET['url_pending']) == false)
	{
		$sUrlPending = $_GET['url_pending'];
	}

	if(empty($_POST['url_failure']) == false)
	{
		$sUrlFailure = $_POST['url_failure'];
	}
	elseif(empty($_GET['url_failure']) == false)
	{
		$sUrlFailure = $_GET['url_failure'];
	}



	// Catch dynamic $_POST params
	foreach($_POST as $k => $v)
	{
		if(!in_array($k, array('reference', 'amount', 'description', 'country_code', 'currency_code', 'gateway_code', 'language_code', 'url_payment', 'url_success', 'url_pending', 'url_failure', 'x', 'y')))
		{
			$aOrderParams['data']['post'][$k] = $v;
		}
	}

	// Catch dynamic $_GET params
	foreach($_GET as $k => $v)
	{
		if(!in_array($k, array('reference', 'amount', 'description', 'country_code', 'currency_code', 'gateway_code', 'language_code', 'url_payment', 'url_success', 'url_pending', 'url_failure', 'x', 'y')))
		{
			$aOrderParams['data']['get'][$k] = $v;
		}
	}



	$aGatewaySettings = idealcheckout_getGatewaySettings(false, $sGatewayCode);
	$aHashData = array();

	$bValidateHash = true;

	if(sizeof($_POST))
	{
		$bValidateHash = false;
	}

	if(empty($_POST['hash']) == false)
	{
		$sHash = $_POST['hash'];
		$aHashData = $_POST;
	}
	elseif(empty($_GET['hash']) == false)
	{
		$sHash = $_GET['hash'];
		$aHashData = $_GET;
	}


	// Validate hash
	if((!empty($aGatewaySettings['GATEWAY_HASH'])) && $bValidateHash)
	{
		if(empty($sHash))
		{
			idealcheckout_output('Ongeldige hash.');
		}
		elseif(strlen($sHash) != 32)
		{
			idealcheckout_output('Ongeldige hash.');
		}
		else
		{
			unset($aHashData['hash']);
			ksort($aHashData);

			$sHashData = '';

			foreach($aHashData as $k => $v)
			{
				$sHashData .= ($sHashData ? '&' : '') . $k . '=' . urlencode($v);
			}

			$sCalculatedHash = md5($aGatewaySettings['GATEWAY_HASH'] . $sHashData);

			if(strcmp($sHash, $sCalculatedHash) !== 0)
			{
				idealcheckout_output('Ongeldige hash.');
			}
		}
	}

	if(empty($sOrderId))
	{
		// Use auto_increment as id
		$sOrderId = '';
	}
	elseif(preg_match('/^[a-zA-Z0-9\-]+$/', $sOrderId) == false)
	{
		idealcheckout_output('Ongeldig betaalnummer, mag alleen letters en cijfers bevatten.');
	}
	elseif(empty($sOrderDescription))
	{
		$sOrderDescription = 'Betaling ' . $sOrderId;
	}

	if(preg_match('/^[0-9]+([.][0-9]+)?$/', $fOrderAmount) == false)
	{
		idealcheckout_output('Ongeldig bedrag.');
	}
	elseif($fOrderAmount < 1.50)
	{
		idealcheckout_output('Ongeldig bedrag. Er geldt een minimum van &euro; 1,50');
	}


	$fGatewayFee = 0.00;

	if(!empty($aGatewaySettings['GATEWAY_FEE_PERCENTAGE']))
	{
		$fGatewayFee += ($fOrderAmount * ($aGatewaySettings['GATEWAY_FEE_PERCENTAGE'] / 100));
	}

	if(!empty($aGatewaySettings['GATEWAY_FEE_FIXED']))
	{
		$fGatewayFee += $aGatewaySettings['GATEWAY_FEE_FIXED'];
	}

	if($fGatewayFee)
	{
		// $sOrderDescription .= 'Transactiekosten: ' . (($fGatewayFee > 0) ? '+' : '') . number_format($fGatewayFee, 2, ',', '');

		$sql = "SELECT `gateway_fee` FROM `" . $aIdealCheckout['database']['table'] . "` ORDER BY `id` ASC LIMIT 1;";
		if(idealcheckout_database_execute($sql) === false)
		{
			$sql = "ALTER TABLE `" . $aIdealCheckout['database']['table'] . "` ADD COLUMN `gateway_fee` DECIMAL(8,2) DEFAULT '0.00' AFTER `gateway_code`;";
			idealcheckout_database_execute($sql);
		}
	}


	// $sOrderId = ($sOrderId ? $sOrderId : idealcheckout_getRandomCode(16));
	$sOrderCode = idealcheckout_getRandomCode(32);
	$sOrderParams = idealcheckout_serialize($aOrderParams);
	$fTransactionAmount = ($fOrderAmount + $fGatewayFee);
	$sTransactionDescription = $sOrderDescription;

	// Insert into #_transactions
	$sql = "INSERT INTO `" . $aIdealCheckout['database']['table'] . "` SET
`id` = NULL,
`order_id` = '" . idealcheckout_escapeSql($sOrderId) . "',
`order_code` = '" . idealcheckout_escapeSql($sOrderCode) . "',
`order_params` = " . ($sOrderParams ? "'" . idealcheckout_escapeSql($sOrderParams) . "'" : "NULL") . ",
`store_code` = " . ($sStoreCode ? "'" . idealcheckout_escapeSql($sStoreCode) . "'" : "NULL") . ",
`gateway_code` = '" . idealcheckout_escapeSql($sGatewayCode) . "',
" . ($fGatewayFee ? "`gateway_fee` = '" . idealcheckout_escapeSql($fGatewayFee) . "', " : "") . "
`language_code` = " . ($sLanguageCode ? "'" . idealcheckout_escapeSql($sLanguageCode) . "'" : "NULL") . ",
`country_code` = " . ($sCountryCode ? "'" . idealcheckout_escapeSql($sCountryCode) . "'" : "NULL") . ",
`currency_code` = " . ($sCurrencyCode ? "'" . idealcheckout_escapeSql($sCurrencyCode) . "'" : "NULL") . ",
`transaction_id` = '" . idealcheckout_escapeSql(idealcheckout_getRandomCode(32)) . "',
`transaction_code` = '" . idealcheckout_escapeSql(idealcheckout_getRandomCode(32)) . "',
`transaction_params` = NULL,
`transaction_date` = '" . idealcheckout_escapeSql(time()) . "',
`transaction_amount` = '" . idealcheckout_escapeSql($fTransactionAmount) . "',
`transaction_description` = '" . idealcheckout_escapeSql($sTransactionDescription) . "',
`transaction_status` = NULL,
`transaction_url` = NULL,
`transaction_payment_url` = " . ($sUrlPayment ? "'" . idealcheckout_escapeSql($sUrlPayment) . "?order_id=" . idealcheckout_escapeSql($sOrderId) . "&order_code=" .idealcheckout_escapeSql($sOrderCode) . "'" : "NULL") . ",
`transaction_success_url` = " . ($sUrlSuccess ? "'" . idealcheckout_escapeSql($sUrlSuccess) . "?order_id=" . idealcheckout_escapeSql($sOrderId) . "&order_code=" .idealcheckout_escapeSql($sOrderCode) . "'" : "NULL") . ",
`transaction_pending_url` = " . ($sUrlPending ? "'" . idealcheckout_escapeSql($sUrlPending) . "?order_id=" . idealcheckout_escapeSql($sOrderId) . "&order_code=" .idealcheckout_escapeSql($sOrderCode) . "'" : "NULL") . ",
`transaction_failure_url` = " . ($sUrlFailure ? "'" . idealcheckout_escapeSql($sUrlFailure) . "?order_id=" . idealcheckout_escapeSql($sOrderId) . "&order_code=" .idealcheckout_escapeSql($sOrderCode) . "'" : "NULL") . ",
`transaction_log` = NULL;";


	if(!idealcheckout_database_query($sql))
	{
		idealcheckout_log($sql, __FILE__, __LINE__);
		idealcheckout_die(idealcheckout_database_error(), __FILE__, __LINE__);
	}


	if(empty($sOrderId))
	{
		$sOrderId = idealcheckout_database_insert_id();
		$sql = "UPDATE `" . $aIdealCheckout['database']['table'] . "` SET
`order_id` = '" . idealcheckout_escapeSql($sOrderId) . "',
`transaction_payment_url` = " . ($sUrlPayment ? "'" . idealcheckout_escapeSql($sUrlPayment) . "?order_id=" . idealcheckout_escapeSql($sOrderId) . "&order_code=" .idealcheckout_escapeSql($sOrderCode) . "'" : "NULL") . ",
`transaction_success_url` = " . ($sUrlSuccess ? "'" . idealcheckout_escapeSql($sUrlSuccess) . "?order_id=" . idealcheckout_escapeSql($sOrderId) . "&order_code=" .idealcheckout_escapeSql($sOrderCode) . "'" : "NULL") . ",
`transaction_pending_url` = " . ($sUrlPending ? "'" . idealcheckout_escapeSql($sUrlPending) . "?order_id=" . idealcheckout_escapeSql($sOrderId) . "&order_code=" .idealcheckout_escapeSql($sOrderCode) . "'" : "NULL") . ",
`transaction_failure_url` = " . ($sUrlFailure ? "'" . idealcheckout_escapeSql($sUrlFailure) . "?order_id=" . idealcheckout_escapeSql($sOrderId) . "&order_code=" .idealcheckout_escapeSql($sOrderCode) . "'" : "NULL");

		if(empty($sOrderDescription))
		{
			$sql .= ",
`transaction_description` = 'Bestelling " . idealcheckout_escapeSql($sOrderId) . "'";
		}

		$sql .= "
WHERE `id` = '" . idealcheckout_escapeSql($sOrderId) . "'
LIMIT 1;";

		idealcheckout_database_query($sql) or die('#' . __LINE__);
	}

	header('Location: setup.php?order_id=' . urlencode($sOrderId) . '&order_code=' . urlencode($sOrderCode));
	exit;


	function isValidRequest($aArray, $iLayerZero = 10, $iLayerOne = 10)
	{
		if(sizeof($aArray) > $iLayerZero)
		{
			return false;
		}
		else
		{
			foreach($aArray as $v1)
			{
				if(is_array($v1))
				{
					if(sizeof($v1) > $iLayerOne)
					{
						return false;
					}
					else
					{
						foreach($aArray as $v2)
						{
							if(is_array($v2))
							{
								return false;
							}
						}
					}
				}
			}
		}

		return true;
	}

?>