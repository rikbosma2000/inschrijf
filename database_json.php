<?php
	$databaseFile = file_get_contents('json_files/database.json'); // get content of file.
	$databaseJson = json_decode($databaseFile, true); //decode the file.
	$database = $databaseJson['data']; // database data we need.
?>