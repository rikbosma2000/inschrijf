<?php

require_once 'connect_db.php';

session_start();

//save cms

if ( isset( $_POST[ 'saveCms' ] ) ) {

	var_dump( $_POST );

	$evenement = mysqli_real_escape_string( $conn, $_POST[ 'evenement' ] );
	$datum_begin = mysqli_real_escape_string( $conn, $_POST[ 'datum_begin' ] );
	$datum_eind = mysqli_real_escape_string( $conn, $_POST[ 'datum_eind' ] );
	$prijs = mysqli_real_escape_string( $conn, $_POST[ 'prijs' ] );
	$max_deelnemers = mysqli_real_escape_string( $conn, $_POST[ 'max_deelnemers' ] );
    $table_name = mysqli_real_escape_string( $conn,$_POST[ 'table_name' ]);

	if ( isset( $_POST[ 'check1' ] ) ) {
		$extra_inschrijven = mysqli_real_escape_string( $conn, $_POST[ 'extra_inschrijven' ] );
		$text_extra = mysqli_real_escape_string( $conn, $_POST[ 'text_extra' ] );
	}else {
        $text_extra = 'd-none';
    }

	if ( isset( $_POST[ 'check2' ] ) ) {
		$vervoer = mysqli_real_escape_string( $conn, $_POST[ 'vervoer' ] );
		$vervoer_costs = mysqli_real_escape_string( $conn, $_POST[ 'vervoer_costs' ] );
		$text_vervoer = mysqli_real_escape_string( $conn, $_POST[ 'text_vervoer' ] );
	}else {
        $text_vervoer = 'd-none';
    }

	if ( isset( $_POST[ 'check3' ] ) ) {
		$vegetarisch = "ja";
	}else {
        $vegetarisch = 'd-none';
    }

	if ( isset( $_POST[ 'check4' ] ) ) {
		$editie = mysqli_real_escape_string( $conn, $_POST[ 'editie' ] );
		$editie_costs = mysqli_real_escape_string( $conn, $_POST[ 'editie_costs' ] );
		$text_editie = mysqli_real_escape_string( $conn, $_POST[ 'text_editie' ] );
	} else {
	    $text_editie = 'd-none';
    }

	if ( isset( $_POST[ 'check5' ] ) ) {
		$accomodatie = mysqli_real_escape_string( $conn, $_POST[ 'accomodatie' ] );
		$accomodatie_costs = mysqli_real_escape_string( $conn, $_POST[ 'accomodatie_costs' ] );
		$text_accomodatie = mysqli_real_escape_string( $conn, $_POST[ 'text_accomodatie' ] );
	}else {
        $text_accomodatie = 'd-none';
    }

	if ( isset( $_POST[ 'check6' ] ) ) {
		$annuleringsverzekering = "ja";
	}else {
        $annuleringsverzekering = 'd-none';
    }

	if ( isset( $_POST[ 'check7' ] ) ) {
		$verhuur = mysqli_real_escape_string( $conn, $_POST[ 'verhuur' ] );
		$verhuur_costs = mysqli_real_escape_string( $conn, $_POST[ 'verhuur_costs' ] );
		$text_verhuur = mysqli_real_escape_string( $conn, $_POST[ 'text_verhuur' ] );
	}else {
        $text_verhuur = 'd-none';
    }


	$sql = "INSERT INTO evenementen (evenement, datum_begin, datum_eind, prijs, max_deelnemers, extra_inschrijven, vegetarisch, annuleringsverzekering, text_extra, text_vervoer, text_editie,
									 text_accomodatie, text_verhuur, status, table_name)
		 VALUES ('$evenement', '$datum_begin', '$datum_eind', '$prijs', '$max_deelnemers', '$extra_inschrijven', '$vegetarisch', '$annuleringsverzekering', '$text_extra', '$text_vervoer', '$text_editie',
		 		 '$text_accomodatie', '$text_verhuur', 'disabled', '$table_name')";


	if ( $conn->query( $sql ) === TRUE ) {
		$lastId = $conn->insert_id;
		$vervoer = $_POST['vervoer'];
		$vervoer_costs = $_POST['vervoer_costs'];


		$create_table = "CREATE TABLE $table_name
(
id int NOT NULL AUTO_INCREMENT,
naam varchar(255),
email varchar(255),
straat varchar(255),
huisnummer varchar(255),
postcode varchar(255),
woonplaats varchar(255),
extra_inschrijvers varchar(255),
vervoer varchar(255),
vegetarisch varchar(255),
editie varchar(255),
accomodatie varchar(255),
annuleringsverzekering varchar(255),
verhuur varchar(255),
PRIMARY KEY(id)

)";
        $conn_evenementen->query( $create_table );

        foreach ($vervoer as $index => $item) {
            $sql2 = "INSERT INTO vervoer (evenement_id, vervoerType, vervoerKosten)
                      VALUES ('$lastId', '$item', '$vervoer_costs[$index]')";
            $conn->query( $sql2 );
		}

		$editie = $_POST['editie'];
        $editie_costs = $_POST['editie_costs'];

		foreach ($editie as $index => $item) {
            $sql3 = "INSERT INTO editie (evenement_id, editieType, editieKosten) 
                      VALUES ('$lastId', '$item', '$editie_costs[$index]')";
            $conn->query( $sql3 );
        }

        $accomodatie = $_POST['accomodatie'];
		$accomodatie_costs = $_POST['accomodatie_costs'];

        foreach ($accomodatie as $index => $item) {
            $sql4 = "INSERT INTO accomodatie (evenement_id, accomodatieType, accomodatieKosten)
                      VALUES ('$lastId', '$item', '$accomodatie_costs[$index]')";
            $conn->query( $sql4 );
        }

        $verhuur = $_POST['verhuur'];
        $verhuur_costs = $_POST['verhuur_costs'];

        foreach ($verhuur as $index => $item) {
            $sql5 = "INSERT INTO verhuur (evenement_id, verhuurType, verhuurKosten)
                      VALUES ('$lastId', '$item', '$verhuur_costs[$index]')";
            $conn->query( $sql5 );
        }

        var_dump( $lastId );
		echo "New record created successfully";
		header( 'Location: index.php' );
	} else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	};
}

//delete evenement

if ( isset( $_GET[ 'delete' ] ) ) {
	$id = $_GET[ 'delete' ];
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
		echo "success";
		header( 'Location: index.php' );
	} else {
		echo "Error deleting record: " . $conn->error;
	}
}

//online of disabled

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



?>
