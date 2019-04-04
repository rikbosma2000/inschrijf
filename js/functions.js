// JavaScript Document

function showInput() {
	var checkBox = document.getElementsByClassName("inlineCheckbox1");
	var text = document.getElementsByClassName("max_extra");
	var extra = document.getElementsByName('text_extra');
	for (var i = 0; i < text.length; i++) {
		if (checkBox[i].checked == true) {
			text[i].style.display = "block";
			extra[i].required = true;
		} else {
			text[i].style.display = "none";
			extra[i].required = false;
		}
	}
}

function showInput2() {
	var checkBox = document.getElementsByClassName("inlineCheckbox2");
	var text = document.getElementsByClassName("vervoer_zelf");
	var vervoer = document.getElementsByName('text_vervoer');
	for (var i = 0; i < text.length; i++) {
		if (checkBox[i].checked == true) {
			text[i].style.display = "block";
			vervoer[i].required = true;
		} else {
			text[i].style.display = "none";
			vervoer[i].required = false;
		}
	}
}

function showInput3() {
	var checkBox = document.getElementsByClassName("inlineCheckbox4");
	var text = document.getElementsByClassName("editie");
	var editie = document.getElementsByName('text_editie');
	for (var i = 0; i < text.length; i++) {
		if (checkBox[i].checked == true) {
			text[i].style.display = "block";
			editie[i].required = true;
		} else {
			text[i].style.display = "none";
			editie[i].required = false;
		}
	}
}

function showInput4() {
	var checkBox = document.getElementsByClassName("inlineCheckbox5");
	var text = document.getElementsByClassName("accomodatie");
	var accomodatie = document.getElementsByName('text_accomodatie');
	for (var i = 0; i < text.length; i++) {
		if (checkBox[i].checked == true) {
			text[i].style.display = "block";
			accomodatie[i].required = true;
		} else {
			text[i].style.display = "none";
			accomodatie[i].required = false;
		}
	}
}

function showInput5() {
	var checkBox = document.getElementsByClassName("inlineCheckbox7");
	var text = document.getElementsByClassName("verhuur");
	var verhuur = document.getElementsByName('text_verhuur');
	for (var i = 0; i < text.length; i++) {
		if (checkBox[i].checked == true) {
			text[i].style.display = "block";
			verhuur[i].required = true;
		} else {
			text[i].style.display = "none";
			verhuur[i].required = false;
		}
	}
};

function showInputEditie(){
	var inputAppend = '<div class="box' + countInput + '" style="margin-top: 10px;">\
														<div class="row">\
															<div class="col-md-2">\
																<div class="btn minEditie">\
																	<i class="fas fa-minus"></i>\
																</div>\
															</div>\
															<div class="col-md-6">\
																<input type="text" class="form-control" placeholder="Editie">\
															</div>\
															<div class="col-md-4 input-group">\
																<div class="input-group-prepend">\
																	<span class="input-group-text" id="basic-addon2">€</span>\
																</div>\
																<input type="text" class="form-control" placeholder="costs">\
															</div>\
														</div>';
	
	$(".columnEditie").append(inputAppend);
};

function showInputAccomodatie(){
	
	countAccomodatie ++;
	
	$(".columnAccomodatie").append('<div class="box' + countAccomodatie + '" style="margin-top: 10px;">\
														<div class="row">\
															<div class="col-md-2">\
																<div class="btn minAccomodatie">\
																	<i class="fas fa-minus"></i>\
																</div>\
															</div>\
															<div class="col-md-6">\
																<input type="text" class="form-control" placeholder="Accomodatie">\
															</div>\
															<div class="col-md-4 input-group">\
																<div class="input-group-prepend">\
																	<span class="input-group-text" id="basic-addon3">€</span>\
																</div>\
																<input type="text" class="form-control" placeholder="costs">\
															</div>\
														</div>');
};

function showInputVerhuur(){
	countVerhuur ++;
	$(".columnVerhuur").append('<div class="box' + countVerhuur + '" style="margin-top: 10px;">\
														<div class="row">\
															<div class="col-md-2">\
																<div class="btn minVerhuur">\
																	<i class="fas fa-minus"></i>\
																</div>\
															</div>\
															<div class="col-md-6">\
																<input type="text" class="form-control" placeholder="Verhuur">\
															</div>\
															<div class="col-md-4 input-group">\
																<div class="input-group-prepend">\
																	<span class="input-group-text" id="basic-addon4">€</span>\
																</div>\
																<input type="text" class="form-control" placeholder="costs">\
															</div>\
														</div>');
}
