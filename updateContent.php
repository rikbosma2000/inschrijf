<?php
    if (isset($_POST['submit']) && $_SERVER['REQUEST_METHOD'] === 'POST') {

        function stripSecure($data) {
            $data = trim($data);
            $data = stripslashes($data);
            $data = htmlspecialchars($data);
            return $data;
        }

        $id = stripSecure($_POST['id']);
        $textExtraPeople = stripSecure($_POST['textExtraPeople']);
        $vegan = stripSecure($_POST['vegan']);
        $eventName = stripSecure($_POST['eventName']);
        $beginDate = stripSecure($_POST['beginDate']);
        $endDate = stripSecure($_POST['endDate']);
        $annuleringsverzekering = stripSecure($_POST['annuleringsverzekering']);
        $price = stripSecure($_POST['price']);
        $maxParticipants = stripSecure($_POST['maxParticipants']);


        function prepareUpdate($id, $textExtraPeople, $vegan, $eventName, $beginDate, $endDate, $annuleringsverzekering, $price, $maxParticipants) {
            require_once 'connect_db.php';

            $stmt = $conn->prepare('UPDATE evenementen SET evenement = ?, text_extra = ?, vegetarisch = ?, datum_begin = ?, datum_eind = ?, prijs = ?, max_deelnemers = ?, annuleringsverzekering = ? WHERE id = ?');
            $stmt->bind_param('sssssssss', $eventName, $textExtraPeople, $vegan, $beginDate, $endDate, $price, $maxParticipants, $annuleringsverzekering, $id);

            $id = $id;
            $textExtraPeople = $textExtraPeople;
            $vegan =  $vegan;
            $eventName = $eventName;
            $beginDate = $beginDate;
            $endDate = $endDate;
            $vegan = $vegan;
            $annuleringsverzekering = $annuleringsverzekering;
            $price = $price;
            $maxParticipants = $maxParticipants;
            $stmt->execute();
            $stmt->close();

            setlocale(LC_ALL, 'nl_NL');
            echo 'De wijzigingen zijn succesvol doorgevoerd op ' .strftime("%A %e %B %Y"). ' om ' .date('h:i'). ' uur!';
        }
        prepareUpdate($id, $textExtraPeople, $vegan, $eventName, $beginDate, $endDate, $annuleringsverzekering, $price, $maxParticipants);
    }
?>