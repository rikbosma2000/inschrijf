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

    $sql = "INSERT INTO $table_name (naam, email, telefoonnummer, straat, huisnummer, postcode, woonplaats, extra_inschrijvers, vervoer, vegetarisch, editie,
accomodatie, annuleringsverzekering, verhuur) 
VALUES ('$naam', '$email', '$telefoonnummer', '$straat', '$huisnummer', '$postcode', '$woonplaats', '$extra_inschrijvers',
'$vervoer', '$vegetarisch', '$editie', '$accomodatie', '$annuleringsverzekering', '$verhuur')";

    if ($conn_evenementen->query($sql) === TRUE) {
        var_dump($_POST);
        $naam_deelnemer = $_POST['naam_deelnemer'];
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
    $conn_evenementen->query( $sql2 );
}

//    header('Location: index.php');
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    };
}
?>