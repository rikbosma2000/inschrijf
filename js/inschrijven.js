
var extra_inschrijven = []; 

$("div[value='extra_inschrijven[]']").each(function() {
    var value = $(this).val(value);
    if (value) {
        extra_inschrijven.push(value);
    }
});
if (extra_inschrijven.length === 0) {
	console.log('hallo');
}

else {
  document.getElementByClassName("extraInschrijf").style.display = "block";
}