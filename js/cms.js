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
		type: 'GET',
		data: '',
		success: function(response) {
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
				for (var i = 0; i < response.length -1; i++) {
					$('.addVervoer').click();
				}
				let arr = [];
				let arrCosts = [];
				for (var i = 0; i < response.length; i++) {
					arr.push(response[i].vervoerType);
					arrCosts.push(response[i].vervoerKosten);
				}
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

			if (response[0].vegetarisch !== 'd-none') {
				$('#check3').click();
			}

			if (response[0].text_editie !== 'd-none') {
				$('#check4').click();
				$('#text_editie').val(response[0].text_editie);
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

			if (response[0].text_accomodatie !== 'd-none') {
				$('#check5').click();
				$('#text_accomodatie').val(response[0].text_accomodatie);
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

			if (response[0].annuleringsverzekering !== 'd-none') {
				$('#check6').click();
			} 

			if (response[0].text_verhuur !== 'd-none') {
				$('#check7').click();
				$('#text_verhuur').val(response[0].text_verhuur);
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

//onclick of UPDATE, check the <input type="checkbox"> first
// to see whether string has been changed.
function changeCheckBoxes() {

	if($('#check1').is(':checked')) {
		let textExtraPeople = $('#text_extra').val();
	} else {
		let textExtraPeople = $('#text_extra').val('d-none');
	}
	if ($('#check3').is(':checked')) {
		let vegetarisch = $('#check3').val('Vegetarisch');
		console.log('fired');
	} else {
		let vegetarisch = $('#check3').val('d-none');
	}
	if ($('#check6').is(':checked')) {
		let annuleringsverzekering = $('#check6').val('Annuleringsverzekering');
	} else {
		let annuleringsverzekering = $('#check6').val('d-none');
	}
	updateCMS();
}

//this function will fire when function changeCheckBoxes is done.
//this function updates the edit made in C.M.S
function updateCMS() {

	let submitCheck = $('#updateCms').attr('name');
	let id = $('#updateCms').val();
	let textExtraPeople = $('#text_extra').val();
	let vegetarisch = $('#check3').val();
	let eventName = $('#evenement').val();
	let beginDate = $('#datum_begin').val();
	let endDate = $('#datum_eind').val();
	let annuleringsverzekering = $('#check6').val();
	let price = $('#Prijs').val();
	let maxParticipants = $('#max_deelname').val();
	
	data = {
		submit: submitCheck,
		id: id,
		textExtraPeople: textExtraPeople,
		vegan: vegetarisch,
		eventName: eventName,
		beginDate: beginDate,
		endDate: endDate,
		annuleringsverzekering: annuleringsverzekering,
		price: price,
		maxParticipants: maxParticipants 
	}
	console.log(data);

	$.ajax({
		url: 'updateContent.php',
		type: 'POST',
		data: data,
		success: function(response) {
			let msg = $('#editMSG');
			msg.text(response);
			msg.slideDown(700);
			msg.delay(2000);
			msg.slideUp(700);
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



