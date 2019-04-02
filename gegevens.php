<?php
include('header.php');
include('inschrijfServer.php');
?>

<body>

<?php
require_once 'connect_db.php';
$nummer = $_SESSION["nummer"];

$sql = "SELECT * FROM alle_inschrijvers WHERE inschrijver='$nummer'";
$result = mysqli_query($conn_evenementen, $sql);
$result2 = mysqli_query($conn_evenementen, $sql);
$row2 = mysqli_fetch_assoc($result2);
$sessie = $_SESSION['nummer'];

?>


<div class="wrapper">
    <div class="container">
        <?php if (isset($sessie)) : ?>
            <div class="text-center">
                <h3>Inschrijfnummer: <?= $sessie ?></h3>

                <?php if ($row2["prijs"] > 1.50) :?>
                <form METHOD="post" target="_blank"
                      ACTION="https://www.frieslandbeweegt.frl/idealcheckout/checkout.php" id=submit2
                      name="aanmelden">
                    <INPUT id="amount" type="hidden" NAME="amount" VALUE="<?= $row2["prijs"]?>">
                    <INPUT type="hidden" NAME="reference" VALUE="<?= $sessie?>">
                    <INPUT type="hidden" NAME="description" VALUE="<?= $row2["table_name"]?> - <?= $sessie?>">
                    <INPUT type="hidden" NAME="url_payment"
                           VALUE="https://www.frieslandbeweegt.frl/gestopt.php">
                    <INPUT type="hidden" NAME="url_success"
                           VALUE="https://www.frieslandbeweegt.frl/betaald.html">
                    <INPUT type="hidden" NAME="url_failure" VALUE="https://www.frieslandbeweegt.frl/fout.php">
                    <INPUT type="hidden" NAME="url_pending" VALUE="https://www.frieslandbeweegt.frl/fout.php">
                    <input class="btn btn-primary" type="submit" value="Betaal nu via iDeal" id=submit2
                           name="opslaan">
                </form>
                <?php endif ?>
            </div>
        <?php endif; ?>
        <div class="row">

            <?php


            if (mysqli_num_rows($result) > 0) {
                // output data of each row
                while ($row = mysqli_fetch_assoc($result)):
                    $table_name = str_replace('_', ' ', $row["table_name"]);
                    ?>
                    <div class="col-md-5 border gegevens" style="padding: 10px; margin: 15px">
                        <h4><?= $row["type_inschrijving"] ?>: <?= $row["naam"] ?></h4>
                        <h6>Evenement: <?= $row["evenement_naam"] ?></h6>
                        <h6>Email: <?= $row["email"] ?></h6>
                        <h6>Telefoonnummer: <?= $row["telefoonnummer"] ?></h6>
                        <h6>Woonplaats: <?= $row["woonplaats"] ?></h6>
                        <h6>Straat: <?= $row["straat"] ?></h6>
                        <h6>Huisnummer: <?= $row["huisnummer"] ?></h6>
                        <h6>Postcode: <?= $row["postcode"] ?></h6>

                        <?php if (!empty($row["accomodatie"])) :?>
                            <h6>Accomodatie: <?= $row["accomodatie"]?></h6>
                        <?php endif; ?>


                        <?php if ($row["prijs"] > 1.50) : ?>
                        <h5>Prijs: €<?= $row["prijs"] ?></h5>
                        <?php endif ?>
                        <form method="get" class="text-center">
                            <button value="<?= $row["id"] ?>" name="edit_inschrijver" class="btn btn-warning"
                                    onclick="getData();"><i class="fas fa-edit"></i></button>
                            <!--                            <button value="--><? //= $row["id"]
                            ?><!--" type="submit" name="delete_inschrijver"-->
                            <!--                                    class="btn btn-danger float-right" onclick="return confirmButton()"><i-->
                            <!--                                        class="fas fa-trash"></i></button>-->
                        </form>
                    </div>




                    <div class="col-md-12 border" style="padding: 10px; margin: 15px; display: none;" id="gegevensEdit">
                        <h4><?= $row["type_inschrijving"] ?>: <?= $row["naam"] ?></h4>
                        <h6>Evenement: <?= $row["evenement_naam"] ?></h6>
                        <form method="post" action="gegevens.php">
                            <div class="form-group">
                                <label for="postcode">Naam:</label>
                                <input id="naam" class="form-control" name="naam" title="naam" placeholder="Naam"
                                       disabled>
                            </div>
                            <div class="form-group">
                                <label for="postcode">Email:</label>
                                <input id="email" class="form-control" name="email" title="email"
                                       placeholder="Email" required>
                            </div>
                            <div class="form-group">
                                <label for="postcode">Telefoonnummer:</label>
                                <input id="telefoonnumer" class="form-control" name="telefoonnummer"
                                       title="telefoonnummer" placeholder="Telefoonnummer" required>
                            </div>
                            <div class="form-group">
                                <label for="postcode">Woonplaats:</label>
                                <input id="woonplaats" class="form-control" name="woonplaats"
                                       title="woonplaats" placeholder="Woonplaats" required>
                            </div>
                            <div class="form-group">
                                <label for="postcode">Straat:</label>
                                <input id="straat" class="form-control" name="straat" title="straat"
                                       placeholder="Straat" required>
                            </div>
                            <div class="form-group">
                                <label for="postcode">Huisnummer:</label>
                                <input id="huisnummer" class="form-control" name="huisnummer"
                                       title="huisnummer" placeholder="Huisnummer" required>
                            </div>
                            <div class="form-group">
                                <label for="postcode">Postcode:</label>
                                <input id="postcode" class="form-control" name="postcode" title="postcode"
                                       placeholder="Postcode" required>
                            </div>
                            <div class="text-center">
                                <button value="<?= $_SESSION["id"] ?>" id="save_gegevens" name="save_gegevens"
                                        class="btn btn-success save_gegevens" type="submit">Opslaan
                                </button>
                                <a href="gegevens.php">
                                    <div class="btn btn-danger">
                                        <i class="fas fa-arrow-left"></i>
                                    </div>
                                </a>
                            </div>
                        </form>
                    </div>
                <?php endwhile;
            } else {
                session_destroy();
                echo "<script type='text/javascript'>window.location.href = 'login.php';</script>";
            }
            ?>


        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/functions.js"></script>
<script src="js/inschrijven.js"></script>
</body>
</html>