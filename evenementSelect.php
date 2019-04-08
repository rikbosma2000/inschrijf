<?php include('header.php') ?>
<?php include('server.php') ?>

<?php $sql = "SELECT * FROM evenementen";
$evenementen = $conn->query($sql); ?>

    <body>
    <div class="wrapper">
        <div class="container">
            <h3>Openstaande evenementen</h3>
            <form action="inschrijfServer.php">
                <?php if ($evenementen->num_rows > 0) : ?>
                    <?php while ($evenement = $evenementen->fetch_assoc()) : ?>
                        <?php if ($evenement["status"] === "online") : ?>
                            <div class="col-md-12 margin_top_10">
                                <button class="btn btn-primary" id="<?= $evenement["id"] ?>" name="selectEvenement"
                                        value="<?= $evenement["id"] ?>"><?= $evenement["evenement_naam"] ?></button>
                            </div>
                        <?php endif ?>
                    <?php endwhile; ?>
                <?php endif; ?>
            </form>
        </div>
    </div>
    </body>

<?php
include('footer.php');
?>