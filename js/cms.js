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
									<input type="text" class="form-control InputFontChangers" name="vervoer[]" placeholder="Vervoer zelf" class="vervoer" id="vervoer[]">\
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
		type: 'POST',
		data: '',
		success: function(response) {

			if (response === 'index.php?failure=noIDFound') {
				window.location.href = 'index.php?failure=noIDFound';
			} else {
				response = JSON.parse(response);
				console.log(response);

				$('#deleteBtn').val(response[0].id);
				$('#updateCms').val(response[0].id);
				$('#evenement').val(response[0].evenement);
				$('#datum_begin').val(response[0].datum_begin);
				$('#datum_eind').val(response[0].datum_eind);
				$('#Prijs').val(response[0].prijs);
				$('#max_deelname').val(response[0].max_deelnemers);
				$('#table_name').val(response[0].table_name);

				if (response[0].text_extra !== 'd-none') {
					$('#check1').click();
					$('#text_extra').val(response[0].text_extra);
				} 

				if (response[0].text_vervoer !== 'd-none') {
					$('#check2').click();
					$('#text_vervoer').val(response[0].text_vervoer);
					getVervoer(response[0].id);
				} 

				if (response[0].vegetarisch !== 'd-none') {
					$('#check3').click();
				}

				if (response[0].text_editie !== 'd-none') {
					$('#check4').click();
					$('#text_editie').val(response[0].text_editie);
					getTextEditie(response[0].id);
				} 

				if (response[0].text_accomodatie !== 'd-none') {
					$('#check5').click();
					$('#text_accomodatie').val(response[0].text_accomodatie);
					getAccomodatie(response[0].id);
				} 

				if (response[0].annuleringsverzekering !== 'd-none') {
					$('#check6').click();
				} 

				if (response[0].text_verhuur !== 'd-none') {
					$('#check7').click();
					$('#text_verhuur').val(response[0].text_verhuur);
					getVerhuur(response[0].id);
				} 
			}
		}
	});
}

// dedicated ajax call to fetch vervoer data.
//change this fix in the future to lower load times etc.
//this is a cheap-fix and will be changed in future updates
/*note to developer: This can be done in one ajax call via one script,
but the knowledge at the given moment wasn't enough, and therefore the developer has created dedicated calls for the retrievement of data
so the developer would not lose out on time and miss the deadline.*/
function getVervoer(id) {
	$.ajax({
		url: 'getVervoer.php',
		type: 'POST',
		data: {
			id: id
		},
		success: function(response) {
			response = JSON.parse(response);
			console.log(response);
			for (var i = 0; i < response.length -1; i++) {
				$('.addVervoer').click();
			}
			let arr = [];
			let arrCosts = [];
			for (var i = 0; i < response.length; i++) {
				arr.push(response[i].vervoerType);
				arrCosts.push(response[i].vervoerKosten);
			}
			console.log(arr);
			document.querySelectorAll('[name="vervoer[]"]').forEach(function(item, index) {
				if (arr[index]) {
					item.value = arr[index];
				}
				});
			document.querySelectorAll('[name="vervoer_costs[]"]').forEach(function(item, index) {
				if (arrCosts[index]) {
					item.value = arrCosts[index];
				}
			});		
		}
	});
}

// dedicated ajax call to fetch editie data.
//change this fix in the future to lower load times etc.
//this is a cheap-fix and will be changed in future updates
function getTextEditie(id) {
	$.ajax({
		url: 'getTextEditie.php',
		type: 'POST',
		data: {
			id: id
		},
		success: function(response) {
			response = JSON.parse(response);
				for (var i = 0; i < response.length -1; i++) {
					$('.addEditie').click();
				}
				let arr = [];
				let arrCosts = [];
				for (var i = 0; i < response.length; i++) {
					arr.push(response[i].editieType);
					arrCosts.push(response[i].editieKosten);
				}
				document.querySelectorAll('[name="editie[]"]').forEach(function(item, index) {
					if (arr[index]) {
						item.value = arr[index];
					}
					});
				document.querySelectorAll('[name="editie_costs[]"]').forEach(function(item, index) {
					if (arrCosts[index]) {
						item.value = arrCosts[index];
					}
				});	
			}
	});
}

function getAccomodatie(id) {
	$.ajax({
		url: 'getAccomodatie.php',
		type: 'POST', 
		data: {
			id: id
		},
		success: function(response) {
			response = JSON.parse(response);
			for (var i = 0; i < response.length -1; i++) {
				$('.addAccomodatie').click();
			}
			let arr = [];
			let arrCosts = [];
			for (var i = 0; i < response.length; i++) {
				arr.push(response[i].accomodatieType);
				arrCosts.push(response[i].accomodatieKosten);
			}
			document.querySelectorAll('[name="accomodatie[]"]').forEach(function(item, index) {
				if (arr[index]) {
					item.value = arr[index];
				}
			});
			document.querySelectorAll('[name="accomodatie_costs[]"]').forEach(function(item, index) {
				if (arrCosts[index]) {
					item.value = arrCosts[index];
				}
			});	
		}
	});
}

function getVerhuur(id) {
	$.ajax({
		url: 'getVerhuur.php',
		type: 'POST',
		data: {
			id: id
		},
		success: function(response) {
			response = JSON.parse(response);
			for (var i = 0; i < response.length -1; i++) {
				$('.addVerhuur').click();
			}
			let arr = [];
			let arrCosts = [];
			for (var i = 0; i < response.length; i++) {
				arr.push(response[i].verhuurType);
				arrCosts.push(response[i].verhuurKosten);
			}
			document.querySelectorAll('[name="verhuur[]"]').forEach(function(item, index) {
				if (arr[index]) {
					item.value = arr[index];
				}
				});
			document.querySelectorAll('[name="verhuur_costs[]"]').forEach(function(item, index) {
				if (arrCosts[index]) {
					item.value = arrCosts[index];
				}
			});	
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
		let y = x.toLowerCase();
		$('#table_name').val(y);
	});
}

function dateConverter() {
	$('#datum_begin').datepicker({
		dateFormat: 'dd-mm-yy',
		changeMonth: true,
		changeYear: true,
		minDate: -0
   });
   $('#datum_eind').datepicker({ 
	   dateFormat: 'dd-mm-yy',
	   changeMonth: true,
	   changeYear: true,
	   minDate: -0
	});
}

//this will change the display based on whether user wants to UPDATE or insert.
function displayChanger() {
	$("#delete_button").css("display", "inline-block");
	$('#saveCms').css('display', 'none');
	$('#updateCms').css('display', 'inline-block');
}

//onclick UPDATE, check the <input type="checkbox"> first
// to see whether string has been changed.
function changeCheckBoxes() {

	if($('#check1').is(':checked')) {
		let textExtraPeople = $('#text_extra').val();
	} else {
		let textExtraPeople = $('#text_extra').val('d-none');
	}
	if ($('#check2').is(':checked')) {
		let textVervoer = $('#text_vervoer').val();
		var vervoer = [];
		var vervoer_costs = [];
		$('input[name="vervoer[]"]').each(function(indexNumber, thisElement) {
			vervoer.push($(thisElement).val());
		});
		$('input[name="vervoer_costs[]"]').each(function(indexNumber, thisElement) {
			vervoer_costs.push($(thisElement).val());
		});
	} else {
		let textVervoer = $('#text_vervoer').val('d-none');
		var vervoer = [];
		var vervoer_costs = [];
	}
	if ($('#check3').is(':checked')) {
		let vegetarisch = $('#check3').val('Vegetarisch');
	} else {
		let vegetarisch = $('#check3').val('d-none');
	}
	if ($('#check4').is(':checked')) {
		let textEditie = $('#text_editie').val();
		var editie = [];
		var editie_costs = [];
		$('input[name="editie[]"]').each(function(indexNumber, thisElement) {
			editie.push($(thisElement).val());
		});
		$('input[name="editie_costs[]"]').each(function(indexNumber, thisElement) {
			editie_costs.push($(thisElement).val());
		});
	} else {
		let textEditie = $('#text_editie').val('d-none');
		var editie = [];
		var editie_costs = [];
	}
	if ($('#check5').is(':checked')) {
		let textAccomodatie = $('#text_accomodatie').val();
		var accomodatie = [];
		var accomodatie_costs = [];
		$('input[name="accomodatie[]"]').each(function(indexNumber, thisElement) {
			accomodatie.push($(thisElement).val());
		});
		$('input[name="accomodatie_costs[]"]').each(function(indexNumber, thisElement) {
			accomodatie_costs.push($(thisElement).val());
		});
	} else {
		let textAccomodatie = $('#text_accomodatie').val('d-none');
		var accomodatie = [];
		var accomodatie_costs = [];
	}
	if ($('#check6').is(':checked')) {
		let annuleringsverzekering = $('#check6').val('Annuleringsverzekering');
	} else {
		let annuleringsverzekering = $('#check6').val('d-none');
	}
	if ($('#check7').is(':checked')) {
		let textVerhuur = $('#text_verhuur').val();
		var verhuur = [];
		var verhuur_costs = [];
		$('input[name="verhuur[]"]').each(function(indexNumber, thisElement) {
			verhuur.push($(thisElement).val());
		});
		$('input[name="verhuur_costs[]"]').each(function(indexNumber, thisElement) {
			verhuur_costs.push($(thisElement).val());
		});
	} else {
		let textVerhuur = $('#text_verhuur').val('d-none');
		var verhuur = [];
		var verhuur_costs = [];
	}
	updateCMS(vervoer, vervoer_costs, editie, editie_costs, accomodatie, accomodatie_costs, verhuur, verhuur_costs);
	vervoer, vervoer_costs, editie, editie_costs, accomodatie, accomodatie_costs, verhuur, verhuur_costs = [];
}

//this function will fire when function changeCheckBoxes is done.
//this function updates the edit made in C.M.S
function updateCMS(vervoer, vervoer_costs, editie, editie_costs, accomodatie, accomodatie_costs, verhuur, verhuur_costs) {
	let submitCheck = $('#updateCms').attr('name');
	let id = $('#updateCms').val();
	let eventName = $('#evenement').val();
	let beginDate = $('#datum_begin').val();
	let endDate = $('#datum_eind').val();
	let textExtraPeople = $('#text_extra').val();
	let textVervoer = $('#text_vervoer').val();
	var vervoer = vervoer;
	var vervoer_costs = vervoer_costs;
	let vegetarisch = $('#check3').val();
	let textEditie = $('#text_editie').val();
	var editie = editie;
	var editie_costs = editie_costs;
	let textAccomodatie = $('#text_accomodatie').val();
	var accomodatie = accomodatie; 
	var accomodatie_costs = accomodatie_costs;
	let annuleringsverzekering = $('#check6').val();
	let textVerhuur = $('#text_verhuur').val();
	var verhuur = verhuur;
	var verhuur_costs = verhuur_costs;
	let price = $('#Prijs').val();
	let maxParticipants = $('#max_deelname').val();
	
	data = {
		submit: submitCheck,
		id: id,
		textVervoer: textVervoer,
		vervoer: vervoer,
		vervoer_costs: vervoer_costs,
		textEditie: textEditie,
		editie: editie,
		editie_costs: editie_costs,
		textAccomodatie: textAccomodatie,
		accomodatie: accomodatie,
		accomodatie_costs: accomodatie_costs,
		textVerhuur: textVerhuur,
		verhuur: verhuur,
		verhuur_costs: verhuur_costs,
		textExtraPeople: textExtraPeople,
		vegan: vegetarisch,
		eventName: eventName,
		beginDate: beginDate,
		endDate: endDate,
		annuleringsverzekering: annuleringsverzekering,
		price: price,
		maxParticipants: maxParticipants 
	}

	$.ajax({
		url: 'updateContent.php',
		type: 'POST',
		data: data,
		success: function(response) {
			let msg = $('#editMSG');
			if (response === 'Vul de noodzakelijke velden in!') {
				msg.text('');
				msg.removeClass('alert alert-success');
				msg.addClass('alert alert-danger');
				msg.html(response);
				msg.slideDown(700);
			} else {
				msg.text('');
				msg.removeClass('alert alert-danger');
				msg.addClass('alert alert-success');
				msg.html(response + '<a href="index.php"> hier </a>');
				msg.slideDown(700);
			}
		}
	});
}
//document.ready starts below, to ensure some scripts do NOT fail
// if your script DOES fail, try it with the document.ready, to ensure the script has been loaded properly
//NOTE: the script is being loaded AFTER the HTML, at the bottom near rule 265
//therefore the document.ready is optional and is NOT required, however it IS a safety measurement
	$(function() {
		if(window.location.href.indexOf("edit") > -1) {
			getAjaxRetrieveEDIT();
			displayChanger();
		} else {
			// the else statement was used for a console.log event
			// the else statement has been kept in case needed for later use
		}

		dateConverter();
	});



