<?php
    include ('header.php');
?>

<div class="container">
    <form name="saveForm" method="POST" action="server.php">
        <div class="row">
            <div class="col-lg-2"><h3 class="evenement">Evenementen</h3></div>
            <!-- <div class="col-lg-1" style="margin-top: 5px;"><?php //include_once 'instructionsCMS.php'; ?></div> -->
        </div>
            <div class="evenementen">
                <div class="row" style="margin-bottom: 10px;">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-12">
                                <input type="text" class="form-control InputFontChangers" onclick="getDuplicateText()" id="evenement" aria-describedby="evenement"
                                       name="evenement" placeholder="Evenement" required>
                            </div>
                            <!-- <div class="col-md-6"> -->
                                <input type="hidden" class="form-control InputFontChangers" style="background-color: white;" readonly=true id="table_name" name="table_name" placeholder="Tabelnaam (zal automatisch aangemaakt worden)" required>
                            <!-- </div> -->
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <h6>Begin Datum:</h6>
                                <input id="datum_begin" type="date" class="form-control InputFontChangers" name="datum_begin"
                                       placeholder="Begindatum" required>
                            </div>
                            <div class="col-md-6">
                                <h6>Eind Datum:</h6>
                                <input id="datum_eind" type="date" class="form-control InputFontChangers" name="datum_eind"
                                       placeholder="Einddatum" required>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-check">
                            <input class="form-check-input inlineCheckbox1 InputFontChangers" type="checkbox" value="Extra mensen"
                                   name="check1" id="check1" onClick="showInput()">
                            <label class="form-check-label" for="check1">Extra mensen</label>
                            <div class="max_extra" style="display:none">
                                <input type="text" class="form-control InputFontChangers" id="text_extra" name="text_extra"
                                       placeholder="Tekst voor extra deelnemers">
                            </div>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input inlineCheckbox2 InputFontChangers" type="checkbox" value="Vervoer"
                                   onClick="showInput2();" id="check2" name="check2">
                            <label class="form-check-label" for="check2">Vervoer</label>

                            <div class="vervoer_zelf" style="display: none;">
                                <input type="text" class="form-control InputFontChangers" id="text_vervoer" name="text_vervoer" placeholder="Tekst voor vervoersmiddel"
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
                                                    <input type="text" class="form-control vervoer InputFontChangers"
                                                           placeholder="Vervoer zelf" name="vervoer[]" id="vervoer[]">
                                                </div>
                                                <div class="col-md-4 input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" id="basic-addon1">€</span>
                                                    </div>
                                                    <input type="text" class="form-control InputFontChangers" placeholder="Kosten"
                                                          id="vervoer_costs[]" name="vervoer_costs[]">
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
                            <input class="form-check-input InputFontChangers" type="checkbox" id="check3" name="check3"
                                   value="Vegetarisch">
                            <label class="form-check-label" for="check3">Vegetarisch</label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input inlineCheckbox4 InputFontChangers" type="checkbox" id="check4" name="check4"
                                   value="Edities" onClick="showInput3();">
                            <label class="form-check-label" for="check4">Edities</label>

                            <div class="editie" style="display: none;">
                                <input type="text" class="form-control InputFontChangers" id="text_editie" name="text_editie" placeholder="Tekst voor edities"
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
                                                    <input type="text" class="form-control InputFontChangers" placeholder="Editie"
                                                    id="editie[]" name="editie[]">
                                                </div>
                                                <div class="col-md-4 input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" id="basic-addon2">€</span>
                                                    </div>
                                                    <input type="text" class="form-control InputFontChangers" placeholder="Kosten"
                                                    id="editie_costs[]"  name="editie_costs[]">
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
                            <input class="form-check-input inlineCheckbox5 InputFontChangers" type="checkbox" value="Accomodatie"
                                  id="check5" name="check5" onClick="showInput4();">
                            <label class="form-check-label" for="check5">Accomodatie</label>

                            <div class="accomodatie" style="display: none;">
                                <input type="text" class="form-control InputFontChangers" id="text_accomodatie" name="text_accomodatie"
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
                                                    <input type="text" class="form-control InputFontChangers" placeholder="Accomodatie"
                                                    id="accomodatie[]" name="accomodatie[]">
                                                </div>
                                                <div class="col-md-4 input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" id="basic-addon3">€</span>
                                                    </div>
                                                    <input type="text" class="form-control InputFontChangers" placeholder="Kosten"
                                                    id="accomodatie_costs[]" name="accomodatie_costs[]">
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
                            <input class="form-check-input InputFontChangers" type="checkbox" id="check6" name="check6"
                                   value="Annuleringsverzekering">
                            <label class="form-check-label" for="check6">Annuleringsverzekering</label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input inlineCheckbox7 InputFontChangers" type="checkbox" name="check7" id="check7"
                                   value="Verhuur" onClick="showInput5();">
                            <label class="form-check-label" for="check7">Verhuur</label>

                            <div class="verhuur" style="display: none;">
                                <input type="text" class="form-control InputFontChangers" id="text_verhuur" name="text_verhuur" placeholder="Tekst voor verhuur"
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
                                                    <input type="text" class="form-control InputFontChangers" placeholder="Verhuur"
                                                    id="verhuur[]" name="verhuur[]">
                                                </div>
                                                <div class="col-md-4 input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" id="basic-addon3">€</span>
                                                    </div>
                                                    <input type="text" class="form-control InputFontChangers" placeholder="Kosten"
                                                    id="verhuur_costs[]" name="verhuur_costs[]">
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
                        <input type="text" class="form-control InputFontChangers" id="Prijs" aria-describedby="prijs" placeholder="Prijs"
                               name="prijs" required>
                        <input type="number" class="form-control InputFontChangers" id="max_deelname" placeholder="Max aantal deelnames"
                               style="margin-top: 10px;" name="max_deelnemers" required>
                    </div>
                </div>
            </div>
        </div>

        <div class="text-center">
       <?php echo '<button id="deleteBtn" type="submit" name="delete" class="btn btn-danger"><i class="fas fa-trash"></i></button>'; ?>
            <button id="saveCms" name="saveCms" class="btn btn-success saveBtn" type="submit">Opslaan</button>
        </div>
    </form>
</div> <!--end container-->

<?php
    include('footer.php');
?>