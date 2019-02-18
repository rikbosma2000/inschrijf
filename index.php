<?php
include( 'server.php' );
include ('header.php');
?>


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
            <strong>Verwijderen</strong>
        </div>
</div>

    <?php

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
                                    <button id='" . $row["id"] . "' type='submit' name='delete' class='btn btn-danger' value='" . $row["id"] . "'><i class='fas fa-trash'></i></button>
									</div>
								</form>
							</div>
						</div>
					";
        }
    }
    ?>
</div>


<?php
include('footer.php');
?>