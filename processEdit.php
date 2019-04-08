<?php
    // This is the script which is going to fetch data based on ID (from the edit button)
    // This button is also the follow-up from server.php (the on.click function)
    session_start();
    if (!empty($_SESSION['editValue'])) {
       require_once 'connect_db.php';

       $editID = $_SESSION['editValue'];

       if ($editID === 'new') {
           echo '123';
           //this does NOT work, it's under construction 5/2/2019 noted
       } else {
            // $sqli = "SELECT * FROM evenementen WHERE id = ?";
            $sqli = "SELECT evenementen.*,
                accomodatie.evenement_id, accomodatie.accomodatieType, accomodatie.accomodatieKosten,
                editie.evenement_id, editie.editieType, editie.editieKosten,
                verhuur.evenement_id, verhuur.verhuurType, verhuur.verhuurKosten,
                vervoer.evenement_id, vervoer.vervoerType, vervoer.vervoerKosten
                FROM evenementen 
                JOIN accomodatie 
                ON evenementen.id = accomodatie.evenement_id
                JOIN editie 
                ON evenementen.id = editie.evenement_id
                JOIN verhuur
                ON evenementen.id = verhuur.evenement_id
                JOIN vervoer
                ON evenementen.id = vervoer.evenement_id
            WHERE evenementen.id = ?";
            // JOIN editie JOIN verhuur JOIN vervoer editie.*, verhuur.*, vervoer.* 
            $stmt = mysqli_stmt_init($conn);

            // check whether there is a connection and sql to be prepared
            if (!mysqli_stmt_prepare($stmt, $sqli)) {
                exit();
            } else {

                //if there was a sql to be prepared, process to fetch the data
                // ensures SQL injections cannot bind to sql query string
                mysqli_stmt_bind_param($stmt, 's', $editID);
                mysqli_stmt_execute($stmt);
                $result = mysqli_stmt_get_result($stmt);
                $resultCheck = mysqli_num_rows($result);

                if ($resultCheck > 0) {

                    $json_response = [];
                    //  $data = array();

                    while ($row = mysqli_fetch_assoc($result)) {
                        $json_response[] = $row;
                        // $data['all'] = array($row);
                        // $data['vervoerType'] = array($row['vervoerType']);
                      //  $data[] = array('all'=>$row,'vervoerType'=>$row['vervoerType'],'vervoerKosten'=>$row['vervoerKosten'],'editieType'=>$row['editieType'],'editieKosten'=>$row['editieKosten']); 
                    }
                        //Echo data as JSON
                         echo json_encode($json_response);
                        // echo json_encode($data);
                } else {
                    echo 'index.php?failure=noIDFound';
                    exit();
                }
            }
        } 
    } else {
        header('Location: index.php?failure=missingID');
        exit();
    }
?>