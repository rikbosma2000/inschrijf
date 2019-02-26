var count = 1;
var totaalbedrag = [];

$(document).on('click', ".btn_extra", function () {

    count++;
    $(this).parent().find('.inputs_extra_inschrijven').append('<div class="div_extra" id="' + count + '">\
    <div class="row">\
        <div class="col-md-6">\
            <h6>Gegevens extra inschrijver</h6>\
        </div>\
        <div class="col-md-6 text-right">\
            <button class="btn btn-danger btn_min">\
                <i class="fas fa-minus"></i>\
            </button>\
        </div>\
    </div>\
    <div class="form-group">\
        <label for="name">Naam</label>\
        <input type="text" class="form-control" placeholder="Naam" name="naam_deelnemer[]">\
    </div>\
    <div class="form-group">\
        <label for="email">Email</label>\
        <input type="email" class="form-control" placeholder="Email" name="email_deelnemer[]">\
    </div>\
    <div class="row">\
        <div class="col-6">\
            <div class="form-group">\
                <label for="straat">Straat</label>\
                <input type="text" class="form-control" id="straat" placeholder="Straat" name="straat_deelnemer[]">\
            </div>\
        </div>\
        <div class="col-6">\
            <div class="form-group">\
                <label for="huisnummer">Huisnummer</label>\
                <input type="text" class="form-control" id="huisnummer" placeholder="Huisnummer"\
                       name="huisnummer_deelnemer[]">\
            </div>\
        </div>\
    </div>\
    <div class="row">\
        <div class="col-4">\
            <div class="form-group">\
                <label for="postcode">Postcode</label>\
                <input type="text" class="form-control" id="postcode" placeholder="Postcode" name="postcode_deelnemer[]">\
            </div>\
        </div>\
        <div class="col-8">\
            <div class="form-group">\
                <label for="Woonplaats">Woonplaats</label>\
                <input type="text" class="form-control" id="Woonplaats" placeholder="Woonplaats"\
                        name="woonplaats_deelnemer[]">\
            </div>\
        </div>\
    </div>\
    <div class="form-group">\
        <label for="Woonplaats">Telefoonnummer</label>\
        <input type="number" class="form-control" id="telefoonnummer" placeholder="Telefoonnummer"\
                   name="telefoonnummer_deelnemer[]">\
    </div>\
    <div class="vegetarisch">\
      <h6>Bent u vegetarisch?</h6>\
      <div class="form-check">\
        <input type="radio" class="form-check-input" name="vegetarisch_radio_deelnemer" value="yes">\
        <label class="form-check-label">Yes</label>\
      </div>\
      <div class="form-check">\
        <input type="radio" class="form-check-input" name="vegetarisch_radio_deelnemer" value="no">\
        <label class="form-check-label">No</label>\
      </div>\
    </div>\
    </div>');
});

$(document).on('click', '.btn_min', function () {
    $(this).parent().parent().parent().remove();
    count--;
});

//show it when the checkbox is clicked
$('.form-check-input').on('click', function () {
    if ($(this).prop('checked')) {
        totaalbedrag.push($(this).attr('id'));
        console.log(totaalbedrag);
        $(this).parent().find('.evenement_opties').fadeIn();
    } else {
        $(this).parent().find('.evenement_opties').hide();
    }
});


// $(document).on('click', '.form-check-input', function() {
//     var bedrag_event = ($(this).attr('id'));
//     // var totaalbedrag = bedrag_event * count;
//     // $('.totaalbedrag').attr("placeholder", totaalbedrag);
// });


function confirmButton() {
    var x = confirm("Weet u zeker dat u zich wil uitschrijven voor het evenement?");
    if (x === true) {
        return true;
    } else {
        return false;
    }
}

$(function() {
    if(window.location.href.indexOf("edit_inschrijver") > -1) {
        $(".gegevens").css("display", "none");
        $("#gegevensEdit").css("display", "block");
        getData();
    } else {
        // the else statement was used for a console.log event
        // the else statement has been kept in case needed for later use

    }
});

