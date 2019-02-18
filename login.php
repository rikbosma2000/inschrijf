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

<?php
require_once 'connect_db.php';
?>

<div class="wrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-3">

            </div>
            <div class="col-md-6 border login_form" style="padding: 10px;">
                <h2>Login Form</h2>

                <form action="inschrijfServer.php" method="post">
                    <div class="container container_login">
                        <label for="naam"><b>Naam</b></label>
                        <input type="text" placeholder="Naam" name="naam" class="inschrijf_naam" required>

                        <label for="inschrijf_nummer"><b>Inschrijf nummer</b></label>
                        <input type="number" placeholder="Inschrijf nummer" name="inschrijf_nummer" class="inschrijf_nummer" required>

                        <button type="submit" class="button_login" name="button_login">Login</button>
                    </div>
                </form>
            </div>
            <div class="col-md-3">

            </div>
        </div>
    </div>
</div>
<!-- Bootstrap core JavaScript -->
<script
        src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
