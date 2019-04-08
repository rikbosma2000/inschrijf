var count = 1;
var bedrag = [];
var compleet_bedrag = "";

$(document).on('change', count, function(){
    if (count === 0){
        $("#submit2").prop('disabled', true);
    } else {
        $("#submit2").prop('disabled', false);
    }
});


$(document).on('click', ".btn_extra", function () {
    $("#submit2").prop('disabled', false);
    var beschikbare_plekken = parseInt($(this).attr('id'));
    count++;
    console.log(count);
    if (beschikbare_plekken - count === -1) {
        alert("Er zijn niet genoeg plekken beschikbaar als u voor een extra persoon in wilt inschrijven")
    }else {
        var test = parseFloat($('.totaalbedrag').attr('placeholder'));
        var sum = test + parseInt(bedrag);
        compleet_bedrag = compleet_bedrag + parseInt(bedrag);

        $('.totaalbedrag').attr("placeholder", sum);
        $('.totaalbedrag').attr("value", sum);
        $('#amount').attr("value", sum);

        var gewoon = compleet_bedrag / 100 * 5.5 + 3.5;
        var gewoon_assurantie = (gewoon / 100 * 21) + gewoon;
        var gewoon_definitief = gewoon_assurantie.toFixed(2);
        $('.gewoon').attr("placeholder", gewoon_definitief);
        $('.gewoon').attr("value", gewoon_definitief);

        var all = compleet_bedrag / 100 * 7 + 3.5;
        var all_assurantie = all * 1.21;
        var all_definitief = all_assurantie.toFixed(2);
        $('.all-risk').attr("placeholder", all_definitief);
        $('.all-risk').attr("value", all_definitief);

        if ($('input[name=annuleringsverzekering_radio]:checked').val() == "gewoon") {
            var berekening = compleet_bedrag + parseFloat(gewoon_definitief);
            $('.totaalbedrag').attr("placeholder", berekening.toFixed(2));
            $('.totaalbedrag').attr("value", berekening.toFixed(2));
            $('#amount').attr("value", berekening.toFixed(2));
        } else if ($('input[name=annuleringsverzekering_radio]:checked').val() == "all-risk") {
            var berekening = compleet_bedrag + parseFloat(all_definitief);
            $('.totaalbedrag').attr("placeholder", berekening.toFixed(2));
            $('.totaalbedrag').attr("value", berekening.toFixed(2));
            $('#amount').attr("value", berekening.toFixed(2));

        }

        $(this).parent().find('.inputs_extra_inschrijven').append('<div class="div_extra" id="' + count + '">\
    <div class="row">\
        <div class="col-md-6">\
            <h6><strong>Deelnemer <span class="test">' + count + ':</span></strong></h6>\
        </div>\
        <div class="col-md-6 text-right">\
            <button class="btn btn-danger btn_min">\
                <i class="fas fa-minus"></i>\
            </button>\
        </div>\
    </div>\
    <div class="form-group">\
        <label for="name">Naam</label>\
        <input type="text" class="form-control" placeholder="Naam" name="naam_deelnemer[]" required>\
    </div>\
    <div class="form-group">\
        <label for="email">Email</label>\
        <input type="email" class="form-control" placeholder="Email" name="email_deelnemer[]" required>\
    </div>\
    <div class="row">\
        <div class="col-6">\
            <div class="form-group">\
                <label for="straat">Straat</label>\
                <input type="text" class="form-control" id="straat" placeholder="Straat" name="straat_deelnemer[]" required>\
            </div>\
        </div>\
        <div class="col-6">\
            <div class="form-group">\
                <label for="huisnummer">Huisnummer</label>\
                <input type="text" class="form-control" id="huisnummer" placeholder="Huisnummer"\
                       name="huisnummer_deelnemer[]" required>\
            </div>\
        </div>\
    </div>\
    <div class="row">\
        <div class="col-4">\
            <div class="form-group">\
                <label for="postcode">Postcode</label>\
                <input type="text" class="form-control" id="postcode" placeholder="Postcode" name="postcode_deelnemer[]" required>\
            </div>\
        </div>\
        <div class="col-8">\
            <div class="form-group">\
                <label for="Woonplaats">Woonplaats</label>\
                <input type="text" class="form-control" id="Woonplaats" placeholder="Woonplaats"\
                        name="woonplaats_deelnemer[]" required>\
            </div>\
        </div>\
    </div>\
    <div class="form-group">\
        <label for="Woonplaats">Telefoonnummer</label>\
        <input type="number" class="form-control" id="telefoonnummer" placeholder="Telefoonnummer"\
                   name="telefoonnummer_deelnemer[]" required>\
    </div>\
    </div>');
    }
});

$(document).on('click', '.btn_min', function () {
    $(this).parent().parent().parent().remove();
    var test =  parseFloat($('.totaalbedrag').attr('placeholder'));
    var sum = compleet_bedrag - parseInt(bedrag);
    compleet_bedrag = compleet_bedrag - bedrag;

    //Annuleringsverzekering
    var gewoon = compleet_bedrag / 100 * 5.5 + 3.5;
    var gewoon_assurantie = (gewoon / 100 * 21) + gewoon;
    var gewoon_definitief = gewoon_assurantie.toFixed(2);
    $('.gewoon').attr("placeholder", gewoon_definitief);
    $('.gewoon').attr("value", gewoon_definitief);

    var all = compleet_bedrag / 100 * 7 + 3.5;
    var all_assurantie = all * 1.21;
    var all_definitief = all_assurantie.toFixed(2);
    $('.all-risk').attr("placeholder", all_definitief);
    $('.all-risk').attr("value", all_definitief);


    if ($('input[name=annuleringsverzekering_radio]:checked').val() == "geen") {
        $('.totaalbedrag').attr("placeholder", compleet_bedrag);
        $('.totaalbedrag').attr("value", compleet_bedrag);
        $('#amount').attr("value", compleet_bedrag);
    }
    if ($('input[name=annuleringsverzekering_radio]:checked').val() == "gewoon") {
        var get_annuleringsverzekering =  $('.gewoon').attr('placeholder');
        var sum_annulerings = parseFloat(get_annuleringsverzekering) + compleet_bedrag;
        $('.totaalbedrag').attr("placeholder", sum_annulerings.toFixed(2));
        $('.totaalbedrag').attr("value", sum_annulerings.toFixed(2));
        $('#amount').attr("value", sum_annulerings.toFixed(2));

    } else if ($('input[name=annuleringsverzekering_radio]:checked').val() == "all-risk"){
        var get_annuleringsverzekering =  $('.all-risk').attr('placeholder');
        // var bedrag_event = parseInt($(this).attr('id'));
        var sum_annulerings = parseFloat(get_annuleringsverzekering) + compleet_bedrag;
        $('.totaalbedrag').attr("placeholder", sum_annulerings.toFixed(2));
        $('.totaalbedrag').attr("value", sum_annulerings.toFixed(2));
        $('#amount').attr("value", sum_annulerings.toFixed(2));
    }


    count--;
    if (count === 0){
        $("#submit2").prop('disabled', true);
    }
});

$('.table-forms').on('change', function () {
    $('.div_extra').remove();
    $('.table-forms').parent().find('.evenement_opties').css('display', 'none');

    if ($(this).is(':checked')) {
        $(this).parent().find('.evenement_opties').fadeIn();
    }
});

$(document).on('change', '.table-forms', function () {
    if ($('input[name=deelname_inschrijver]:checked').val() == "nee") {
        $('.totaalbedrag').attr("placeholder", '0');
        $('.totaalbedrag').attr("value", '0');
    }
    if ($('input[name=deelname_inschrijver]:checked').val() == "nee") {
        count = 0;
    } else {
        count = 1;
    }
    bedrag = [];
    var bedrag_event = ($(this).attr('id'));
    bedrag.push(bedrag_event);
    var totaalbedrag = bedrag_event * count;
    $('.totaalbedrag').attr("placeholder", totaalbedrag);
    $('.totaalbedrag').attr("value", totaalbedrag);
    $('#amount').attr("value",totaalbedrag);
    compleet_bedrag = totaalbedrag;

    var gewoon = bedrag_event / 100 * 5.5 + 3.5;
    var gewoon_assurantie = (gewoon / 100 * 21) + gewoon;
    var gewoon_definitief = gewoon_assurantie.toFixed(2);
    $('.gewoon').attr("placeholder", gewoon_definitief);
    $('.gewoon').attr("value", gewoon_definitief);

    var all = bedrag_event / 100 * 7 + 3.5;
    var all_assurantie = all * 1.21;
    var all_definitief = all_assurantie.toFixed(2);
    $('.all-risk').attr("placeholder", all_definitief);
    $('.all-risk').attr("value", all_definitief);
});

$('.annuleringsverzekering_radio').on('change', function () {
    if ($('input[name=annuleringsverzekering_radio]:checked').val() == "geen") {
        $('.totaalbedrag').attr("placeholder", compleet_bedrag);
        $('.totaalbedrag').attr("value", compleet_bedrag);
        $('#amount').attr("value", compleet_bedrag);
    }
    if ($('input[name=annuleringsverzekering_radio]:checked').val() == "gewoon") {
        var get_annuleringsverzekering =  $('.gewoon').attr('placeholder');
        var sum_annulerings = parseFloat(get_annuleringsverzekering) + compleet_bedrag;
        $('.totaalbedrag').attr("placeholder", sum_annulerings.toFixed(2));
        $('.totaalbedrag').attr("value", sum_annulerings.toFixed(2));
        $('#amount').attr("value", sum_annulerings.toFixed(2));

    } else if ($('input[name=annuleringsverzekering_radio]:checked').val() == "all-risk"){
        var get_annuleringsverzekering =  $('.all-risk').attr('placeholder');
        // var bedrag_event = parseInt($(this).attr('id'));
        var sum_annulerings = parseFloat(get_annuleringsverzekering) + compleet_bedrag;
        $('.totaalbedrag').attr("placeholder", sum_annulerings.toFixed(2));
        $('.totaalbedrag').attr("value", sum_annulerings.toFixed(2));
        $('#amount').attr("value", sum_annulerings.toFixed(2));
    }
});

// function confirmButton() {
//     var x = confirm("Weet u zeker dat u zich wil uitschrijven voor het evenement?");
//     if (x === true) {
//         return true;
//     } else {
//         return false;
//     }
// }

$(function () {
    if (window.location.href.indexOf("edit_inschrijver") > -1) {
        $(".gegevens").css("display", "none");
        $("#gegevensEdit").css("display", "block");
        getData();
    }

    if (window.location.href.indexOf("aanmelden=false") > -1) {
        alert("Oeps er is iets fout gegaan!");
    }
});

function getData() {
    $.ajax({
        url: 'editGegevens.php',
        type: 'GET',
        data: '',
        success: function (response) {

            response = JSON.parse(response);
            $('#naam').val(response[0].naam);
            $('#email').val(response[0].email);
            $('#telefoonnumer').val(response[0].telefoonnummer);
            $('#woonplaats').val(response[0].woonplaats);
            $('#straat').val(response[0].straat);
            $('#huisnummer').val(response[0].huisnummer);
            $('#postcode').val(response[0].postcode);
        }
    });
}

$('.deelname_inschrijver').on('change', function () {
    if ($(this).val() === 'nee') {
        // if (count = 0){
        //     $("#submit2").prop('disabled', true);
        // } else {
        //     $("#submit2").prop('disabled', false);
        // }
        // append goes here
        var contact_geen = compleet_bedrag - bedrag;
        compleet_bedrag = compleet_bedrag - bedrag;
        $('.totaalbedrag').attr("placeholder", contact_geen);
        $('.totaalbedrag').attr("value", contact_geen);
        $('#amount').attr("value", contact_geen);

        $(".contact_deelnemer").css("display", "none");
        count--;

        //Annuleringsverzekering
        var gewoon = compleet_bedrag / 100 * 5.5 + 3.5;
        var gewoon_assurantie = (gewoon / 100 * 21) + gewoon;
        var gewoon_definitief = gewoon_assurantie.toFixed(2);
        $('.gewoon').attr("placeholder", gewoon_definitief);
        $('.gewoon').attr("value", gewoon_definitief);

        var all = compleet_bedrag / 100 * 7 + 3.5;
        var all_assurantie = all * 1.21;
        var all_definitief = all_assurantie.toFixed(2);
        $('.all-risk').attr("placeholder", all_definitief);
        $('.all-risk').attr("value", all_definitief);


        if ($('input[name=annuleringsverzekering_radio]:checked').val() == "geen") {
            $('.totaalbedrag').attr("placeholder", compleet_bedrag);
            $('.totaalbedrag').attr("value", compleet_bedrag);
            $('#amount').attr("value", compleet_bedrag);
        }
        if ($('input[name=annuleringsverzekering_radio]:checked').val() == "gewoon") {
            var get_annuleringsverzekering =  $('.gewoon').attr('placeholder');
            var sum_annulerings = parseFloat(get_annuleringsverzekering) + compleet_bedrag;
            $('.totaalbedrag').attr("placeholder", sum_annulerings.toFixed(2));
            $('.totaalbedrag').attr("value", sum_annulerings.toFixed(2));
            $('#amount').attr("value", sum_annulerings.toFixed(2));

        } else if ($('input[name=annuleringsverzekering_radio]:checked').val() == "all-risk"){
            var get_annuleringsverzekering =  $('.all-risk').attr('placeholder');
            // var bedrag_event = parseInt($(this).attr('id'));
            var sum_annulerings = parseFloat(get_annuleringsverzekering) + compleet_bedrag;
            $('.totaalbedrag').attr("placeholder", sum_annulerings.toFixed(2));
            $('.totaalbedrag').attr("value", sum_annulerings.toFixed(2));
            $('#amount').attr("value", sum_annulerings.toFixed(2));
        }


    } else {
        compleet_bedrag = compleet_bedrag + parseFloat(bedrag);
        $('.totaalbedrag').attr("placeholder", compleet_bedrag);
        $('.totaalbedrag').attr("value", compleet_bedrag);
        $(".contact_deelnemer").css("display", "block");
        count++;

        //Annuleringsverzekering
        var gewoon = compleet_bedrag / 100 * 5.5 + 3.5;
        var gewoon_assurantie = (gewoon / 100 * 21) + gewoon;
        var gewoon_definitief = gewoon_assurantie.toFixed(2);
        $('.gewoon').attr("placeholder", gewoon_definitief);
        $('.gewoon').attr("value", gewoon_definitief);

        var all = compleet_bedrag / 100 * 7 + 3.5;
        var all_assurantie = all * 1.21;
        var all_definitief = all_assurantie.toFixed(2);
        $('.all-risk').attr("placeholder", all_definitief);
        $('.all-risk').attr("value", all_definitief);


        if ($('input[name=annuleringsverzekering_radio]:checked').val() == "geen") {
            $('.totaalbedrag').attr("placeholder", compleet_bedrag);
            $('.totaalbedrag').attr("value", compleet_bedrag);
            $('#amount').attr("value", compleet_bedrag);
        }
        if ($('input[name=annuleringsverzekering_radio]:checked').val() == "gewoon") {
            var get_annuleringsverzekering =  $('.gewoon').attr('placeholder');
            var sum_annulerings = parseFloat(get_annuleringsverzekering) + compleet_bedrag;
            $('.totaalbedrag').attr("placeholder", sum_annulerings.toFixed(2));
            $('.totaalbedrag').attr("value", sum_annulerings.toFixed(2));
            $('#amount').attr("value", sum_annulerings.toFixed(2));

        } else if ($('input[name=annuleringsverzekering_radio]:checked').val() == "all-risk"){
            var get_annuleringsverzekering =  $('.all-risk').attr('placeholder');
            // var bedrag_event = parseInt($(this).attr('id'));
            var sum_annulerings = parseFloat(get_annuleringsverzekering) + compleet_bedrag;
            $('.totaalbedrag').attr("placeholder", sum_annulerings.toFixed(2));
            $('.totaalbedrag').attr("value", sum_annulerings.toFixed(2));
            $('#amount').attr("value", sum_annulerings.toFixed(2));
        }
    }
});

//Live typing
var input = $('#name'),
    label = $('.contact_deelnemer_naam');

input.bind('keydown keypress', function () {
    setTimeout(function () {
        label.text(input.val());
    }, 0);
});

var input2 = $('#email'),
    label2 = $('.contact_deelnemer_email');

input2.bind('keydown keypress', function () {
    setTimeout(function () {
        label2.text(input2.val());
    }, 0);
});

var input3 = $('#telefoonnummer'),
    label3 = $('.contact_deelnemer_telefoonnummer');

input3.bind('keydown keypress', function () {
    setTimeout(function () {
        label3.text(input3.val());
    }, 0);
});
var input4 = $('#straat'),
    label4 = $('.contact_deelnemer_straat');

input4.bind('keydown keypress', function () {
    setTimeout(function () {
        label4.text(input4.val());
    }, 0);
});
var input5 = $('#huisnummer'),
    label5 = $('.contact_deelnemer_huisnummer');

input5.bind('keydown keypress', function () {
    setTimeout(function () {
        label5.text(input5.val());
    }, 0);
});
var input6 = $('#postcode'),
    label6 = $('.contact_deelnemer_postcode');

input6.bind('keydown keypress', function () {
    setTimeout(function () {
        label6.text(input6.val());
    }, 0);
});
var input7 = $('#woonplaats'),
    label7 = $('.contact_deelnemer_woonplaats');

input7.bind('keydown keypress', function () {
    setTimeout(function () {
        label7.text(input7.val());
    }, 0);
});


//reset inputs for security
$(window).bind("pageshow", function() {
    var form = $('form');
    // let the browser natively reset defaults
    form[0].reset();
});

$(function () {
    if (window.location.href.indexOf("evenementSelect") > -1) {
        $(".normaalEvenement").css("display", "none");
        $(".selectedEvenement").css("display", "block");

        if($('.table-forms').is(':checked')) {
            var bedrag_event = ($('.table-forms').attr('id'));
            bedrag.push(bedrag_event);
            var totaalbedrag = bedrag_event * count;
            $('.totaalbedrag').attr("placeholder", totaalbedrag);
            $('.totaalbedrag').attr("value", totaalbedrag);
            $('#amount').attr("value",totaalbedrag);
            compleet_bedrag = totaalbedrag;
        }

        if ($('.table-forms').is(':checked')) {
            $('.evenement_opties').fadeIn();
        }
        var gewoon = compleet_bedrag / 100 * 5.5 + 3.5;
        var gewoon_assurantie = (gewoon / 100 * 21) + gewoon;
        var gewoon_definitief = gewoon_assurantie.toFixed(2);
        $('.gewoon').attr("placeholder", gewoon_definitief);
        $('.gewoon').attr("value", gewoon_definitief);

        var all = compleet_bedrag / 100 * 7 + 3.5;
        var all_assurantie = all * 1.21;
        var all_definitief = all_assurantie.toFixed(2);
        $('.all-risk').attr("placeholder", all_definitief);
        $('.all-risk').attr("value", all_definitief);

    }
});
