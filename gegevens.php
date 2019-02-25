<?php
include ('header.php');
include ('inschrijfServer.php');
?>

<body>

<?php
require_once 'connect_db.php';
$nummer = $_SESSION["nummer"];
$nummer = md5($nummer);

$sql = "SELECT * FROM alle_inschrijvers WHERE inschrijver='$nummer'";
$result = mysqli_query($conn_evenementen, $sql);

?>


<div class="wrapper">
    <div class="container">
        <div class="row margin_top_10">
            <?php
//            tijd om opnieuw te moeten inloggen
            $inactive = 3600;
            ini_set('session.gc_maxlifetime', $inactive); // set the session max lifetime to 1 hours

            if (isset($_SESSION['time']) && (time() - $_SESSION['time'] > $inactive)) {
                // last request was more than 1 hours ago
                session_unset();     // unset $_SESSION variable for this page
                session_destroy();   // destroy session data
                header('Location: login.php');
            }
            $_SESSION['time'] = time(); // Update session

            if (mysqli_num_rows($result) > 0) {
                // output data of each row
                while ($row = mysqli_fetch_assoc($result)):
                    $table_name = str_replace( '_', ' ', $row["table_name"] );
                    ?>
                    <div class="col-md-5 border" style="padding: 10px; margin: 15px">
                        <h4><?= $row["type_inschrijving"]?>: <?= $row["naam"]?></h4>
                        <h6>Evenement: <?= $table_name?></h6>
                        <h6>Email: <?= $row["email"]?></h6>
                        <h6>Telefoonnummer: <?= $row["telefoonnummer"]?></h6>
                        <h6>Woonplaats: <?= $row["woonplaats"]?></h6>
                        <h6>Straat: <?= $row["straat"]?></h6>
                        <h6>Huisnummer: <?= $row["huisnummer"]?></h6>
                        <h6>Postcode: <?= $row["postcode"]?></h6>
                        <form method="get" action="gegevens.php">
                            <button value="<?= $row["id"]?>" type="submit" name="edit_inschrijver" class="btn btn-warning"><i class="fas fa-edit"></i> </button>
                            <button value="<?= $row["id"]?>" type="submit" name="delete_inschrijver" class="btn btn-danger float-right" onclick="return confirmButton()"><i class="fas fa-trash"></i> </button>
                        </form>
                    </div>
                <?php endwhile;
            } else {
                session_destroy();
                header('Location: login.php');
            }
                ?>

        </div>
    </div>
</div>

<?php
include('footer.php');
?>