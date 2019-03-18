<?php
include('header.php');
require_once 'connect_db.php';
include('inschrijfServer.php');
?>

<body>
<div class="wrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-3">

            </div>
            <div class="col-md-6 border login_form" style="padding: 10px;">
                <h2>Login Form</h2>

                <form action="login.php" method="post">
                    <?php include('errors.php'); ?>
                    <div class="container container_login">
                        <label for="email"><b>Email</b></label>
                        <input type="text" placeholder="Email" name="email" class="inschrijf_email" required>

                        <label for="inschrijf_nummer"><b>Inschrijf nummer</b></label>
                        <input type="number" placeholder="Inschrijf nummer" name="inschrijf_nummer"
                               class="inschrijf_nummer" required>

                        <button type="submit" class="button_login" name="button_login">Login</button>
                    </div>
                </form>
            </div>
            <div class="col-md-3">

            </div>
        </div>
    </div>
</div>
<?php
include('footer.php');
?>
