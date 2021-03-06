<?php
// This is the script which is going to fetch data based on ID (from the edit button)
// This button is also the follow-up from server.php (the on.click function)
session_start();

$id =  $_SESSION["id"];
if (!empty($_SESSION['id'])) {
    require_once 'connect_db.php';


    if ($id === 'new') {
        echo '123';
        //this does NOT work, it's under construction 5/2/2019 noted
    } else {
        // $sqli = "SELECT * FROM evenementen WHERE id = ?";
        $sqli = "SELECT * FROM alle_inschrijvers WHERE id = '$id'";
        // JOIN editie JOIN verhuur JOIN vervoer editie.*, verhuur.*, vervoer.*
        $stmt = mysqli_stmt_init($conn_evenementen);

        // check whether there is a connection and sql to be prepared
        if (!mysqli_stmt_prepare($stmt, $sqli)) {

            var_dump($stmt);
            exit();
        } else {

            //if there was a sql to be prepared, process to fetch the data
            // ensures SQL injections cannot bind to sql query string
//            mysqli_stmt_bind_param($stmt, 's', $id);
            mysqli_stmt_execute($stmt);
            $result = mysqli_stmt_get_result($stmt);
            $resultCheck = mysqli_num_rows($result);

            if ($resultCheck > 0) {

                $json_response = [];

                if ($row = mysqli_fetch_assoc($result)) {
                    $json_response[] = $row;
                }
                //Echo data as JSON
                echo json_encode($json_response);
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