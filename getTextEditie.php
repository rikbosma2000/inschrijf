<?php
    if (isset($_POST['id']) && !empty($_POST['id']) && $_SERVER['REQUEST_METHOD'] === 'POST') {
        function stripSecure($data) {
            $data = trim($data);
            $data = stripslashes($data);
            $data = htmlspecialchars($data);
            return $data;
        }

        function errorHandler($error) {
            return 'Oopsie! Er ging iets mis. De systeem heeft geregistreerd dat het probleem optrad bij het ' .$error. ' van de connectie.
            Ons excuus voor het ongemak.';
        }

        function getVervoer($id) {
            require_once 'connect_db.php';

            $sqli = 'SELECT editieType, editieKosten FROM editie WHERE evenement_id = ?';
            $stmt = mysqli_stmt_init($conn);

            if (!mysqli_stmt_prepare($stmt, $sqli)) {
               $error = getErrorHandler('klaarmaken');
               echo $error;
            } else {
                mysqli_stmt_bind_param($stmt, 'i', $id);
                mysqli_stmt_execute($stmt);
                $result = mysqli_stmt_get_result($stmt);
                $resultCheck = mysqli_num_rows($result);

                if ($resultCheck > 0) {
                    $json_object = [];
                    while ($row = mysqli_fetch_assoc($result)) {
                        $json_object[] = $row;
                    }
                    echo json_encode($json_object);
                }
            }
        }

        $id = stripSecure($_POST['id']);
        getVervoer($id);
    } else {
        echo 'Geen parameter gevonden om mee te vergelijken.';
    }
?>