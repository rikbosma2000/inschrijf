<?php
include('server.php');

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
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
        <div class="row">
            <div class="col-md-6">
                <h4>Kies evenement</h4>
                <?php

                $sql = "SELECT * FROM evenementen";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    // output data of each row
                    while ($row = $result->fetch_assoc()) {
                        echo "
        <div class='form-check'>
            <input class='form-check-input' type='checkbox' value='" . $row["evenement"] . "'>
            <label class='form-check-label' for='defaultCheck1'>
                " . $row["evenement"] . "  " . $row["datum_begin"] . " / " . $row["datum_eind"] . "
            </label>
            <div class='extraInschrijf' value='" . $row["extra_inschrijven"] . "' style='display: none'>
                <h6>Voor hoeveel mensen wilt u inschrijven?</h6>
               
            </div>  
        </div>
";

                    }
                } else {
                    echo "0 results";
                }
                ?>

                <form action="index.php">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" placeholder="Naam" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" placeholder="Email" required>
                    </div>
                    <div class="row">
                        <div class="col-8">
                            <div class="form-group">
                                <label for="straat">Straat</label>
                                <input type="text" class="form-control" id="straat" placeholder="Straat" required>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="form-group">
                                <label for="huisnummer">Huisnummer</label>
                                <input type="text" class="form-control" id="huisnummer" placeholder="Huisnummer"
                                       required>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <div class="form-group">
                                <label for="postcode">Postcode</label>
                                <input type="text" class="form-control" id="postcode" placeholder="Postcode" required>
                            </div>
                        </div>
                        <div class="col-8">
                            <div class="form-group">
                                <label for="Woonplaats">Woonplaats</label>
                                <input type="text" class="form-control" id="Woonplaats" placeholder="Woonplaats"
                                       required>
                            </div>
                        </div>
                    </div>

                    <div class="text-center">
                        <button class="btn btn-primary" type="submit">Aanmelden</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/inschrijven.js"></script>

</body>
</html>