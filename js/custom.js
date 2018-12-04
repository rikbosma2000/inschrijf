$(".addEvent").click(function () {
    $(".main-event").append('<div class="row" style="margin-bottom: 10px ">\
        <div class="col-md-2">\
        <div class="btn btn-danger minEvent">\
        <i class="fas fa-minus"></i>\
        </div>\
        </div>\
        <div class="col-md-10">\
        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="evenement"\
    placeholder="Evenement" name="evenement">\
        </div>\
                            <div class="col-md-6" style="margin-top: 10px;">\
                                <div class="form-check">\
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">\
                                    <label class="form-check-label" for="inlineCheckbox1">Extra mensen</label>\
                                </div>\
                                <div class="form-check">\
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">\
                                    <label class="form-check-label" for="inlineCheckbox2">Vervoer</label>\
                                </div>\
                                <div class="form-check">\
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">\
                                    <label class="form-check-label" for="inlineCheckbox2">Vegetarich</label>\
                                </div>\
                                <div class="form-check">\
        <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">\
        <label class="form-check-label" for="inlineCheckbox2">Edities</label>\
        </div>\
                            </div>\
                            <div class="col-md-6" style="margin-top: 10px;">\
                                <div class="form-check">\
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">\
                                    <label class="form-check-label" for="inlineCheckbox1">Accomodatie</label>\
                                </div>\
                                <div class="form-check">\
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">\
                                    <label class="form-check-label" for="inlineCheckbox2">Annuleringsverzekering</label>\
                                </div>\
                                <div class="form-check">\
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option3">\
                                    <label class="form-check-label" for="inlineCheckbox2">E-Bike</label>\
                                </div> \
                            </div>\
                            <div class="col-md-4">\
                                    <h6>Extra</h6>\
                                    <input type="text" class="form-control" id="Prijs" aria-describedby="prijs"\
                                           placeholder="Prijs">\
                             </div>\
                        </div>');

});

$(document).on('click', '.minEvent', function (e) {
    if ($(".minEvent").length > 1) {
        $(this).parent().parent().remove();
    }
});
