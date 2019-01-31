<?php

require_once 'connect_db.php';


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

    $sqlCounter = mysqli_query($conn,"SELECT max_deelnemers FROM evenementen WHERE table_name = '$table_name'");
    $rowCounter = mysqli_fetch_row($sqlCounter);


//    Prijs berekenen
    $sqlPrijs = mysqli_query($conn,"SELECT prijs FROM evenementen WHERE table_name = '$table_name'");
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


    if ($highest_id + 1 + $count < $rowCounter[0] + 1){
        if ($conn_evenementen->query($sql) === TRUE) {
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
            }


        }



//    header('Location: inschrijven.php');
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    };
}
?>