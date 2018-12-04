<?php

require_once 'connect_db.php';

session_start();

//save cms

if ( isset( $_POST[ 'save' ] ) ) {
	
	var_dump( $_POST );

	$evenement = mysqli_real_escape_string( $conn, $_POST[ 'evenement' ] );
	$datum_begin = mysqli_real_escape_string( $conn, $_POST[ 'datum_begin' ] );
	$datum_eind = mysqli_real_escape_string( $conn, $_POST[ 'datum_eind' ] );
	$prijs = mysqli_real_escape_string( $conn, $_POST[ 'prijs' ] );
	$max_deelnemers = mysqli_real_escape_string( $conn, $_POST[ 'max_deelnemers' ] );

	if ( isset($_POST['check1']) ) {
		$extra_inschrijven = mysqli_real_escape_string( $conn, $_POST[ 'extra_inschrijven' ] );
	} else { 
		$extra_inschrijven = "0";
	}

	if ( isset($_POST['check2']) ) {
		$vervoer = mysqli_real_escape_string( $conn, $_POST[ 'vervoer' ] );
		$vervoer_costs = mysqli_real_escape_string( $conn, $_POST[ 'vervoer_costs' ] );
	} else { 
		$vervoer = "";
		$vervoer_costs = "";
	}

	if ( isset($_POST['check3']) ) {
		$vegetarisch = "ja";
	} else { 
		$vegetarisch = "";
	}

	if ( isset($_POST['check4']) ) {
		$editie = mysqli_real_escape_string( $conn, $_POST[ 'editie' ] );
		$editie_costs = mysqli_real_escape_string( $conn, $_POST[ 'editie_costs' ] );
	} else { 
		$editie = "";
		$editie_costs= "";
	}

	if ( isset($_POST['check5']) ) {
		$accomodatie = mysqli_real_escape_string( $conn, $_POST[ 'accomodatie' ] );
		$accomodatie_costs = mysqli_real_escape_string( $conn, $_POST[ 'accomodatie_costs' ] );
	} else { 
		$accomodatie = "";
		$accomodatie_costs = "";
	}

	if ( isset($_POST['check6']) ) {
		$annuleringsverzekering = "ja";
	} else { 
		$annuleringsverzekering = "";
	}

	if ( isset($_POST['check7']) ) {
		$verhuur = mysqli_real_escape_string( $conn, $_POST[ 'verhuur' ] );
		$verhuur_costs = mysqli_real_escape_string( $conn, $_POST[ 'verhuur_costs' ] );
	} else { 
		$verhuur = "";
		$verhuur_costs = "";
	}


		$sql = "INSERT INTO evenementen (evenement, datum_begin, datum_eind, prijs, max_deelnemers, extra_inschrijven, vegetarisch,
		 editie, editie_costs, accomodatie, accomodatie_costs, annuleringsverzekering, verhuur, verhuur_costs)
		 VALUES ('$evenement', '$datum_begin', '$datum_eind', '$prijs', '$max_deelnemers', '$extra_inschrijven', '$vegetarisch',
		  '$editie', '$editie_costs', '$accomodatie', '$accomodatie_costs', '$annuleringsverzekering', '$verhuur', '$verhuur_costs')";


		if ( $conn->query( $sql ) === TRUE ) {
		    $lastId = $conn->insert_id;
		    $sql = "INSERT INTO vervoer (evenement_id, type, kosten) VALUES ()";

		    var_dump($lastId);
		    die;
			echo "New record created successfully";
//			header('Location: inschrijven.php');
		} else {
			echo "Error: " . $sql . "<br>" . $conn->error;
		}
	}

