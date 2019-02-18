<?php
include('header.php');
?>
    <body>

    <div class="container">
        <form name="saveForm" method="POST" action="server.php">
            <h3 class="evenement">Evenementen</h3>
            <div class="evenementen">
                <div class="row" style="margin-bottom: 10px;">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-12">
                                <input type="text" class="form-control" onclick="getDuplicateText()" id="evenement"
                                       aria-describedby="evenement"
                                       name="evenement" placeholder="Evenement" required>
                            </div>
                            <!-- <div class="col-md-6"> -->
                            <input type="hidden" class="form-control" style="background-color: white;" readonly=true
                                   id="table_name" name="table_name"
                                   placeholder="Tabelnaam (zal automatisch aangemaakt worden)" required>
                            <!-- </div> -->
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <h6>Begin Datum:</h6>
                                <input id="datum_begin" type="date" class="form-control" name="datum_begin"
                                       placeholder="Begindatum" required>
                            </div>
                            <div class="col-md-6">
                                <h6>Eind Datum:</h6>
                                <input id="datum_eind" type="date" class="form-control" name="datum_eind"
                                       placeholder="Einddatum" required>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-check">
                            <input class="form-check-input inlineCheckbox1" type="checkbox" value="Extra mensen"
                                   name="check1" onClick="showInput()">
                            <label class="form-check-label" for="inlineCheckbox1">Extra mensen</label>
                            <div class="max_extra" style="display:none">
                                <input type="text" class="form-control" name="text_extra"
                                       placeholder="Tekst voor extra deelnemers">
                            </div>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input inlineCheckbox2" type="checkbox" value="Vervoer"
                                   onClick="showInput2();" name="check2">
                            <label class="form-check-label" for="inlineCheckbox2">Vervoer</label>

                            <div class="vervoer_zelf" style="display: none;">
                                <input type="text" class="form-control " name="text_vervoer"
                                       placeholder="Tekst voor vervoersmiddel"
                                       style="margin-bottom: 10px;">
                                <div class="row">
                                    <div class="col-md-10 columnVervoer">
                                        <div class="box">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <div class="btn minVervoer">
                                                        <i class="fas fa-minus"></i>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <input type="text" class="form-control vervoer"
                                                           placeholder="Vervoer naam" name="vervoer[]" id="vervoer">
                                                </div>
                                                <div class="col-md-4 input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" id="basic-addon1">€</span>
                                                    </div>
                                                    <input type="text" class="form-control" placeholder="Kosten"
                                                           name="vervoer_costs[]">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="btn addVervoer">
                                            <i class="fas fa-plus"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="inlineCheckbox3" name="check3"
                                   value="Vegetarisch">
                            <label class="form-check-label" for="inlineCheckbox3">Vegetarisch</label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input inlineCheckbox4" type="checkbox" name="check4"
                                   value="Edities" onClick="showInput3();">
                            <label class="form-check-label" for="inlineCheckbox4">Edities</label>

                            <div class="editie" style="display: none;">
                                <input type="text" class="form-control" name="text_editie"
                                       placeholder="Tekst voor edities"
                                       style="margin-bottom: 10px;">
                                <div class="row">
                                    <div class="col-md-10 columnEditie">
                                        <div class="box">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <div class="btn minEditie">
                                                        <i class="fas fa-minus"></i>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <input type="text" class="form-control" placeholder="Editie"
                                                           name="editie[]">
                                                </div>
                                                <div class="col-md-4 input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" id="basic-addon2">€</span>
                                                    </div>
                                                    <input type="text" class="form-control" placeholder="Kosten"
                                                           name="editie_costs[]">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="btn addEditie">
                                            <i class="fas fa-plus"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-check">
                            <input class="form-check-input inlineCheckbox5" type="checkbox" value="Accomodatie"
                                   name="check5" onClick="showInput4();">
                            <label class="form-check-label" for="inlineCheckbox5">Accomodatie</label>

                            <div class="accomodatie" style="display: none;">
                                <input type="text" class="form-control" name="text_accomodatie"
                                       placeholder="Tekst voor accomodatie" style="margin-bottom: 10px;">
                                <div class="row">
                                    <div class="col-md-10 columnAccomodatie">
                                        <div class="box">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <div class="btn minAccomodatie">
                                                        <i class="fas fa-minus"></i>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <input type="text" class="form-control" placeholder="Accomodatie"
                                                           name="accomodatie[]">
                                                </div>
                                                <div class="col-md-4 input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" id="basic-addon3">€</span>
                                                    </div>
                                                    <input type="text" class="form-control" placeholder="Kosten"
                                                           name="accomodatie_costs[]">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="btn addAccomodatie">
                                            <i class="fas fa-plus"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="inlineCheckbox6" name="check6"
                                   value="Annuleringsverzekering">
                            <label class="form-check-label" for="inlineCheckbox6">Annuleringsverzekering</label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input inlineCheckbox7" type="checkbox" name="check7"
                                   value="Verhuur" onClick="showInput5();">
                            <label class="form-check-label" for="inlineCheckbox7">Verhuur</label>

                            <div class="verhuur" style="display: none;">
                                <input type="text" class="form-control" name="text_verhuur"
                                       placeholder="Tekst voor verhuur"
                                       style="margin-bottom: 10px;">
                                <div class="row">
                                    <div class="col-md-10 columnVerhuur">
                                        <div class="box">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <div class="btn minVerhuur">
                                                        <i class="fas fa-minus"></i>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <input type="text" class="form-control" placeholder="Verhuur"
                                                           name="verhuur[]">
                                                </div>
                                                <div class="col-md-4 input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" id="basic-addon3">€</span>
                                                    </div>
                                                    <input type="text" class="form-control " placeholder="Kosten"
                                                           name="verhuur_costs[]">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="btn addVerhuur">
                                            <i class="fas fa-plus"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <h6>Extra</h6>
                        <input type="text" class="form-control" id="Prijs" aria-describedby="prijs" placeholder="Prijs"
                               name="prijs" required>
                        <input type="number" class="form-control" id="max_deelname" placeholder="Max aantal deelnames"
                               style="margin-top: 10px;" name="max_deelnemers" required>
                    </div>
                </div>
            </div>

            <div class="text-center">
                <button id='" . $row["id"] . "' type='submit' name='delete' class='btn btn-danger'
                        value='" . $row["id"] . "'><i
                            class='fas fa-trash'></i></button>
                <button id="saveCms" name="saveCms" class="btn btn-success saveBtn" type="submit">Opslaan</button>
            </div>
        </form>
    </div> <!--end container-->

<?php
include('footer.php');
?>