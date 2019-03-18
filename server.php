<?php
// NOTE: the variable $conn is meant for the CMS, not events
// NOTE: the variable $conn_evenementen  is meant for the events, not the CMS
// Dit bestand is nodig om connectie te maken met database
require_once 'connect_db.php';

session_start();

// Het opslaan van cms
if ( isset( $_POST[ 'saveCms' ] ) ) {

// Alle ingevoerde data ophalen
	$evenement = mysqli_real_escape_string( $conn, $_POST[ 'evenement' ] );
	$datum_begin = mysqli_real_escape_string( $conn, $_POST[ 'datum_begin' ] );
	$datum_begin = date('d-m-Y', strtotime($datum_begin));
	$datum_eind = mysqli_real_escape_string( $conn, $_POST[ 'datum_eind' ] );
	$datum_eind = date('d-m-Y', strtotime($datum_eind));
	$prijs = mysqli_real_escape_string( $conn, $_POST[ 'prijs' ] );
	$max_deelnemers = mysqli_real_escape_string( $conn, $_POST[ 'max_deelnemers' ] );
	$table_name = mysqli_real_escape_string( $conn,$_POST[ 'table_name' ]);
	
	// Checkbox extra inschrijven
	if ( isset( $_POST[ 'check1' ] ) ) {
		$extra_inschrijven = mysqli_real_escape_string( $conn, $_POST[ 'extra_inschrijven' ] );
		$text_extra = mysqli_real_escape_string( $conn, $_POST[ 'text_extra' ] );
	}else {
        $text_extra = 'd-none';
	}
	
	// Checkbox vervoer
	if ( isset( $_POST[ 'check2' ] ) ) {
		$vervoer = mysqli_real_escape_string( $conn, $_POST[ 'vervoer' ] );
		$vervoer_costs = mysqli_real_escape_string( $conn, $_POST[ 'vervoer_costs' ] );
		$text_vervoer = mysqli_real_escape_string( $conn, $_POST[ 'text_vervoer' ] );
	}else {
        $text_vervoer = 'd-none';
	}
	
	// Checkbox vegetarisch
	if ( isset( $_POST[ 'check3' ] ) ) {
		$vegetarisch = "ja";
	}else {
        $vegetarisch = 'd-none';
	}
	
	// Checkbox editie
	if ( isset( $_POST[ 'check4' ] ) ) {
		$editie = mysqli_real_escape_string( $conn, $_POST[ 'editie' ] );
		$editie_costs = mysqli_real_escape_string( $conn, $_POST[ 'editie_costs' ] );
		$text_editie = mysqli_real_escape_string( $conn, $_POST[ 'text_editie' ] );
	} else {
	    $text_editie = 'd-none';
	}
	
	// Checkbox accomodatie
	if ( isset( $_POST[ 'check5' ] ) ) {
		$accomodatie = mysqli_real_escape_string( $conn, $_POST[ 'accomodatie' ] );
		$accomodatie_costs = mysqli_real_escape_string( $conn, $_POST[ 'accomodatie_costs' ] );
		$text_accomodatie = mysqli_real_escape_string( $conn, $_POST[ 'text_accomodatie' ] );
	}else {
        $text_accomodatie = 'd-none';
	}
	
	// Checkbox annuleringsverzekering
	if ( isset( $_POST[ 'check6' ] ) ) {
		$annuleringsverzekering = "ja";
	}else {
        $annuleringsverzekering = 'd-none';
	}
	
	// Checkbox verhuur
	if ( isset( $_POST[ 'check7' ] ) ) {
		$verhuur = mysqli_real_escape_string( $conn, $_POST[ 'verhuur' ] );
		$verhuur_costs = mysqli_real_escape_string( $conn, $_POST[ 'verhuur_costs' ] );
		$text_verhuur = mysqli_real_escape_string( $conn, $_POST[ 'text_verhuur' ] );
	}else {
        $text_verhuur = 'd-none';
    }

// Het toevoegen van data in de database cms
	$sql = "INSERT INTO evenementen (evenement, datum_begin, datum_eind, prijs, max_deelnemers, vegetarisch, annuleringsverzekering, text_extra, text_vervoer, text_editie,
									 text_accomodatie, text_verhuur, status, table_name)
		 VALUES ('$evenement', '$datum_begin', '$datum_eind', '$prijs', '$max_deelnemers', '$vegetarisch', '$annuleringsverzekering', '$text_extra', '$text_vervoer', '$text_editie',
		 		 '$text_accomodatie', '$text_verhuur', 'disabled', '$table_name')";

// checken of alles klopt
	if ( $conn->query( $sql ) === TRUE ) {
		$lastId = $conn->insert_id;
		$vervoer = $_POST['vervoer'];
		$vervoer_costs = $_POST['vervoer_costs'];


//  Het maken van een table in de database evenementen
		$create_table = "CREATE TABLE $table_name
(
id int NOT NULL AUTO_INCREMENT,
naam varchar(255),
email varchar(255),
telefoonnummer varchar(255),
straat varchar(255),
huisnummer varchar(255),
postcode varchar(255),
woonplaats varchar(255),
vervoer varchar(255),
vegetarisch varchar(255),
editie varchar(255),
accomodatie varchar(255),
annuleringsverzekering varchar(255),
verhuur varchar(255),
prijs decimal(19,2),
inschrijver varchar(255),
type_inschrijving varchar(255),
PRIMARY KEY(id)
)";
		$conn_evenementen->query( $create_table );

// Alle vervoersmiddelen toevoegen in table vervoer
        foreach ($vervoer as $index => $item) {
            $sql2 = "INSERT INTO vervoer (evenement_id, vervoerType, vervoerKosten)
                      VALUES ('$lastId', '$item', '$vervoer_costs[$index]')";
            $conn->query( $sql2 );
		}

// Alle edities toevoegen in table editie
		$editie = $_POST['editie'];
        $editie_costs = $_POST['editie_costs'];

		foreach ($editie as $index => $item) {
            $sql3 = "INSERT INTO editie (evenement_id, editieType, editieKosten) 
                      VALUES ('$lastId', '$item', '$editie_costs[$index]')";
            $conn->query( $sql3 );
		}
		
// Alle accomodaties toevoegen in table accomodatie
        $accomodatie = $_POST['accomodatie'];
		$accomodatie_costs = $_POST['accomodatie_costs'];

        foreach ($accomodatie as $index => $item) {
            $sql4 = "INSERT INTO accomodatie (evenement_id, accomodatieType, accomodatieKosten)
                      VALUES ('$lastId', '$item', '$accomodatie_costs[$index]')";
            $conn->query( $sql4 );
		}

// Alle verhuursmiddelen toevoegen in table verhuur
        $verhuur = $_POST['verhuur'];
        $verhuur_costs = $_POST['verhuur_costs'];

        foreach ($verhuur as $index => $item) {
            $sql5 = "INSERT INTO verhuur (evenement_id, verhuurType, verhuurKosten)
                      VALUES ('$lastId', '$item', '$verhuur_costs[$index]')";
            $conn->query( $sql5 );
        }

        var_dump( $lastId );
		echo "New record created successfully";
        echo "<script type='text/javascript'>window.location.href = 'index.php';</script>";

// Als er iets fout is deze error
	} else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	};
}

// Het verwijderen van een evenement uit het database

if ( isset( $_POST[ 'delete' ] ) ) {
	$id = $_POST[ 'delete' ];
	
	$event_sql = "SELECT evenement FROM evenementen WHERE id = ?";
	$stmt = mysqli_stmt_init($conn);
	if (!mysqli_stmt_prepare($stmt, $event_sql)) {
		header('Location: index.php?failure=deleteButton');
		exit();
	} else {
	mysqli_stmt_bind_param($stmt, 's', $id);
	mysqli_stmt_execute($stmt);
	$result = mysqli_stmt_get_result($stmt);
	$resultCheck = mysqli_num_rows($result);

	if ($resultCheck > 0) {
		if ($row = mysqli_fetch_assoc($result)) {
			$tableDelEvent = $row['evenement'];
			$strToLowerCase = strtolower($tableDelEvent);
			$strTrim = preg_replace('/\s+/', '', $strToLowerCase);
		}
	} else {
		header('Location: index.php?failure=noIdFound');
		exit();
	}
}
	$evenementen_sql = "DROP TABLE $strTrim";
	$result = mysqli_query($conn_evenementen, $evenementen_sql);

	$sql2 = "DELETE FROM vervoer WHERE evenement_id=$id";
	$conn->query( $sql2 );
	$sql3 = "DELETE FROM accomodatie WHERE evenement_id=$id";
	$conn->query( $sql3 );
	$sql4 = "DELETE FROM editie WHERE evenement_id=$id";
	$conn->query( $sql4 );
	$sql5 = "DELETE FROM verhuur WHERE evenement_id=$id";
	$conn->query( $sql5 );
	$sql = "DELETE FROM evenementen WHERE id=$id";
	

	if ( $conn->query( $sql ) === true ) {
		header( 'Location: index.php' );
	} else {
		echo "Error deleting record: " . $conn->error;
	}
}

// Het online zetten van een evenement of disabled maken

if ( isset( $_POST[ 'runBtn' ] ) ) {
$status = mysqli_real_escape_string( $conn, $_POST[ 'status' ] );
$id = $_POST[ 'runBtn' ];
	$sql = "UPDATE evenementen 
		SET status = ('$status') WHERE id= $id";

		if ($conn->query($sql) === TRUE) {
			header ('Location: inschrijven.php');
		} else {
			echo "Error: " . $sql . "<br>" . $conn->error;
		}
}
	//edit button, which will in return make it possible for you to edit your CMS post.
	//this is a stop-station and the rest of the script will be proccessed via ajax () and processEdit.php
 if (!empty($_GET['edit']) && isset($_GET['edit']) && $_SERVER['REQUEST_METHOD'] === 'GET') {
		$_SESSION['editValue'] = $_GET['edit'];
		$getEditBtn = $_SESSION['editValue'];
		header('Location: cms.php?edit='.$getEditBtn);
 }
?>
