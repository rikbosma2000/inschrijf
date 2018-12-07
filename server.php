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

	if ( isset( $_POST[ 'check1' ] ) ) {
		$extra_inschrijven = mysqli_real_escape_string( $conn, $_POST[ 'extra_inschrijven' ] );
	}

	if ( isset( $_POST[ 'check2' ] ) ) {
		$vervoer = mysqli_real_escape_string( $conn, $_POST[ 'vervoer' ] );
		$vervoer_costs = mysqli_real_escape_string( $conn, $_POST[ 'vervoer_costs' ] );
	}

	if ( isset( $_POST[ 'check3' ] ) ) {
		$vegetarisch = "ja";
	}
	if ( isset( $_POST[ 'check4' ] ) ) {
		$editie = mysqli_real_escape_string( $conn, $_POST[ 'editie' ] );
		$editie_costs = mysqli_real_escape_string( $conn, $_POST[ 'editie_costs' ] );
	}

	if ( isset( $_POST[ 'check5' ] ) ) {
		$accomodatie = mysqli_real_escape_string( $conn, $_POST[ 'accomodatie' ] );
		$accomodatie_costs = mysqli_real_escape_string( $conn, $_POST[ 'accomodatie_costs' ] );
	}

	if ( isset( $_POST[ 'check6' ] ) ) {
		$annuleringsverzekering = "ja";
	}

	if ( isset( $_POST[ 'check7' ] ) ) {
		$verhuur = mysqli_real_escape_string( $conn, $_POST[ 'verhuur' ] );
		$verhuur_costs = mysqli_real_escape_string( $conn, $_POST[ 'verhuur_costs' ] );
	}


	$sql = "INSERT INTO evenementen (evenement, datum_begin, datum_eind, prijs, max_deelnemers, extra_inschrijven, vegetarisch, annuleringsverzekering, verhuur, verhuur_costs)
		 VALUES ('$evenement', '$datum_begin', '$datum_eind', '$prijs', '$max_deelnemers', '$extra_inschrijven', '$vegetarisch', '$annuleringsverzekering', '$verhuur', '$verhuur_costs')";



	if ( $conn->query( $sql ) === TRUE ) {
		$lastId = $conn->insert_id;
		$vervoer = $_POST['vervoer'];
		$vervoer_costs = $_POST['vervoer_costs'];

        foreach ($vervoer as $index => $item) {
            $sql2 = "INSERT INTO vervoer (evenement_id, type, kosten) VALUES ('$lastId', '$item', '$vervoer_costs[$index]')";
            $conn->query( $sql2 );
		}



		$sql3 = "INSERT INTO editie (evenement_id, type, kosten) VALUES ('$lastId', '$editie', '$editie_costs')";
		$conn->query( $sql3 );
		$sql4 = "INSERT INTO accomodatie (evenement_id, type, kosten) VALUES ('$lastId', '$accomodatie', '$accomodatie_costs')";
		$conn->query( $sql4 );
		var_dump( $lastId );
		die;
		echo "New record created successfully";
		header( 'Location: inschrijven.php' );
	} else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	};
}

//delete evenement

if ( isset( $_GET[ 'delete' ] ) ) {
	$id = $_GET[ 'delete' ];
	$sql = "DELETE FROM evenementen WHERE id=$id";

	if ( $conn->query( $sql ) === true ) {
		$sql2 = "DELETE FROM vervoer WHERE evenement_id=$id";
		$conn->query( $sql2 );
		echo "success";
		header( 'Location: index.php' );
	} else {
		echo "Error deleting record: " . $conn->error;
	}
}

//inschrijven

//$empty_array = array(); 
//
//if(count($empty_array) == 0) 
//    echo "Array is empty"; 
//else
//    echo "Array is non- empty"; 
?>