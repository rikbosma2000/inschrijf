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

    foreach ($table_name as $index_inschrijver => $item_inschrijver) {

        $sqlCounter = mysqli_query($conn, "SELECT max_deelnemers FROM evenementen WHERE table_name = '$item_inschrijver'");
        $rowCounter = mysqli_fetch_row($sqlCounter);


//    Prijs berekenen
        $sqlPrijs = mysqli_query($conn, "SELECT prijs FROM evenementen WHERE table_name = '$item_inschrijver'");
        $rowPrijs = mysqli_fetch_row($sqlPrijs);
        $prijs = $rowPrijs[0] * ($count + 1);
        print_r($prijs);


        $randomNumber = rand(1, 1000000);
        $randomNumberHash = md5($randomNumber);

        $item_inschrijver = strtolower($item_inschrijver);
        print_r($item_inschrijver);

// Evenement data toevoegen in database
        $deelname_inschrijver = $_POST["deelname_inschrijver"];

        if ($deelname_inschrijver === 'ja') {
            $sql = "INSERT INTO $item_inschrijver (naam, email, telefoonnummer, straat, huisnummer, postcode, woonplaats, vervoer, vegetarisch, editie,
accomodatie, annuleringsverzekering, verhuur, prijs, inschrijver, type_inschrijving) 
VALUES ('$naam', '$email', '$telefoonnummer', '$straat', '$huisnummer', '$postcode', '$woonplaats',
'$vervoer', '$vegetarisch', '$editie', '$accomodatie', '$annuleringsverzekering', '$verhuur', '$prijs', '$randomNumberHash', 'inschrijver')";
//            print_r('halllllo');
        }


        $result = mysqli_query($conn_evenementen, "SELECT MAX(id) FROM $item_inschrijver");
        $row = mysqli_fetch_row($result);
        $highest_id = $row[0];


        $alle_inschrijvers = "INSERT INTO alle_inschrijvers (number, naam, email, telefoonnummer, straat, huisnummer, postcode, woonplaats, vervoer, vegetarisch, editie,
accomodatie, annuleringsverzekering, verhuur, prijs, inschrijver, table_name, type_inschrijving) 
VALUES ('$randomNumberHash', '$naam', '$email', '$telefoonnummer', '$straat', '$huisnummer', '$postcode', '$woonplaats',
'$vervoer', '$vegetarisch', '$editie', '$accomodatie', '$annuleringsverzekering', '$verhuur', '$prijs', '$randomNumberHash', '$item_inschrijver', 'inschrijver')";


        var_dump($highest_id + 1 + $count);
        echo "<br><br>";
        var_dump($rowCounter[0] + 1);


        if ($highest_id + 1 + $count < $rowCounter[0] + 1) {
            if ($deelname_inschrijver === 'ja') {
                $conn_evenementen->query($sql);
            }
            if ($conn_evenementen->query($alle_inschrijvers) === TRUE) {
                $email_deelnemer = $_POST['email_deelnemer'];
                $telefoonnummer_deelnemer = $_POST['telefoonnummer_deelnemer'];
                $straat_deelnemer = $_POST['straat_deelnemer'];
                $huisnummer_deelnemer = $_POST['huisnummer_deelnemer'];
                $postcode_deelnemer = $_POST['postcode_deelnemer'];
                $woonplaats_deelnemer = $_POST['woonplaats_deelnemer'];
                $lastId = $conn_evenementen->insert_id;

                foreach ($naam_deelnemer as $index => $item) {
                    $sql2 = "INSERT INTO $item_inschrijver (naam, email, telefoonnummer, straat, huisnummer, postcode, woonplaats, inschrijver, type_inschrijving) 
                      VALUES ('$item', '$email_deelnemer[$index]', '$telefoonnummer_deelnemer[$index]', '$straat_deelnemer[$index]', '$huisnummer_deelnemer[$index]',
                              '$postcode_deelnemer[$index]', '$woonplaats_deelnemer[$index]', '$randomNumberHash', 'deelnemer')";
                    $conn_evenementen->query($sql2);

                    $alle_deelnemers = "INSERT INTO alle_inschrijvers (naam, email, telefoonnummer, straat, huisnummer, postcode, woonplaats, inschrijver, table_name, type_inschrijving) 
VALUES ('$item', '$email_deelnemer[$index]', '$telefoonnummer_deelnemer[$index]', '$straat_deelnemer[$index]', '$huisnummer_deelnemer[$index]',
                              '$postcode_deelnemer[$index]', '$woonplaats_deelnemer[$index]', '$randomNumberHash', '$item_inschrijver', 'deelnemer')";

                    echo "<br><br><br>";
                    print_r($sql2);
                    echo "<br><br><br>";
                    print_r($alle_deelnemers);
                    echo "<br><br><br>";
//                        die;
                    if ($conn_evenementen->query($alle_deelnemers) === TRUE) {
//                        header('Location: login.php');
                    } else {
                        echo "Error: " . $sql . "<br>" . $conn_evenementen->error;
                    }

                }


                $_SESSION["nummer"] = $randomNumber;
                print_r($_SESSION);

                var_dump($sql);
//                    die;
//                    header('Location: gegevens.php');

            } else {
                echo "Error: " . $alle_inschrijvers . "<br>" . $conn_evenementen->error;
            }


//    header('Location: inschrijven.php');
        } else {
            echo "Error: " . $sql . "<br>" . $conn_evenementen->error;
        };
    }
}


// verwijderen van deelnemer

if (isset($_GET['delete_inschrijver'])) {
    $id = $_GET['delete_inschrijver'];

//    Get table name

    $getSql = "SELECT table_name, naam FROM alle_inschrijvers WHERE id=$id";
    $getResult = $conn_evenementen->query($getSql);
    $getRow = mysqli_fetch_assoc($getResult);
    $get_table = $getRow["table_name"];
    $get_table = strtolower($get_table);
    $get_name = $getRow["naam"];
    $nummer = $_SESSION["nummer"];
    $nummerHash = md5($nummer);
    var_dump($get_name);
    $sqlSetId = "SET @autoid :=0;
UPDATE $get_table set id = @autoid := (@autoid+1);
ALTER TABLE $get_table AUTO_INCREMENT = 1; ";

// Delete uit database alle_inschrijvers
    $sql = "DELETE FROM alle_inschrijvers WHERE id='$id' AND naam='$get_name'";
//    print_r($sql);

    if ($conn_evenementen->query($sql) === true) {
//        Delete uit database van het evenement
        $sql2 = "DELETE FROM $get_table WHERE naam='$get_name'";

        if ($conn_evenementen->query($sql2) === true) {
            $conn_evenementen->query($sqlSetId);
            header('Location: gegevens.php');
        } else {
            echo "Error deleting record: " . $conn_evenementen->error;
        }
    } else {
        echo "Error deleting record: " . $conn_evenementen->error;
    }
};

//login

if (isset($_POST['button_login'])) {
    $email = mysqli_real_escape_string($conn_evenementen, $_POST['email']);
    $inschrijf_nummer = mysqli_real_escape_string($conn_evenementen, $_POST['inschrijf_nummer']);
    $inschrijf_nummer = md5($inschrijf_nummer);

    // ensure that form fields are filled properly

    if (empty($email)) {
        array_push($errors, "Naam is required");
    }
    if (empty($inschrijf_nummer)) {
        array_push($errors, "Inschrijfnummer is required");
    }

    if (count($errors) == 0) {
        $query = "SELECT * FROM alle_inschrijvers WHERE email='$email' AND number='$inschrijf_nummer'";
        $result = $conn_evenementen->query($query);
        $data = mysqli_fetch_assoc($result);

        if (mysqli_num_rows($result) > 0) {
            $_SESSION['logged_in'] = true;
            $_SESSION['email'] = $_POST['email'];
            $_SESSION['nummer'] = $_POST['inschrijf_nummer'];
            header('location: gegevens.php');
        } else {
            array_push($errors, "Wrong username/password combination");
        }
    }
}
?>

