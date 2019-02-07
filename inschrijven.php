<?php
include('server.php');

$sql = "SELECT * FROM evenementen";

$evenementen = $conn->query($sql);

$counter = 0;
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Inschrijf</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-grid.min.css" rel="stylesheet">
    <link href="css/bootstrap-reboot.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/solid.css"
          integrity="sha384-VGP9aw4WtGH/uPAOseYxZ+Vz/vaTb1ehm1bwx92Fm8dTrE+3boLfF1SpAtB1z7HW" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/regular.css"
          integrity="sha384-ZlNfXjxAqKFWCwMwQFGhmMh3i89dWDnaFU2/VZg9CvsMGA7hXHQsPIqS+JIAmgEq" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/brands.css"
          integrity="sha384-rf1bqOAj3+pw6NqYrtaE1/4Se2NBwkIfeYbsFdtiR6TQz0acWiwJbv1IM/Nt/ite" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/fontawesome.css"
          integrity="sha384-1rquJLNOM3ijoueaaeS5m+McXPJCGdr5HcA03/VHXxcp2kX2sUrQDmFc3jR5i/C7" crossorigin="anonymous">
</head>

<body>

<div class="wrapper">
    <div class="container">

        <form action="inschrijfServer.php" method="post">
            <div class="row">
                <div class="col-md-6">
                    <h4>Kies evenement</h4>
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" placeholder="Naam" name="naam" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" placeholder="Email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="telefoonnummer">Telefoonnummer</label>
                        <input type="number" class="form-control" id="telefoonnummer" placeholder="Telefoonnummer" name="telefoonnummer" required>
                    </div>
                    <div class="row">
                        <div class="col-8">
                            <div class="form-group">
                                <label for="straat">Straat</label>
                                <input type="text" class="form-control" id="straat" placeholder="Straat" name="straat"
                                       required>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="form-group">
                                <label for="huisnummer">Huisnummer</label>
                                <input type="text" class="form-control" id="huisnummer" placeholder="Huisnummer"
                                       name="huisnummer" required>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <div class="form-group">
                                <label for="postcode">Postcode</label>
                                <input type="text" class="form-control" id="postcode" placeholder="Postcode"
                                       name="postcode"
                                       required>
                            </div>
                        </div>
                        <div class="col-8">
                            <div class="form-group">
                                <label for="Woonplaats">Woonplaats</label>
                                <input type="text" class="form-control" id="Woonplaats" placeholder="Woonplaats"
                                       name="woonplaats"
                                       required>
                            </div>
                        </div>
                    </div>
                    <?php if ($evenementen->num_rows > 0) : ?>
                        <?php while ($evenement = $evenementen->fetch_assoc()) : ?>
                            <?php
                            $counter++;

                            // Query for getting all transport types per event
                            $sqlTransport = "SELECT * from vervoer WHERE vervoer.evenement_id = " . $evenement['id'];
                            $queryTransport = $conn->query($sqlTransport);

                            // Query for getting all edition types per event
                            $sqlEditions = "SELECT * from editie WHERE editie.evenement_id = " . $evenement['id'];
                            $queryEditions = $conn->query($sqlEditions);

                            // Query for getting all accomodation types per event
                            $sqlAccomodatie = "SELECT * from accomodatie WHERE accomodatie.evenement_id = " . $evenement['id'];
                            $queryAccomodatie = $conn->query($sqlAccomodatie);

                            // Query for getting all rental types per event
                            $sqlVerhuur = "SELECT * from verhuur WHERE verhuur.evenement_id = " . $evenement['id'];
                            $queryVerhuur = $conn->query($sqlVerhuur);

                            $table_name = $evenement["table_name"];
                            $max_deelnemers_count = $evenement["max_deelnemers"];

                            $result = mysqli_query($conn_evenementen, "SELECT MAX(id) FROM $table_name");
                            $row = mysqli_fetch_row($result);
                            $highest_id = $row[0];

                            if ($evenement['max_deelnemers'] - $highest_id === 0) {
                            $sql ="UPDATE evenementen SET status = 'disabled' WHERE table_name = '$table_name'";
                                if ($conn->query($sql) === TRUE) {
//                                    header ('Location: inschrijven.php');
                                } else {
                                    echo "Error: " . $sql . "<br>" . $conn->error;
                                }
                            }





                            ?>

                            <div class='form-check <?= $evenement["table_name"] ?> event' id="<?= $evenement["prijs"] ?>">
                                <input class='form-check-input' type='checkbox' name="table_name" id="<?= $evenement["prijs"] ?>"
                                       value="<?= $evenement["table_name"] ?> " <?= $evenement["status"] ?>>
                                <label class='form-check-label <?= $evenement["status"] ?>' for='defaultCheck1'>
                                    <?= $evenement["evenement"] . " ( " . $evenement["datum_begin"] . " / " . $evenement["datum_eind"] ?> )
                                    € <?= $evenement["prijs"] ?>
                                    <br>
                                    <strong>Aantal beschikbare plekken: <?= $evenement['max_deelnemers'] - $highest_id?></strong>
                                </label>


                                <div class="evenement_opties" style="display:none;">

                                    <!-- extra mensen -->

                                    <div class="extra_inschrijven <?= $evenement["text_extra"] ?>">
                                        <div style="margin-bottom: 20px;"
                                                class="btn btn-primary btn_extra margin_top_10"> <?= $evenement["text_extra"] ?>
                                        </div>
                                        <div class="inputs_extra_inschrijven">

                                        </div>
                                    </div>

                                    <!-- vervoer -->
                                    <div class="vervoerType <?= $evenement["text_vervoer"] ?>">
                                        <h6>Kies je type vervoer om erheen te komen:</h6>
                                        <?php if ($queryTransport->num_rows > 0) : ?>

                                            <?php while ($transport = $queryTransport->fetch_assoc()) : ?>
                                                <div class='form-check'>
                                                    <input type="radio" class="form-check-input"
                                                           name="vervoer_radio"
                                                           value="<?= $transport["vervoerType"] ?>">
                                                    <label class='form-check-label' for='defaultCheck1'>
                                                        <?= $transport["vervoerType"] ?>
                                                        € <?= $transport["vervoerKosten"] ?>
                                                    </label>
                                                </div>
                                            <?php endwhile; ?>
                                        <?php endif; ?>
                                    </div>
                                    <!-- vegetarisch -->
                                    <div class="vegetarisch <?= $evenement["vegetarisch"] ?>">
                                        <h6>Bent u vegetarisch?</h6>
                                        <div class="form-check">
                                            <input type="radio" class="form-check-input" name="vegetarisch_radio"
                                                   value="yes">
                                            <label class="form-check-label">Yes</label>
                                        </div>
                                        <div class="form-check">
                                            <input type="radio" class="form-check-input" name="vegetarisch_radio"
                                                   value="no">
                                            <label class="form-check-label">No</label>
                                        </div>
                                    </div>
                                    <!-- editie -->
                                    <div class="editieType <?= $evenement["text_editie"] ?>">
                                        <h6>Kies het type editie waarvoor u wilt inschrijven:</h6>
                                        <?php if ($queryEditions->num_rows > 0) : ?>
                                            <?php while ($edition = $queryEditions->fetch_assoc()) : ?>
                                                <div class='form-check'>
                                                    <input type="radio" class="form-check-input" name="editie_radio"
                                                           value="<?= $edition["editieType"] ?>">
                                                    <label class='form-check-label' for='defaultCheck1'>
                                                        <?= $edition["editieType"] ?> € <?= $edition["editieKosten"] ?>
                                                    </label>
                                                </div>
                                            <?php endwhile; ?>
                                        <?php endif; ?>
                                    </div>
                                    <!-- accomodatie -->
                                    <div class="accomodatieType <?= $evenement["text_accomodatie"] ?>">
                                        <h6>Kies het type accomodatie waarvoor u wilt inschrijven:</h6>
                                        <?php if ($queryAccomodatie->num_rows > 0) : ?>
                                            <?php while ($accomodatie = $queryAccomodatie->fetch_assoc()) : ?>
                                                <div class='form-check'>
                                                    <input type="radio" class="form-check-input"
                                                           name="accomodatie_radio"
                                                           value="<?= $accomodatie["accomodatieType"] ?>">
                                                    <label class='form-check-label' for='defaultCheck1'>
                                                        <?= $accomodatie["accomodatieType"] ?>
                                                        € <?= $accomodatie["accomodatieKosten"] ?>
                                                    </label>
                                                </div>
                                            <?php endwhile; ?>
                                        <?php endif; ?>
                                    </div>
                                    <!-- verhuur -->
                                    <div class="verhuurType <?= $evenement["text_verhuur"] ?>">
                                        <h6>Kies het type verhuur waarvoor u wilt inschrijven:</h6>
                                        <?php if ($queryVerhuur->num_rows > 0) : ?>
                                            <?php while ($verhuur = $queryVerhuur->fetch_assoc()) : ?>
                                                <div class='form-check'>
                                                    <input type="radio" class="form-check-input" name="verhuur_radio"
                                                           value="<?= $verhuur["verhuurType"] ?>">
                                                    <label class='form-check-label' for='defaultCheck1'>
                                                        <?= $verhuur["verhuurType"] ?>
                                                        € <?= $verhuur["verhuurKosten"] ?>
                                                    </label>
                                                </div>
                                            <?php endwhile; ?>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </div>
                        <?php endwhile; ?>
                    <?php endif; ?>

                    <div class="bedrag">
                        <div class="form-group">
                            <label for="bedrag"><strong>Bedrag:</strong></label>
                            <input type="text" class="form-control totaalbedrag" id="name" placeholder="" name="bedrag" disabled>
                        </div>
                    </div>

                    <div class="text-center">
                        <button class="btn btn-primary" type="submit" name="opslaan">Aanmelden</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<!-- SET @autoid :=0;
UPDATE opstapbus_minnertsga set id = @autoid := (@autoid+1);
ALTER TABLE opstapbus_minnertsga AUTO_INCREMENT = 1; -->

<!-- Bootstrap core JavaScript -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/inschrijven.js"></script>

</body>
</html>