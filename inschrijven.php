<?php
include('server.php');
include('header.php');

$counter = 0;
?>


    <body style="padding-bottom: 10px; padding-top: 10px;">

<div class="wrapper">
    <div class="container">

        <form action="inschrijfServer.php" method="post">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="name">Naam contactpersoon</label>
                        <input type="text" class="form-control" id="name" placeholder="Naam contactpersoon" name="naam"
                               required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email contactpersoon</label>
                        <input type="email" class="form-control" id="email" placeholder="Email contactpersoon"
                               name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="telefoonnummer">Telefoonnummer contactpersoon</label>
                        <input type="number" class="form-control" id="telefoonnummer"
                               placeholder="Telefoonnummer contactpersoon"
                               name="telefoonnummer" required>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="straat">Straat contactpersoon</label>
                                <input type="text" class="form-control" id="straat" placeholder="Straat contactpersoon"
                                       name="straat"
                                       required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="huisnummer">Huisnummer contactpersoon</label>
                                <input type="text" class="form-control" id="huisnummer"
                                       placeholder="Huisnummer contactpersoon"
                                       name="huisnummer" required>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="postcode">Postcode contactpersoon</label>
                                <input type="text" class="form-control" id="postcode"
                                       placeholder="Postcode contactpersoon"
                                       name="postcode"
                                       required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="Woonplaats">Woonplaats contactpersoon</label>
                                <input type="text" class="form-control" id="woonplaats"
                                       placeholder="Woonplaats contactpersoon"
                                       name="woonplaats"
                                       required>
                            </div>
                        </div>
                    </div>

                    <h6>Doet u zelf ook mee met het evenement?</h6>
                    <label class="radio-inline" style="padding-right: 10px; ">
                        <input class="deelname_inschrijver" type="radio" name="deelname_inschrijver" value="ja" checked>
                        Ja
                    </label>
                    <label class="radio-inline">
                        <input class="deelname_inschrijver" type="radio" name="deelname_inschrijver" value="nee"> Nee
                    </label>



                    <div class="normaalEvenement">
                        <h4>Kies evenement</h4>
                    <?php
                    $sql = "SELECT * FROM evenementen";

                    $evenementen = $conn->query($sql);
                    ?>
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


                            if ($evenement['max_deelnemers'] - $highest_id <= 0) {
                                $sql = "UPDATE evenementen SET status = 'disabled' WHERE table_name = '$table_name'";
                                if ($conn->query($sql) === TRUE) {
//                                    header ('Location: inschrijven.php');
                                } else {
                                    echo "Error: " . $sql . "<br>" . $conn->error;
                                }
                            }


                            ?>
                            <div class="evenementClass" id="<?= $evenement["id"] ?>">
                                <div class='form-check <?= $evenement["table_name"] ?> event <?= $evenement["status"] ?>'
                                     id="<?= $evenement["prijs"] ?>">
                                    <input title="table_name" class='form-check-input table-forms' type='radio'
                                           name="table_name"
                                           id="<?= $evenement["prijs"] ?>"
                                           value="<?= $evenement["table_name"] ?> " <?= $evenement["status"] ?>>
                                    <label class='form-check-label <?= $evenement["status"] ?>' for='defaultCheck1'>
                                        <?= $evenement["evenement"] . " ( " . $evenement["datum_begin"] . " / " . $evenement["datum_eind"] ?>
                                        )
                                        € <?= $evenement["prijs"] ?>
                                        <br>
                                        <span><strong>Aantal beschikbare
                                            plekken: <?= $evenement['max_deelnemers'] - $highest_id ?></strong></span>
                                    </label>


                                    <div class="evenement_opties" style="display: none;">

                                        <div class="contact_deelnemer border" style="padding: 10px;">
                                            <h6 class="border-bottom"><strong>Deelnemer 1:</strong></h6>
                                            <strong>Naam:</strong><h6 class="contact_deelnemer_naam"></h6>
                                            <strong>Email:</strong><h6 class="contact_deelnemer_email"></h6>
                                            <strong>Telefoonnummer:</strong><h6
                                                    class="contact_deelnemer_telefoonnummer"></h6>
                                            <strong>Straat:</strong><h6 class="contact_deelnemer_straat"></h6>
                                            <strong>Huisnummer:</strong><h6 class="contact_deelnemer_huisnummer"></h6>
                                            <strong>Postcode:</strong><h6 class="contact_deelnemer_postcode"></h6>
                                            <strong>Woonplaats:</strong><h6 class="contact_deelnemer_woonplaats"></h6>
                                        </div>

                                        <!-- extra mensen -->

                                        <div class="extra_inschrijven <?= $evenement["text_extra"] ?>">
                                            <div class="margin_top_10">
                                                <div class="inputs_extra_inschrijven">

                                                </div>
                                            </div>
                                            <div style="margin-bottom: 20px;"
                                                 class="btn btn-primary btn_extra margin_top_10"
                                                 id="<?= $evenement['max_deelnemers'] - $highest_id ?>"> <?= $evenement["text_extra"] ?>
                                            </div>
                                        </div>

                                        <!-- Annuleringsverzekering -->

                                        <div class="div-annuleringsverzekering <?= $evenement["annuleringsverzekering"] ?>">
                                            <h6>Annuleringsverzekering</h6>
                                            <div class="form-check">
                                                <input type="radio"
                                                       class="form-check-input annuleringsverzekering_radio"
                                                       name="annuleringsverzekering_radio" value="geen"
                                                       checked="checked">
                                                <label class='form-check-label' for='defaultCheck1'>
                                                    Geen
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input type="radio"
                                                       class="form-check-input annuleringsverzekering_radio"
                                                       name="annuleringsverzekering_radio" value="gewoon">
                                                <label class='form-check-label' for='defaultCheck1'>
                                                    Gewoon
                                                </label>
                                            </div>
                                            <input type="text" name="gewoon" class="form-control gewoon" id="gewoon"
                                                   placeholder="" value="" readonly="readonly">
                                            <div class="form-check">
                                                <input type="radio"
                                                       class="form-check-input annuleringsverzekering_radio"
                                                       name="annuleringsverzekering_radio" value="all-risk">
                                                <label class='form-check-label' for='defaultCheck1'>
                                                    All-risk
                                                </label>
                                            </div>
                                            <input type="text" name="all-risk" class="form-control all-risk"
                                                   id="all-risk"
                                                   placeholder="" value="" readonly="readonly">
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
                                                            <?= $edition["editieType"] ?>
                                                            € <?= $edition["editieKosten"] ?>
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
                                                        <input type="radio" class="form-check-input"
                                                               name="verhuur_radio"
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
                            </div>
                        <?php endwhile; ?>
                    <?php endif; ?>
                    </div>


                    <div class="selectedEvenement" style="display: none;">
                        <h4>Evenement</h4>
                        <?php
                        $id = $_SESSION["idSelect"];
                        $sql = "SELECT * FROM evenementen WHERE id = '$id' ";

                        $evenementen = $conn->query($sql);
                        ?>
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


                                if ($evenement['max_deelnemers'] - $highest_id <= 0) {
                                    $sql = "UPDATE evenementen SET status = 'disabled' WHERE table_name = '$table_name'";
                                    if ($conn->query($sql) === TRUE) {
//                                    header ('Location: inschrijven.php');
                                    } else {
                                        echo "Error: " . $sql . "<br>" . $conn->error;
                                    }
                                }


                                ?>
                                <div class="evenementClass" id="<?= $evenement["id"] ?>">
                                    <div class='form-check <?= $evenement["table_name"] ?> event <?= $evenement["status"] ?>'
                                         id="<?= $evenement["prijs"] ?>">
                                        <input title="table_name" class='form-check-input table-forms' type='radio'
                                               name="table_name"
                                               id="<?= $evenement["prijs"] ?>"
                                               value="<?= $evenement["table_name"] ?> " <?= $evenement["status"] ?> checked>
                                        <label class='form-check-label <?= $evenement["status"] ?>' for='defaultCheck1'>
                                            <?= $evenement["evenement"] . " ( " . $evenement["datum_begin"] . " / " . $evenement["datum_eind"] ?>
                                            )
                                            € <?= $evenement["prijs"] ?>
                                            <br>
                                            <span><strong>Aantal beschikbare
                                            plekken: <?= $evenement['max_deelnemers'] - $highest_id ?></strong></span>
                                        </label>


                                        <div class="evenement_opties" style="display: none;">

                                            <div class="contact_deelnemer border" style="padding: 10px;">
                                                <h6 class="border-bottom"><strong>Deelnemer 1:</strong></h6>
                                                <strong>Naam:</strong><h6 class="contact_deelnemer_naam"></h6>
                                                <strong>Email:</strong><h6 class="contact_deelnemer_email"></h6>
                                                <strong>Telefoonnummer:</strong><h6
                                                        class="contact_deelnemer_telefoonnummer"></h6>
                                                <strong>Straat:</strong><h6 class="contact_deelnemer_straat"></h6>
                                                <strong>Huisnummer:</strong><h6 class="contact_deelnemer_huisnummer"></h6>
                                                <strong>Postcode:</strong><h6 class="contact_deelnemer_postcode"></h6>
                                                <strong>Woonplaats:</strong><h6 class="contact_deelnemer_woonplaats"></h6>
                                            </div>

                                            <!-- extra mensen -->

                                            <div class="extra_inschrijven <?= $evenement["text_extra"] ?>">
                                                <div class="margin_top_10">
                                                    <div class="inputs_extra_inschrijven">

                                                    </div>
                                                </div>
                                                <div style="margin-bottom: 20px;"
                                                     class="btn btn-primary btn_extra margin_top_10"
                                                     id="<?= $evenement['max_deelnemers'] - $highest_id ?>"> <?= $evenement["text_extra"] ?>
                                                </div>
                                            </div>

                                            <!-- Annuleringsverzekering -->

                                            <div class="div-annuleringsverzekering <?= $evenement["annuleringsverzekering"] ?>">
                                                <h6>Annuleringsverzekering</h6>
                                                <div class="form-check">
                                                    <input type="radio"
                                                           class="form-check-input annuleringsverzekering_radio"
                                                           name="annuleringsverzekering_radio" value="geen"
                                                           checked="checked">
                                                    <label class='form-check-label' for='defaultCheck1'>
                                                        Geen
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="radio"
                                                           class="form-check-input annuleringsverzekering_radio"
                                                           name="annuleringsverzekering_radio" value="gewoon">
                                                    <label class='form-check-label' for='defaultCheck1'>
                                                        Gewoon
                                                    </label>
                                                </div>
                                                <input type="text" name="gewoon" class="form-control gewoon" id="gewoon"
                                                       placeholder="" value="" readonly="readonly">
                                                <div class="form-check">
                                                    <input type="radio"
                                                           class="form-check-input annuleringsverzekering_radio"
                                                           name="annuleringsverzekering_radio" value="all-risk">
                                                    <label class='form-check-label' for='defaultCheck1'>
                                                        All-risk
                                                    </label>
                                                </div>
                                                <input type="text" name="all-risk" class="form-control all-risk"
                                                       id="all-risk"
                                                       placeholder="" value="" readonly="readonly">
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
                                                                <?= $edition["editieType"] ?>
                                                                € <?= $edition["editieKosten"] ?>
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
                                                            <input type="radio" class="form-check-input"
                                                                   name="verhuur_radio"
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
                                </div>
                            <?php endwhile; ?>
                        <?php endif; ?>
                    </div>
                    <div class="bedrag">
                        <div class="form-group">
                            <label for="bedrag"><strong>Bedrag:</strong></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">€</span>
                                </div>
                                <input type="text" class="form-control totaalbedrag" id="bedrag" placeholder="0"
                                       name="bedrag" value="" readonly="readonly">
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <input class="btn btn-primary" type="submit" value="Aanmelden" id=submit2 name="opslaan">
                    </div>
                </div>
            </div>
        </form>
        <div class="text-center">

        </div>
    </div>
</div>

<!-- SET @autoid :=0;
UPDATE opstapbus_minnertsga set id = @autoid := (@autoid+1);
ALTER TABLE opstapbus_minnertsga AUTO_INCREMENT = 1; -->

<?php
include('footer.php');
?>