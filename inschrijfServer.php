<?php

require_once 'connect_db.php';

$errors = [];
session_start();


if (isset($_POST['opslaan'])) {
    $naam = mysqli_real_escape_string($conn_evenementen, $_POST['naam']);
    $email = mysqli_real_escape_string($conn_evenementen, $_POST['email']);
    $telefoonnummer = mysqli_real_escape_string($conn_evenementen, $_POST['telefoonnummer']);
    $straat = mysqli_real_escape_string($conn_evenementen, $_POST['straat']);
    $huisnummer = mysqli_real_escape_string($conn_evenementen, $_POST['huisnummer']);
    $postcode = mysqli_real_escape_string($conn_evenementen, $_POST['postcode']);
    $woonplaats = mysqli_real_escape_string($conn_evenementen, $_POST['woonplaats']);
    $extra_inschrijvers = 'none';
    $vervoer = $_POST['vervoer_radio'];
    $vegetarisch = $_POST['vegetarisch_radio'];
    $editie = $_POST['editie_radio'];
    $accomodatie = $_POST['accomodatie_radio'];
    $annuleringsverzekering = 'none';
    $verhuur = $_POST['verhuur_radio'];
    $table_name = $_POST['table_name'];

    $naam_deelnemer = $_POST['naam_deelnemer'];
    $count = count($naam_deelnemer);

    $sqlCounter = mysqli_query($conn, "SELECT max_deelnemers FROM evenementen WHERE table_name = '$table_name'");
    $rowCounter = mysqli_fetch_row($sqlCounter);


//    Prijs berekenen
    $sqlPrijs = mysqli_query($conn, "SELECT prijs FROM evenementen WHERE table_name = '$table_name'");
    $rowPrijs = mysqli_fetch_row($sqlPrijs);
    $prijs = $rowPrijs[0] * ($count + 1);
    print_r($prijs);

// Evenement data toevoegen in database
    $sql = "INSERT INTO $table_name (naam, email, telefoonnummer, straat, huisnummer, postcode, woonplaats, extra_inschrijvers, vervoer, vegetarisch, editie,
accomodatie, annuleringsverzekering, verhuur, prijs, inschrijver) 
VALUES ('$naam', '$email', '$telefoonnummer', '$straat', '$huisnummer', '$postcode', '$woonplaats', '$count',
'$vervoer', '$vegetarisch', '$editie', '$accomodatie', '$annuleringsverzekering', '$verhuur', '$prijs', '$naam')";

    $result = mysqli_query($conn_evenementen, "SELECT MAX(id) FROM $table_name");
    $row = mysqli_fetch_row($result);
    $highest_id = $row[0];

    $randomNumber = rand(1, 1000000);
    $alle_inschrijvers = "INSERT INTO alle_inschrijvers (number, naam, email, telefoonnummer, straat, huisnummer, postcode, woonplaats, extra_inschrijvers, vervoer, vegetarisch, editie,
accomodatie, annuleringsverzekering, verhuur, prijs, inschrijver, table_name) 
VALUES ('$randomNumber', '$naam', '$email', '$telefoonnummer', '$straat', '$huisnummer', '$postcode', '$woonplaats', '$count',
'$vervoer', '$vegetarisch', '$editie', '$accomodatie', '$annuleringsverzekering', '$verhuur', '$prijs', '$naam', '$table_name')";


    if ($highest_id + 1 + $count < $rowCounter[0] + 1) {
        if ($conn_evenementen->query($sql) === TRUE) {
            if ($conn_evenementen->query($alle_inschrijvers) === TRUE) {
                var_dump($_POST);
                $email_deelnemer = $_POST['email_deelnemer'];
                $telefoonnummer_deelnemer = $_POST['telefoonnummer_deelnemer'];
                $straat_deelnemer = $_POST['straat_deelnemer'];
                $huisnummer_deelnemer = $_POST['huisnummer_deelnemer'];
                $postcode_deelnemer = $_POST['postcode_deelnemer'];
                $woonplaats_deelnemer = $_POST['woonplaats_deelnemer'];
                $lastId = $conn_evenementen->insert_id;

                foreach ($naam_deelnemer as $index => $item) {
                    $sql2 = "INSERT INTO $table_name (naam, email, telefoonnummer, straat, huisnummer, postcode, woonplaats, inschrijver) 
                      VALUES ('$item', '$email_deelnemer[$index]', '$telefoonnummer_deelnemer[$index]', '$straat_deelnemer[$index]', '$huisnummer_deelnemer[$index]',
                              '$postcode_deelnemer[$index]', '$woonplaats_deelnemer[$index]', '$naam')";
                    $conn_evenementen->query($sql2);

                    $alle_deelnemers = "INSERT INTO alle_inschrijvers (naam, email, telefoonnummer, straat, huisnummer, postcode, woonplaats, inschrijver, table_name) 
VALUES ('$item', '$email_deelnemer[$index]', '$telefoonnummer_deelnemer[$index]', '$straat_deelnemer[$index]', '$huisnummer_deelnemer[$index]',
                              '$postcode_deelnemer[$index]', '$woonplaats_deelnemer[$index]', '$naam', '$table_name')";

                    if ($conn_evenementen->query($alle_deelnemers) === TRUE) {
                        header('Location: gegevens.php');
                    }else {
                        echo "Error: " . $sql . "<br>" . $conn_evenementen->error;
                    }

                }
                print_r($rowCounter[0] - $highest_id[0]);

            } else {
                echo "Error: " . $sql . "<br>" . $conn_evenementen->error;
            }
        }


//    header('Location: inschrijven.php');
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    };
}


// verwijderen van deelnemer

if ( isset( $_GET[ 'delete_inschrijver' ] ) ) {
    $id = $_GET['delete_inschrijver'];

//    Get table name

    $getSql = "SELECT table_name FROM alle_inschrijvers";
    $getResult = $conn_evenementen->query($getSql);
    $getRow = mysqli_fetch_assoc($getResult);
    $get_table = $getRow["table_name"];

// Delete uit database alle_inschrijvers
    $sql = "DELETE FROM alle_inschrijvers WHERE id=$id";
    print_r($sql);

    if ( $conn_evenementen->query( $sql ) === true ) {
//        Delete uit database van het evenement
        $sql2 = "DELETE FROM $get_table WHERE id = 3";
        if ( $conn_evenementen->query( $sql2 ) === true ) {
            header('Location: gegevens.php');
        }else {
            echo "Error deleting record: " . $conn_evenementen->error;
        }
    } else {
        echo "Error deleting record: " . $conn_evenementen->error;
    }
};

//login

if (isset($_POST['button_login'])) {
    $naam = mysqli_real_escape_string($conn_evenementen, $_POST['naam']);
    $inschrijf_nummer = mysqli_real_escape_string($conn_evenementen, $_POST['inschrijf_nummer']);

    // ensure that form fields are filled properly

    if (empty($naam)) {
        array_push($errors, "Naam is required");
    }
    if (empty($inschrijf_nummer)) {
        array_push($errors, "Inschrijfnummer is required");
    }

    if (count($errors) == 0) {
        $query = "SELECT * FROM alle_inschrijvers WHERE naam='$naam' AND number='$inschrijf_nummer'";
        $result = $conn_evenementen->query($query);
        $data = mysqli_fetch_assoc($result);

        if (mysqli_num_rows($result) > 0) {
            $_SESSION['logged_in'] = true;
            $_SESSION['naam'] = $data['naam'];
            $_SESSION['inschrijf_nummer'] = $data['inschrijf_nummer'];

            header('location: gegevens.php');
        } else {
            array_push($errors, "Wrong username/password combination");
        }
    }
}
?>