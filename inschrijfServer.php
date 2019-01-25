<?php

require_once 'connect_db.php';

if (isset($_POST['opslaan'])) {
    $naam = mysqli_real_escape_string($conn_evenementen, $_POST['naam']);
    $email = mysqli_real_escape_string($conn_evenementen, $_POST['email']);
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

    $sql = "INSERT INTO $table_name (naam, email, straat, huisnummer, postcode, woonplaats, extra_inschrijvers, vervoer, vegetarisch, editie,
accomodatie, annuleringsverzekering, verhuur) 
VALUES ('$naam', '$email', '$straat', '$huisnummer', '$postcode', '$woonplaats', '$extra_inschrijvers',
'$vervoer', '$vegetarisch', '$editie', '$accomodatie', '$annuleringsverzekering', '$verhuur')";

    if ($conn_evenementen->query($sql) === TRUE) {
        var_dump($_POST);
//    header('Location: index.php');
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    };
}
?>