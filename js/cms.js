var countVervoer = 1;
var countInput = 1;
var countAccomodatie = 1;
var countVerhuur = 1;


//zelf vervoer in cms



$(document).on('click', ".addVervoer", function (e) {

    var vervoerAppend = '<div class="box" style="margin-top: 10px;">\
							<div class="row">\
								<div class="col-md-2">\
								    <div class="btn minVervoer">\
										<i class="fas fa-minus"></i>\
									</div>\
								</div>\
								<div class="col-md-6">\
									<input type="text" class="form-control InputFontChangers" name="vervoer[]" placeholder="Vervoer zelf" class="vervoer" id="vervoer">\
								</div>\
								<div class="col-md-4 input-group">\
								    <div class="input-group-prepend">\
									    <span class="input-group-text" id="basic-addon1">€</span>\
									</div>\
									<input type="text" class="form-control InputFontChangers" placeholder="Kosten" name="vervoer_costs[]">\
								</div>\
							</div>\
						</div>';

    $(".columnVervoer").append(vervoerAppend);
});

$(document).on('click', '.minVervoer', function (e) {
    if ($(".minVervoer").length > 1) {
        $(this).parent().parent().parent().remove();
    }
});

//extra input editie cms

$(".addEditie").click(function () {

    countInput++

    var inputAppend = '<div class="box' + countInput + '" style="margin-top: 10px;">\
														<div class="row">\
															<div class="col-md-2">\
																<div class="btn minEditie">\
																	<i class="fas fa-minus"></i>\
																</div>\
															</div>\
															<div class="col-md-6">\
																<input type="text" class="form-control InputFontChangers" placeholder="Editie" name="editie[]">\
															</div>\
															<div class="col-md-4 input-group">\
																<div class="input-group-prepend">\
																	<span class="input-group-text" id="basic-addon2">€</span>\
																</div>\
																<input type="text" class="form-control InputFontChangers" placeholder="Kosten" name="editie_costs[]">\
															</div>\
														</div>';

    $(".columnEditie").append(inputAppend);
});

$(document).on('click', '.minEditie', function (e) {
    if ($(".minEditie").length > 1) {
        $(this).parent().parent().parent().remove();
    }
});

//accomodatie inputs cms

$(".addAccomodatie").click(function () {

    countAccomodatie++

    $(".columnAccomodatie").append('<div class="box' + countAccomodatie + '" style="margin-top: 10px;">\
														<div class="row">\
															<div class="col-md-2">\
																<div class="btn minAccomodatie">\
																	<i class="fas fa-minus"></i>\
																</div>\
															</div>\
															<div class="col-md-6">\
																<input type="text" class="form-control" placeholder="Accomodatie" name="accomodatie[]">\
															</div>\
															<div class="col-md-4 input-group">\
																<div class="input-group-prepend">\
																	<span class="input-group-text" id="basic-addon3">€</span>\
																</div>\
																<input type="text" class="form-control InputFontChangers" placeholder="Kosten" name="accomodatie_costs[]">\
															</div>\
														</div>');
});

$(document).on('click', '.minAccomodatie', function (e) {
    if ($(".minAccomodatie").length > 1) {
        $(this).parent().parent().parent().remove();
    }

});


//verhuur inputs cms

$(".addVerhuur").click(function () {

    countVerhuur++
    $(".columnVerhuur").append('<div class="box' + countVerhuur + '" style="margin-top: 10px;">\
														<div class="row">\
															<div class="col-md-2">\
																<div class="btn minVerhuur">\
																	<i class="fas fa-minus"></i>\
																</div>\
															</div>\
															<div class="col-md-6">\
																<input type="text" class="form-control InputFontChangers" placeholder="Verhuur" name="verhuur[]">\
															</div>\
															<div class="col-md-4 input-group">\
																<div class="input-group-prepend">\
																	<span class="input-group-text" id="basic-addon4">€</span>\
																</div>\
																<input type="text" class="form-control InputFontChangers" placeholder="Kosten" name="verhuur_costs[]">\
															</div>\
														</div>');
});

$(document).on('click', '.minVerhuur', function (e) {
    if ($(".minVerhuur").length > 1) {
        $(this).parent().parent().parent().remove();
    }

});

// ajax function ensures that data gets fetched
// ajax call should fire when the document is ready
function getAjaxRetrieveEDIT() {
	$.ajax({
		url: 'processEdit.php',
		type: 'GET',
		data: '',
		success: function(response) {
			response = JSON.parse(response);
			$('#deleteBtn').val(response[0].id);
			$('#evenement').val(response[0].evenement);
			$('#datum_begin').val(response[0].datum_begin);
			$('#datum_eind').val(response[0].datum_eind);
			$('#Prijs').val(response[0].prijs);
			$('#max_deelname').val(response[0].max_deelnemers);
			$('#table_name').val(response[0].table_name);
			console.log(response);
			if (response[0].text_extra !== 'd-none') {
				$('#check1').click();
				$('#text_extra').val(response[0].text_extra);
				$('#extra_inschrijven').val(response[0].extra_inschrijven);
			} else {
				// fire nothing, but keep the else statement incase required
				//this else is part of the "if text_extra" statement
			}
			if (response[0].text_vervoer !== 'd-none') {
				$('#check2').click();
				$('#text_vervoer').val(response[0].text_vervoer);
			} else {
				// fire nothing, but keep the else statement incase required
				//this else is part of the "if text_vervoer" statement				
			}
			if (response[0].vegetarisch !== 'd-none') {
				$('#check3').click();
			} else {
				// fire nothing, but keep the else statement incase required
				//this else is part of the "if vegetarisch" statement					
			}
			if (response[0].text_editie !== 'd-none') {
				$('#check4').click();
				$('#text_editie').val(response[0].text_editie);
			} else {
				// fire nothing, but keep the else statement incase required
				//this else is part of the "if text_editie" statement
			}
			if (response[0].text_accomodatie !== 'd-none') {
				$('#check5').click();
				$('#text_accomodatie').val(response[0].text_accomodatie);
				$("#accomodatie\\[" + "\\]").val(response[0].accomodatieType);
				$("#accomodatie_costs\\[" + "\\]").val(response[0].accomodatieKosten);
			} else {
				// fire nothing, but keep the else statement incase required
				//this else is part of the "if text_accomodatie" statement				
			}
			if (response[0].annuleringsverzekering !== 'd-none') {
				$('#check6').click();
			} else {
				// fire nothing, but keep the else statement incase required
				//this else is part of the "if annuleringsverzekering" statement					
			}
			if (response[0].text_verhuur !== 'd-none') {
				$('#check7').click();
				$('#text_verhuur').val(response[0].text_verhuur);
			} else {
				// fire nothing, but keep the else statement incase required
				//this else is part of the "if text_verhuur" statement				
			}
		}
	});
}

//this function ensures the database table cell doesn't contain any whitespace
// it trims the whitespace from the main title and inserts it concat as a table cell
function getDuplicateText() {
	$('#evenement').keyup(function() {
		let $this = $(this).val();
		$('#table_name').val($this);
		let tableName = $('#table_name').val();
		let x = tableName.replace(/\s/g, "");
		$('#table_name').val(x);
	});
}

function clearBootstrapStandardModal() {
		$('#cmsInstructions').modal({
			backdrop: 'static',
			keyboard: false
		});
}
//document.ready starts below, to ensure some scripts do NOT fail
// if your script DOES fail, try it with the document.ready, to ensure the script has been loaded properly
//NOTE: the script is being loaded AFTER the HTML, at the bottom near rule 265
//therefore the document.ready is optional and is NOT required, however it IS a safety measurement
	$(function() {
		if(window.location.href.indexOf("edit") > -1) {
			getAjaxRetrieveEDIT();
		} else {
			// the else statement was used for a console.log event
			// the else statement has been kept in case needed for later use
		}
	});



