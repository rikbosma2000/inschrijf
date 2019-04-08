<?php
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && !empty($_POST['existance'])) {
        require_once 'connect_db.php';

        //INSTANTIATE FUNCTIONS

        //sanitize the data before pushing it into the database
        function stripSecure($data) {
            $data = trim($data);
            $data = stripslashes($data);
            $data = htmlspecialchars($data);
            return $data;
        }

        //initialize check function
        function checkEventExistance($conn, $eventExistance) {
            $sqli = 'SELECT evenement, table_name FROM evenementen WHERE table_name = ?';
            $stmt = mysqli_stmt_init($conn);

            if (!mysqli_stmt_prepare($stmt, $sqli)) {
                echo 'Er is wat misgegaan! Onze excuses hiervoor, herlaad de pagina alstublieft!';
                exit();
            } else {
                mysqli_stmt_bind_param($stmt, 's', $eventExistance);
                mysqli_stmt_execute($stmt);
                $result = mysqli_stmt_get_result($stmt);
                $resultCheck = mysqli_num_rows($result);

                if ($resultCheck > 0) {
                    if ($row = mysqli_fetch_assoc($result)) {
                        echo "het evenement bestaat al onder de volgende naam: " . $row['evenement'] . '. Verwijder het evenement, om gebruik te kunnen maken van deze evenement naam.';
                    }
                } else {
                    echo "Dit evenement kan succesvol aangemaakt worden!";
                }
            }
        }
        $exists = stripSecure($_POST['existance']);
        checkEventExistance($conn, $exists);
    }
?>