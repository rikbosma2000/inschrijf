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
    $vervoer = $_POST['vervoer_radio'];
    $vegetarisch = $_POST['vegetarisch_radio'];
    $editie = $_POST['editie_radio'];
    $accomodatie = $_POST['accomodatie_radio'];
    $annuleringsverzekering = $_POST['annuleringsverzekering_radio'];
    $verhuur = $_POST['verhuur_radio'];
    $table_name = $_POST['table_name'];

    $naam_deelnemer = $_POST['naam_deelnemer'];
    $count = count($naam_deelnemer);


    $sqlCounter = mysqli_query($conn, "SELECT max_deelnemers FROM evenementen WHERE table_name = '$table_name'");
    $rowCounter = mysqli_fetch_row($sqlCounter);


//    Prijs berekenen
//    $sqlPrijs = mysqli_query($conn, "SELECT prijs FROM evenementen WHERE table_name = '$table_name'");
//    $rowPrijs = mysqli_fetch_row($sqlPrijs);
//    $prijs = $rowPrijs[0] * ($count + 1);

    $prijs = $_POST['bedrag'];

    $randomNumber = rand(1, 1000000);
    $randomNumberHash = md5($randomNumber);


// Evenement data toevoegen in database
    $deelname_inschrijver = $_POST["deelname_inschrijver"];

    if ($deelname_inschrijver === 'ja') {
        $sql = "INSERT INTO $table_name (naam, email, telefoonnummer, straat, huisnummer, postcode, woonplaats, vervoer, vegetarisch, editie,
accomodatie, annuleringsverzekering, verhuur, prijs, inschrijver, type_inschrijving) 
VALUES ('$naam', '$email', '$telefoonnummer', '$straat', '$huisnummer', '$postcode', '$woonplaats',
'$vervoer', '$vegetarisch', '$editie', '$accomodatie', '$annuleringsverzekering', '$verhuur', '$prijs', '$randomNumberHash', 'Contactpersoon')";
//            print_r('halllllo');
    }


    $result = mysqli_query($conn_evenementen, "SELECT MAX(id) FROM $table_name");
    $row = mysqli_fetch_row($result);
    $highest_id = $row[0];


    $alle_inschrijvers = "INSERT INTO alle_inschrijvers (number, naam, email, telefoonnummer, straat, huisnummer, postcode, woonplaats, vervoer, vegetarisch, editie,
accomodatie, annuleringsverzekering, verhuur, prijs, inschrijver, table_name, type_inschrijving) 
VALUES ('$randomNumberHash', '$naam', '$email', '$telefoonnummer', '$straat', '$huisnummer', '$postcode', '$woonplaats',
'$vervoer', '$vegetarisch', '$editie', '$accomodatie', '$annuleringsverzekering', '$verhuur', '$prijs', '$randomNumberHash', '$table_name', 'Contactpersoon')";

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
                $sql2 = "INSERT INTO $table_name (naam, email, telefoonnummer, straat, huisnummer, postcode, woonplaats, inschrijver, type_inschrijving) 
                      VALUES ('$item', '$email_deelnemer[$index]', '$telefoonnummer_deelnemer[$index]', '$straat_deelnemer[$index]', '$huisnummer_deelnemer[$index]',
                              '$postcode_deelnemer[$index]', '$woonplaats_deelnemer[$index]', '$randomNumberHash', 'Deelnemer')";
                $conn_evenementen->query($sql2);

                $alle_deelnemers = "INSERT INTO alle_inschrijvers (naam, email, telefoonnummer, straat, huisnummer, postcode, woonplaats, inschrijver, table_name, type_inschrijving) 
VALUES ('$item', '$email_deelnemer[$index]', '$telefoonnummer_deelnemer[$index]', '$straat_deelnemer[$index]', '$huisnummer_deelnemer[$index]',
                              '$postcode_deelnemer[$index]', '$woonplaats_deelnemer[$index]', '$randomNumberHash', '$table_name', 'Deelnemer')";

//                        die;
                if ($conn_evenementen->query($alle_deelnemers) === TRUE) {
                    header('Location: gegevens.php');
                } else {
                    echo "Error: " . $sql . "<br>" . $conn_evenementen->error;
                }

            }
            $_SESSION["nummer"] = $randomNumber;


            $message = "Beste $naam,\r\n
Gefeliciteerd, je aanmelding is in goede orde ontvangen en onder voorbehoud van tijdige betaling, hierbij bevestigd. Controleer onderstaande gegevens goed en stuur eventuele wijzigingen als antwoord op deze mail naar ons toe. Je ontvangt ongeveer twee weken voor vertrek nog een mail van Friesland Beweegt, met extra informatie over je boeking.Bedankt voor uw inschrijving voor het evenement $table_name! Uw inschrijfnummer is: $randomNumber. Dat nummer heeft u nodig om in te loggen om uw gegevens te kunnen zien! \r\n
U kunt inloggen op de volgende link: http://campina.regenwolk.nl/login.php.

Betaling
- Je betaling moet binnen een maand na aanmelding bij ons binnen zijn. Als je iDeal betaling mislukt is, dan kun je het bedrag altijd via een gewone bankopdracht overmaken.
- Vermeld bij zelf overschrijven zorgvuldig de referentie. Hiermee kunnen we je betaling aan je inschrijving koppelen. Niet traceerbare betaling worden teruggeboekt, met mogelijk gevolgen voor je inschrijving.
Inschrijver: $naam
Adres : $straat
Plaats : $postcode $woonplaats
Telefoon : $telefoonnummer

Betaalgegevens Friesland Beweegt:
Bedrag : Euro $prijs
Rekening : NL54 RABO 0150 8191 45
BIC : RABONL2U (Voor betalingen vanuit het buitenland)
Ten name van : Stichting Friesland Beweegt
Referentie : WT-19215 

Annulering
Mocht je willen annuleren, dan moet je dit in ieder geval, liefst via een antwoord op deze mail, aan ons doorgeven. Doe je dit binnen een week na boeking, dan berekenen we hier niets voor, tot 4 maanden voor vertrek 50%, tot 2 maanden voor vertrek 75% en daarna kunnen we helaas geen restitutie meer geven. Wij kunnen ten bate van een claim bij een eventuele eigen annuleringsverzekering op verzoek een annuleringsfactuur verzorgen.
Voor verdere vragen kun je altijd een antwoord op deze mail sturen

Met vriendelijke groet,\r\n
            \r\n 
Friesland Beweegt";
// In case any of our lines are larger than 70 characters, we should use wordwrap()
            $message = wordwrap($message, 70, "\r\n");
// Send
            mail($email, 'Inschrijving', $message);
            header('Location: gegevens.php');
        } else {
            echo "Error: " . $alle_inschrijvers . "<br>" . $conn_evenementen->error;
        }
    } else {
        header('Location: inschrijven.php?aanmelden=false');
    };
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
        array_push($errors, "Email moet u invullen");
    }
    if (empty($inschrijf_nummer)) {
        array_push($errors, "Inschrijfnummer moet u invullen");
    }

    if (count($errors) == 0) {
        $query = "SELECT * FROM alle_inschrijvers WHERE email='$email' AND number='$inschrijf_nummer'";
        $result = $conn_evenementen->query($query);
        $data = mysqli_fetch_assoc($result);

        if (mysqli_num_rows($result) > 0) {
            $_SESSION['logged_in'] = true;
            $_SESSION['email'] = $_POST['email'];
            $_SESSION['nummer'] = $_POST['inschrijf_nummer'];
//            header("Location: gegevens.php");
            echo "<script type='text/javascript'>window.location.href = 'gegevens.php';</script>";
        } else {
            array_push($errors, "Wrong username/password combination");
        }
    }
}


//edit gegevens inschrijvers/deelnemers

if (isset($_GET['edit_inschrijver'])) {
    $_SESSION['id'] = $_GET['edit_inschrijver'];
    $id = $_SESSION['id'];
//    header('Location: gegevens.php?edit_inschrijver='.$id);
}

if (isset($_POST['save_gegevens'])) {
    $id = $_SESSION['id'];
    $email = $_POST['email'];
    $telefoonnummer = $_POST['telefoonnummer'];
    $woonplaats = $_POST['woonplaats'];
    $straat = $_POST['straat'];
    $huisnummer = $_POST['huisnummer'];
    $postcode = $_POST["postcode"];


    $sql = "UPDATE alle_inschrijvers SET email = '$email', telefoonnummer = '$telefoonnummer', woonplaats = '$woonplaats',
                    straat = '$straat', huisnummer = '$huisnummer', postcode = '$postcode' WHERE id = '$id'";

    $conn_evenementen->query($sql);


}
?>

