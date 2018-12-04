// JavaScript Document

function showInput() {
	var checkBox = document.getElementsByClassName("inlineCheckbox1");
	var text = document.getElementsByClassName("max_extra");
	for (var i = 0; i < text.length; i++) {
		if (checkBox[i].checked == true) {
			text[i].style.display = "block";
		} else {
			text[i].style.display = "none";
		}
	}
}

function showInput2() {
	var checkBox = document.getElementsByClassName("inlineCheckbox2");
	var text = document.getElementsByClassName("vervoer_zelf");
	for (var i = 0; i < text.length; i++) {
		if (checkBox[i].checked == true) {
			text[i].style.display = "block";
		} else {
			text[i].style.display = "none";
		}
	}
}

function showInput3() {
	var checkBox = document.getElementsByClassName("inlineCheckbox4");
	var text = document.getElementsByClassName("editie");
	for (var i = 0; i < text.length; i++) {
		if (checkBox[i].checked == true) {
			text[i].style.display = "block";
		} else {
			text[i].style.display = "none";
		}
	}
}

function showInput4() {
	var checkBox = document.getElementsByClassName("inlineCheckbox5");
	var text = document.getElementsByClassName("accomodatie");
	for (var i = 0; i < text.length; i++) {
		if (checkBox[i].checked == true) {
			text[i].style.display = "block";
		} else {
			text[i].style.display = "none";
		}
	}
}

function showInput5() {
	var checkBox = document.getElementsByClassName("inlineCheckbox7");
	var text = document.getElementsByClassName("verhuur");
	for (var i = 0; i < text.length; i++) {
		if (checkBox[i].checked == true) {
			text[i].style.display = "block";
		} else {
			text[i].style.display = "none";
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
	
	countAccomodatie ++
	
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
	countVerhuur ++
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
