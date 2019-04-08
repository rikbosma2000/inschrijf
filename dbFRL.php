<?php

//cms
$servername = "db.frieslandbeweegt.frl";
$username = "md345291db466876";
$password = "ENV1Utgl9IPAIY96MvbZ";
$dbname = "md345291db466876";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {	
	printf('Wegens uitgelopen onderhoudswerkzaamheden is de database tijdelijk onbereikbaar. Hierdoor werkt inschrijfadministratie op dit moment niet. Onze excuses voor dit ongemak, wij doen ons best om je zo snel mogelijk weer van dienst te kunnen zijn');
    exit();
}

$conn->set_charset("utf8");
setlocale(LC_MONETARY, 'nl_NL@euro');

//
$servername_evenementen = "db.frieslandbeweegt.frl";
$username_evenementen = "md345291db466896";
$password_evenementen = "ENV1Utgl9IPAIY96MvbZ";
$dbname_evenementen = "md345291db466896";

$conn_evenementen = new mysqli($servername_evenementen, $username_evenementen, $password_evenementen, $dbname_evenementen);
if ($conn_evenementen->connect_error) {
    printf('Wegens uitgelopen onderhoudswerkzaamheden is de database tijdelijk onbereikbaar. Hierdoor werkt inschrijfadministratie op dit moment niet. Onze excuses voor dit ongemak, wij doen ons best om je zo snel mogelijk weer van dienst te kunnen zijn');
    exit();
}

$conn_evenementen->set_charset("utf8");
?>