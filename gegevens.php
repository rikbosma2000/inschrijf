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
session_start();
require_once 'connect_db.php';
$naam = $_SESSION["naam"];
$sql = "SELECT * FROM alle_inschrijvers WHERE inschrijver='$naam'";
$result = mysqli_query($conn_evenementen, $sql);

?>


<div class="wrapper">
    <div class="container">
        <div class="row margin_top_10">
            <?php
            if (mysqli_num_rows($result) > 0):
                // output data of each row
                while ($row = mysqli_fetch_assoc($result)):
                    $table_name = str_replace( '_', ' ', $row["table_name"] );
                    ?>
                    <div class="col-md-5 border" style="padding: 10px; margin: 15px">
                        <h4>Inschrijver: <?= $row["naam"]?></h4>
                        <h6>Evenement: <?= $table_name?></h6>
                        <h6>Email: <?= $row["email"]?></h6>
                        <h6>Telefoonnummer: <?= $row["telefoonnummer"]?></h6>
                        <h6>Woonplaats: <?= $row["woonplaats"]?></h6>
                        <h6>Straat: <?= $row["straat"]?></h6>
                        <h6>Huisnummer: <?= $row["huisnummer"]?></h6>
                        <h6>Postcode: <?= $row["postcode"]?></h6>
                        <form method="get" action="inschrijfServer.php">
                            <button value="<?= $row["id"]?>" type="submit" name="edit_inschrijver" class="btn btn-warning"><i class="fas fa-edit"></i> </button>
                            <button value="<?= $row["id"]?>" type="submit" name="delete_inschrijver" class="btn btn-danger float-right"><i class="fas fa-trash"></i> </button>
                        </form>

                    </div>
                <?php endwhile; ?>
            <?php endif; ?>
        </div>
    </div>
</div>
</body>
</html>