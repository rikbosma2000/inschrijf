<?php
include( 'server.php' );

?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Inschrijf</title>
	<!-- Bootstrap core CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-grid.min.css" rel="stylesheet">
	<link href="css/bootstrap-reboot.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">

	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/solid.css" integrity="sha384-VGP9aw4WtGH/uPAOseYxZ+Vz/vaTb1ehm1bwx92Fm8dTrE+3boLfF1SpAtB1z7HW" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/regular.css" integrity="sha384-ZlNfXjxAqKFWCwMwQFGhmMh3i89dWDnaFU2/VZg9CvsMGA7hXHQsPIqS+JIAmgEq" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/brands.css" integrity="sha384-rf1bqOAj3+pw6NqYrtaE1/4Se2NBwkIfeYbsFdtiR6TQz0acWiwJbv1IM/Nt/ite" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/fontawesome.css" integrity="sha384-1rquJLNOM3ijoueaaeS5m+McXPJCGdr5HcA03/VHXxcp2kX2sUrQDmFc3jR5i/C7" crossorigin="anonymous">
</head>

<body>

	<div class="container">
		<form name="saveForm" method="POST" action="cms.php">

			<h3 class="evenement">Evenementen</h3>

			<div class="row">
				<div class="col-md-11">
					<div class="main-event">
						<div class="evenementen">
							<div class="row" style="margin-bottom: 10px;">
								<div class="col-md-12">
									<input type="text" class="form-control" id="evenement" aria-describedby="evenement" name="evenement" placeholder="Evenement" required>
									<div class="row">
										<div class="col-md-6">
										<h6>Begin Datum:</h6>
										<input id="datum_begin" type="text" class="form-control" name="datum_begin" placeholder="begin datum" required>
										</div>
										<div class="col-md-6">
										<h6>Eind Datum:</h6>
										<input id="datum_eind" type="text" class="form-control" name="datum_eind" placeholder="eind datum" required>
										</div>
									</div>
								</div>
								

								<div class="col-md-6">
									<div class="form-check">
										<input class="form-check-input inlineCheckbox1" type="checkbox" value="Extra mensen" name="check1" onClick="showInput()">
										<label class="form-check-label" for="inlineCheckbox1">Extra mensen</label>
										<div class="max_extra" style="display:none">
											<input type="text" class="form-control" name="text_extra" placeholder="Text extra deelnemers">
											<input type="number" class="form-control" placeholder="max extra deelnemers" name="extra_inschrijven" style="margin-top: 10px">
										</div>
									</div>

									<div class="form-check">
										<input class="form-check-input inlineCheckbox2" type="checkbox" value="Vervoer" onClick="showInput2();" name="check2">
										<label class="form-check-label" for="inlineCheckbox2">Vervoer</label>

										<div class="vervoer_zelf" style="display: none;">
										<input type="text" class="form-control" name="text_vervoer" placeholder="Text vervoer" style="margin-bottom: 10px;">
											<div class="row">
												<div class="col-md-10 columnVervoer">
													<div class="box">
														<div class="row">
															<div class="col-md-2">
																<div class="btn minVervoer">
																	<i class="fas fa-minus"></i>
																</div>
															</div>
															<div class="col-md-6">
																<input type="text" class="form-control vervoer" placeholder="Vervoer zelf" name="vervoer[]" id="vervoer">
															</div>
															<div class="col-md-4 input-group">
																<div class="input-group-prepend">
																	<span class="input-group-text" id="basic-addon1">€</span>
																</div>
																<input type="text" class="form-control" placeholder="costs" name="vervoer_costs[]">
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div class="btn addVervoer">
														<i class="fas fa-plus"></i>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="form-check">
										<input class="form-check-input" type="checkbox" id="inlineCheckbox3" name="check3" value="Vegetarisch">
										<label class="form-check-label" for="inlineCheckbox3">Vegetarisch</label>
									</div>

									<div class="form-check">
										<input class="form-check-input inlineCheckbox4" type="checkbox" name="check4" value="Edities" onClick="showInput3();">
										<label class="form-check-label" for="inlineCheckbox4">Edities</label>

										<div class="editie" style="display: none;">
										<input type="text" class="form-control" name="text_editie" placeholder="Text edities" style="margin-bottom: 10px;">
											<div class="row">
												<div class="col-md-10 columnEditie">
													<div class="box">
														<div class="row">
															<div class="col-md-2">
																<div class="btn minEditie">
																	<i class="fas fa-minus"></i>
																</div>
															</div>
															<div class="col-md-6">
																<input type="text" class="form-control" placeholder="Editie" name="editie[]">
															</div>
															<div class="col-md-4 input-group">
																<div class="input-group-prepend">
																	<span class="input-group-text" id="basic-addon2">€</span>
																</div>
																<input type="text" class="form-control" placeholder="costs" name="editie_costs[]">
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div class="btn addEditie">
														<i class="fas fa-plus"></i>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-check">
										<input class="form-check-input inlineCheckbox5" type="checkbox" value="Accomodatie" name="check5" onClick="showInput4();">
										<label class="form-check-label" for="inlineCheckbox5">Accomodatie</label>

										<div class="accomodatie" style="display: none;">
										<input type="text" class="form-control" name="text_accomodatie" placeholder="Text accomodatie" style="margin-bottom: 10px;">
											<div class="row">
												<div class="col-md-10 columnAccomodatie">
													<div class="box">
														<div class="row">
															<div class="col-md-2">
																<div class="btn minAccomodatie">
																	<i class="fas fa-minus"></i>
																</div>
															</div>
															<div class="col-md-6">
																<input type="text" class="form-control" placeholder="Accomodatie" name="accomodatie[]">
															</div>
															<div class="col-md-4 input-group">
																<div class="input-group-prepend">
																	<span class="input-group-text" id="basic-addon3">€</span>
																</div>
																<input type="text" class="form-control" placeholder="costs" name="accomodatie_costs[]">
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div class="btn addAccomodatie">
														<i class="fas fa-plus"></i>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="form-check">
										<input class="form-check-input" type="checkbox" id="inlineCheckbox6" name="check6" value="Annuleringsverzekering">
										<label class="form-check-label" for="inlineCheckbox6">Annuleringsverzekering</label>
									</div>

									<div class="form-check">
										<input class="form-check-input inlineCheckbox7" type="checkbox" name="check7" value="Verhuur" onClick="showInput5();">
										<label class="form-check-label" for="inlineCheckbox7">Verhuur</label>
										
										<div class="verhuur" style="display: none;">
										<input type="text" class="form-control" name="text_verhuur" placeholder="Text verhuur" style="margin-bottom: 10px;">
											<div class="row">
												<div class="col-md-10 columnVerhuur">
													<div class="box">
														<div class="row">
															<div class="col-md-2">
																<div class="btn minVerhuur">
																	<i class="fas fa-minus"></i>
																</div>
															</div>
															<div class="col-md-6">
																<input type="text" class="form-control" placeholder="Verhuur" name="verhuur[]">
															</div>
															<div class="col-md-4 input-group">
																<div class="input-group-prepend">
																	<span class="input-group-text" id="basic-addon3">€</span>
																</div>
																<input type="text" class="form-control" placeholder="costs" name="verhuur_costs[]">
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div class="btn addVerhuur">
														<i class="fas fa-plus"></i>
													</div>
												</div>
											</div>
										</div>	
									</div>
								</div>
								<div class="col-md-4">
									<h6>Extra</h6>
									<input type="text" class="form-control" id="Prijs" aria-describedby="prijs" placeholder="Prijs" name="prijs" required>
									<input type="number" class="form-control" id="max_deelname" placeholder="Max deelname" style="margin-top: 10px;" name="max_deelnemers" required>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="text-center">
				<button id="saveCms" name="saveCms" class="btn btn-success saveBtn" type="submit">Save</button>
			</div>
		</form>
	</div> <!--end container-->

	<!-- Bootstrap core JavaScript -->
	<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/functions.js"></script>
	<script src="js/cms.js"></script>
</body>
</html>