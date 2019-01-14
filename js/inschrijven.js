

$(document).on('click',".btn_extra", function(){
    $('.inputs_extra_inschrijven').append('<div class="div_extra">\
    <div class="row">\
        <div class="col-md-6">\
            <h6>Gegevens extra inschrijver</h6>\
        </div>\
        <div class="col-md-6 text-right">\
            <button class="btn btn-danger btn_min">\
                <i class="fas fa-minus"></i>\
            </div\
        </div>\
    </div>\
    <div class="form-group">\
        <label for="name">Naam</label>\
        <input type="text" class="form-control" placeholder="Naam" required>\
    </div>\
    <div class="form-group">\
        <label for="email">Email</label>\
        <input type="email" class="form-control" placeholder="Email" required>\
    </div>\
    <div class="row">\
        <div class="col-6">\
            <div class="form-group">\
                <label for="straat">Straat</label>\
                <input type="text" class="form-control" id="straat" placeholder="Straat" required>\
            </div>\
        </div>\
        <div class="col-6">\
            <div class="form-group">\
                <label for="huisnummer">Huisnummer</label>\
                <input type="text" class="form-control" id="huisnummer" placeholder="Huisnummer"\
                       required>\
            </div>\
        </div>\
    </div>\
    <div class="row">\
        <div class="col-4">\
            <div class="form-group">\
                <label for="postcode">Postcode</label>\
                <input type="text" class="form-control" id="postcode" placeholder="Postcode" required>\
            </div>\
        </div>\
        <div class="col-8">\
            <div class="form-group">\
                <label for="Woonplaats">Woonplaats</label>\
                <input type="text" class="form-control" id="Woonplaats" placeholder="Woonplaats"\
                        required>\
            </div>\
        </div>\
    </div>\
    <div class="form-group">\
        <label for="Woonplaats">Telefoonnummer</label>\
        <input type="number" class="form-control" id="telefoonnummer" placeholder="Telefoonnummer"\
                   required>\
    </div>\
    </div>');  
   });

   $(document).on('click', '.btn_min', function(){
    $(this).parent().parent().parent().remove();
   });

    //show it when the checkbox is clicked
    $('input').on('click', function () {
        if ($(this).prop('checked')) {
            $(this).parent().find('.evenement_opties').fadeIn();
        } else {
            $(this).parent().find('.evenement_opties').hide();
        }
    });
