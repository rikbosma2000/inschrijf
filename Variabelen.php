<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
"http://www.w3.org/TR/htm14/strict.dtd">
<html>
	<head>
		<title>Hallo wereld in PHP</title>
		<meta http-equiv="Content-type" content="text/html;
CHARSET=iso-8859-1" />
	</head>
	<body>
	<?php
	$naam = "JansenS";
	echo $naam;
	echo "<br>";
	if (is_integer($naam)) {
		echo $naam . 'is an int';
	} else {
		echo $naam . ' is not an int';
	}
	?>
	</body>
</html>