var count = 1;

$(document).on('click',".btn_extra", function(){
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
    </div>');
   });

   $(document).on('click', '.btn_min', function(){
    $(this).parent().parent().parent().remove();
    count--;
   });

    //show it when the checkbox is clicked
    $('input').on('click', function () {
        if ($(this).prop('checked')) {
            $(this).parent().find('.evenement_opties').fadeIn();
        } else {
            $(this).parent().find('.evenement_opties').hide();
        }
    });


$(document).on('click', '.form-check-input', function() {
    var bedrag_event = ($(this).attr('id'));
    var totaalbedrag = bedrag_event * count;
    console.log(totaalbedrag);
    $('.totaalbedrag').attr("placeholder", totaalbedrag);
});

