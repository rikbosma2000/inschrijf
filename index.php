<?php
include( 'server.php' );

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Index</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-grid.min.css" rel="stylesheet">
    <link href="css/bootstrap-reboot.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/solid.css" integrity="sha384-VGP9aw4WtGH/uPAOseYxZ+Vz/vaTb1ehm1bwx92Fm8dTrE+3boLfF1SpAtB1z7HW" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/regular.css" integrity="sha384-ZlNfXjxAqKFWCwMwQFGhmMh3i89dWDnaFU2/VZg9CvsMGA7hXHQsPIqS+JIAmgEq" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/brands.css" integrity="sha384-rf1bqOAj3+pw6NqYrtaE1/4Se2NBwkIfeYbsFdtiR6TQz0acWiwJbv1IM/Nt/ite" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/fontawesome.css" integrity="sha384-1rquJLNOM3ijoueaaeS5m+McXPJCGdr5HcA03/VHXxcp2kX2sUrQDmFc3jR5i/C7" crossorigin="anonymous">
</head>

<body>

<div class="container">
    <div class="row">
        <div class="col-lg-6">
            <h1>Evenementen</h1>
        </div>
        <div class="col-lg-3 margin_top_10">
           <a href="cms.php" class="btn btn-info" role="button">Content Management System</a>
        </div>
        <div class="col-lg-2 margin_top_10">
            <a href="inschrijven.php" class="btn btn-warning text-white" role="button">Inschrijven</a>
        </div>
    </div>
<div class="row">
        <div class="col-md-2">
            <strong>ID</strong>
        </div>
        <div class="col-md-6">
            <strong>Evenement</strong>
        </div>
        <div class="col-md-4 text-right">
            <strong>Edit</strong>
        </div>
</div>

    <?php
    //if website = finished
    // change this part for more security
    $sql = "SELECT * FROM evenementen";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while ($row = $result->fetch_assoc()) {
            echo "
						<div class='row' style='margin-bottom: 10px;'>
							<div class='col-md-2'>
								" . $row["id"] . "
							</div>
							<div class='col-md-4'>
								" . $row["evenement"] . "
                            </div>
                                <div class='col-md-4'>
                                    <form action='server.php' method='post'>
                                        <div class='row'>
                                            <div class='col-md-8'>
                                                <select name='status' class='browser-default custom-select'>
                                                    <option selected>" . $row["status"] . "</option>
                                                    <option value='online'>online</option>
                                                    <option value='disabled'>disabled</option>
                                                    <option value='d-none'>Display none</option>
                                                </select> 
                                            </div>
                                            <div class='col-md-4'>
                                                <button class='btn btn-success runBtn' type='submit' name='runBtn' id='" . $row["id"] . "' value='" . $row["id"] . "'>
                                                    Run
                                                </button>
                                            </div>
                                        </div>    
                                    </form>
                                </div>
                            <div class='col-md-2'>
								<form action='server.php' method='get'>
                                    <div class='text-right'>
                                    <button id='" . $row["id"] . "' type='submit' name='edit' class='btn btn-warning' value='" . $row["id"] . "'><i class='fas fa-edit'></i></button>
									</div>
								</form>
							</div>
						</div>
					";
        }
    }
    ?>
</div>


<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/index.js"></script>



</body>
</html>