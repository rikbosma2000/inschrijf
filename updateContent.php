<?php
    // if user gained access via submit button and the request fired was a POST
    //fire code
    if (isset($_POST['submit']) && $_SERVER['REQUEST_METHOD'] === 'POST') {
        require 'connect_db.php';
        // DECLARE/CREATE FUNCTIONS HERE//

        //check whether the fundamentals of an event have been set
        function fundamentalsSet($data) {
            if (isset($data) && !empty($data) && $_SERVER['REQUEST_METHOD'] === 'POST') {
               $data = stripSecure($data);
               return $data;
            } else {
                echo 'Vul de noodzakelijke velden in!';
                exit();
            }
        }

        //sanitize the data before pushing it into the database
        function stripSecure($data) {
            //the if statement is meant for the dynamically created input fields
            if (is_array($data)) {
                $data = array_map('trim', $data);
                $data = array_map('stripslashes', $data);
                $data = array_map('htmlspecialchars', $data);
                return $data;
            } else {
                // the else statement is meant for the single input fields, which are NOT created dynamically and are neither send as an array
                $data = trim($data);
                $data = stripslashes($data);
                $data = htmlspecialchars($data);
                return $data;
            }
        }

        //function prepareUpdate, updates the main table (evenementen) from the database cms
        function prepareUpdate($conn, $id, $textAccomodatie, $textEditie, $textVerhuur, $textVervoer, $textExtraPeople, $vegan, $eventName, $beginDate, $endDate, $annuleringsverzekering, $price, $maxParticipants) {
            $stmt = $conn->prepare('UPDATE evenementen SET evenement = ?, text_accomodatie = ?, text_editie = ?, text_verhuur = ?, text_vervoer = ?,  text_extra = ?, vegetarisch = ?, datum_begin = ?, datum_eind = ?, prijs = ?, max_deelnemers = ?, annuleringsverzekering = ? WHERE id = ?');
            $stmt->bind_param('sssssssssssss', $eventName, $textAccomodatie, $textEditie, $textVerhuur,  $textVervoer, $textExtraPeople, $vegan, $beginDate, $endDate, $price, $maxParticipants, $annuleringsverzekering, $id);

            $id = $id;
            $textAccomodatie = $textAccomodatie;
            $textEditie = $textEditie;
            $textVerhuur = $textVerhuur;
            $textVervoer = $textVervoer;
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

            // fire this back and use it in the ajax call as your response argument
            // it notices the end-user about the success when clicking "update".
            setlocale(LC_ALL, 'nl_NL');
            echo 'De wijzigingen zijn succesvol doorgevoerd op ' .strftime("%A %e %B %Y"). ' om ' .date('h:i'). ' uur!
                Wilt u terug naar de homepage? klik dan';
        }

        function vervoerUpdate($conn, $id, $vervoer, $vervoer_costs) {
            //delete the data, so you can push it back in the database later
            $sqli = 'DELETE FROM vervoer WHERE evenement_id = ?';
            $stmt = mysqli_stmt_init($conn);

            if (!mysqli_stmt_prepare($stmt, $sqli)) {
                $stmt->die();
                exit();
            } else {
                mysqli_stmt_bind_param($stmt, 'i', $id);
                mysqli_stmt_execute($stmt);
            }
            //push the data back in the database
            $stmt = $conn->prepare('INSERT INTO vervoer (evenement_id, vervoerType, vervoerKosten) VALUES (?, ?, ?)');
            foreach ($vervoer as $index => $value) {
                $stmt->bind_param('isi', $id, $value, $vervoer_costs_explode);

                $id = $id;
                $vervoer = $value;
                $vervoer_costs_explode = $vervoer_costs[$index];
                $stmt->execute();
            }
        }

        function editieUpdate($conn, $id, $editie, $editie_costs) {
            //delete the data, so you can push it back in the database later
            $sqli = 'DELETE FROM editie WHERE evenement_id = ?';
            $stmt = mysqli_stmt_init($conn);

            if (!mysqli_stmt_prepare($stmt, $sqli)) {
                $stmt->die();
                exit();
            } else {
                mysqli_stmt_bind_param($stmt, 'i', $id);
                mysqli_stmt_execute($stmt);
            }
            //push the data back in the database
            $stmt = $conn->prepare('INSERT INTO editie (evenement_id, editieType, editieKosten) VALUES (?, ?, ?)');
            foreach ($editie as $index => $value) {
                $stmt->bind_param('isi', $id, $value, $editie_costs_explode);

                $id = $id;
                $editie = $value;
                $editie_costs_explode = $editie_costs[$index];
                $stmt->execute();
            }
        }

        function accomodatieUpdate($conn, $id, $accomodatie, $accomodatie_costs) {
            //delete the data, so you can push it back in the database later
            $sqli = 'DELETE FROM accomodatie WHERE evenement_id = ?';
            $stmt = mysqli_stmt_init($conn);

            if (!mysqli_stmt_prepare($stmt, $sqli)) {
                $stmt->die();
                exit();
            } else {
                mysqli_stmt_bind_param($stmt, 'i', $id);
                mysqli_stmt_execute($stmt);
            }
            //push the data back in the database
            $stmt = $conn->prepare('INSERT INTO accomodatie (evenement_id, accomodatieType, accomodatieKosten) VALUES (?, ?, ?)');
            foreach ($accomodatie as $index => $value) {
                $stmt->bind_param('isi', $id, $value, $accomodatie_costs_explode);

                $id = $id;
                $accomodatie = $value;
                $accomodatie_costs_explode = $accomodatie_costs[$index];
                $stmt->execute();
            }
        }

        function verhuurUpdate($conn, $id, $verhuur, $verhuur_costs) {
            //delete the data, so you can push it back in the database later
            $sqli = 'DELETE FROM verhuur WHERE evenement_id = ?';
            $stmt = mysqli_stmt_init($conn);

            if (!mysqli_stmt_prepare($stmt, $sqli)) {
                $stmt->die();
                exit();
            } else {
                mysqli_stmt_bind_param($stmt, 'i', $id);
                mysqli_stmt_execute($stmt);
            }
            //push the data back in the database
            $stmt = $conn->prepare('INSERT INTO verhuur (evenement_id, verhuurType, verhuurKosten) VALUES (?, ?, ?)');
            foreach ($verhuur as $index => $value) {
                $stmt->bind_param('isi', $id, $value, $verhuur_costs_explode);

                $id = $id;
                $verhuur = $value;
                $verhuur_costs_explode = $verhuur_costs[$index];
                $stmt->execute();
            }
        }

        // function dynamicUpdate($conn, $id, $tableName, $dynamicText, $dynamic_costs, $type, $typeCosts) {
        //     //delete the data, so you can push it back in the database later
        //     $sqli = "DELETE FROM ? WHERE evenement_id = ?";
        //     $stmt = mysqli_stmt_init($conn);

        //     if (!mysqli_stmt_prepare($stmt, $sqli)) {
        //         $stmt->die();
        //         exit();
        //     } else {
        //         mysqli_stmt_bind_param($stmt, 'si', $tableName, $id);
        //         mysqli_stmt_execute($stmt);
        //     }
        //     //push the data back in the database
        //     $stmt = $conn->prepare("INSERT INTO ? (evenement_id, '$type', '$typeCosts') VALUES (?, ?, ?)");
        //     foreach ($dynamicText as $index => $value) {
        //         $stmt->bind_param('sisi', $tableName, $id, $value, $dynamic_costs_explode);

        //         $id = $id;
        //         $dynamicText = $value;
        //         $dynamic_costs_explode = $dynamic_costs[$index];
        //         $stmt->execute();
        //     }
        // }

        

        //inst. the data and assign them to variables.
        $id = fundamentalsSet($_POST['id']);
        $textExtraPeople = stripSecure($_POST['textExtraPeople']);
        $vegan = stripSecure($_POST['vegan']);
        $eventName = fundamentalsSet($_POST['eventName']);
        $beginDate = fundamentalsSet($_POST['beginDate']);
        $endDate = fundamentalsSet($_POST['endDate']);
        $annuleringsverzekering = stripSecure($_POST['annuleringsverzekering']);
        $price = fundamentalsSet($_POST['price']);
        $maxParticipants = fundamentalsSet($_POST['maxParticipants']);
       
        $textVervoer = stripSecure($_POST['textVervoer']);
        $textEditie = stripSecure($_POST['textEditie']);
        $textAccomodatie = stripSecure($_POST['textAccomodatie']);
        $textVerhuur = stripSecure($_POST['textVerhuur']);

        //check whether the dynamically created input fields arent empty
        if (!empty($_POST['vervoer']) || !empty($_POST['vervoer_costs'])) {
            $vervoer = stripSecure($_POST['vervoer']);
            $vervoer_costs = stripSecure($_POST['vervoer_costs']);
            vervoerUpdate($conn, $id, $vervoer, $vervoer_costs);
        }
        $textEditie = stripSecure($_POST['textEditie']);
        //check whether the dynamically created input fields arent empty
        if (!empty($_POST['editie']) || !empty($_POST['editie_costs'])) {
            $editie = stripSecure($_POST['editie']);
            $editie_costs = stripSecure($_POST['editie_costs']);
            editieUpdate($conn, $id, $editie, $editie_costs);
        }
        $textAccomodatie = stripSecure($_POST['textAccomodatie']);
        //check whether the dynamically created input fields arent empty
        if (!empty($_POST['accomodatie']) || !empty($_POST['accomodatie_costs'])) {
            $accomodatie = stripSecure($_POST['accomodatie']);
            $accomodatie_costs = stripSecure($_POST['accomodatie_costs']);
            accomodatieUpdate($conn, $id, $accomodatie, $accomodatie_costs);
        }
        $textVerhuur = stripSecure($_POST['textVerhuur']);
        //check whether the dynamically created input fields arent empty
        if (!empty($_POST['verhuur']) || !empty($_POST['verhuur_costs'])) {
            $verhuur = stripSecure($_POST['verhuur']);
            $verhuur_costs = stripSecure($_POST['verhuur_costs']);
            verhuurUpdate($conn, $id, $verhuur, $verhuur_costs);
        }
        //INSTANTIATE FUNCTIONS HERE//
        
        // inst. prepareUpdate.
        prepareUpdate($conn, $id, $textAccomodatie, $textEditie, $textVerhuur, $textVervoer, $textExtraPeople, $vegan, $eventName, $beginDate, $endDate, $annuleringsverzekering, $price, $maxParticipants);
    }


?>