<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cms";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {	
	printf('Wegens uitgelopen onderhoudswerkzaamheden is de database tijdelijk onbereikbaar. Hierdoor werkt inschrijfadministratie op dit moment niet. Onze excuses voor dit ongemak, wij doen ons best om je zo snel mogelijk weer van dienst te kunnen zijn');
    exit();
}

$conn->set_charset("utf8");
setlocale(LC_MONETARY, 'nl_NL@euro');
?>