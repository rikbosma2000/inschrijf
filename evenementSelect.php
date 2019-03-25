<?php include('header.php') ?>
<?php include('server.php') ?>

<?php $sql = "SELECT * FROM evenementen";

$evenementen = $conn->query($sql); ?>

    <body>
    <div class="wrapper">
        <form action="inschrijfServer.php">
            <?php if ($evenementen->num_rows > 0) : ?>
                <?php while ($evenement = $evenementen->fetch_assoc()) : ?>
                    <?php if ($evenement["status"] === "online") : ?>
                        <button class="btn btn-primary" id="<?= $evenement["id"] ?>" name="selectEvenement"
                                value="<?= $evenement["id"] ?>"><?= $evenement["evenement_naam"] ?></button>
                    <?php endif ?>
                <?php endwhile; ?>
            <?php endif; ?>
        </form>
    </div>
    </body>

<?php
include('footer.php');
?>