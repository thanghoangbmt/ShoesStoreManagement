<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Show Details Page</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/all.css">
</head>

<body>
	<div class="container-fluid">

		<div class="container mb-5">
			<div class="row mt-5">
				<div class="col-xs-12 col-sm-12 col-md-12 hidden-xs hidden-sm">
					<ul class="entry-menu">
						<li><a
							href="/product-list?gender=&amp;category=shoes&amp;attribute=">Shoes</a></li>
						<li><a
							href="/product-list/?gender=&amp;category=&amp;attribute=basas">Basas</a></li>

						<li class="active">Basas Black Lace - Low Top</li>
					</ul>
				</div>
			</div>


			<div class="row mt-4">
				<div class="col-12 col-md-7">
					<div class="w-100">
						<img src="images/pro_basas_A61067_1.jpg" alt="" class="w-100">
					</div>

					<div class="w-100"></div>
				</div>

				<div class="col-12 col-md-5 shoe-detail-right">
					<form action="">
						<input type="hidden" id="shoeID" value="123">
						<div class="form-row">
							<div class="col-12">
								<h2 class="font-weight-bolder">Basas Black Lace - Low Top -
									Dark Grey</h2>
							</div>
						</div>

						<div class="form-row mt-4 text-left">
							<div class="col-12 col-md-6">
								<span>Shoe's Code: <strong>A61067</strong></span>
							</div>

							<div class="col-12 col-md-6 text-left text-md-right mt-4 mt-md-0">
								<span>Status: <strong>New Arrival</strong></span>
							</div>
						</div>

						<div class="form-row mt-4">
							<span class="saleprice font-weight-bolder">200.0 $</span>
						</div>

						<div class="col-12 mt-4 divider my-divider"></div>

						<div class="form-row mt-4">
							<h6>A fresh update on the athleisure trend. Modernized with
								ribbon detailing and cleated outsoles.</h6>
						</div>

						<div class="col-12 mt-4 divider my-divider"></div>

						<div class="form-row mt-4">
							<div class="col-12 form-group">
								<label class="my-1 mr-2 font-weight-bold" for="txtColours">COLOURS</label>
								<select class="form-control w-50" id="txtColours"
									name="txtColours">
									<option selected>Choose...</option>
									<option value="1">Red</option>
									<option value="2">Green</option>
									<option value="3">Blue</option>
								</select>
							</div>
						</div>

						<div class="col-12 mt-4 divider my-divider"></div>

						<div class="form-row mt-4">
							<div class="col-12 col-md-6">
								<label class="my-1 mr-2 font-weight-bold" for="txtSize">SIZE</label>
								<select class="form-control" id="txtSize" name="txtSize">
									<option selected>Choose...</option>
									<option value="39">39</option>
									<option value="40">40</option>
									<option value="41">41</option>
								</select>
							</div>

							<div class="col-12 col-md-6">
								<label class="my-1 mr-2 font-weight-bold" for="txtQuantity">QUANTITY</label>
								<input type="number" class="form-control" min="0">
							</div>
						</div>

						<div class="form-row mt-4">
							<div class="col-10">
								<input type="submit" class="btn btn-black w-100"
									value="ADD TO CART">
							</div>

							<div class="col-2">
								<a href="" class="btn btn-black text-orange w-100"> <i
									class="far fa-heart"></i>
								</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<script src="js/myJavaScript.js"></script>
	<script src="js/all.js"></script>
	<script src="js/jquery-3.5.1.min.js"></script>
</body>

</html>