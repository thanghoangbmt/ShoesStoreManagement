<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/all.css">
<link rel="shortcut icon" type="image/png" href="images/SHOES_store.png">
<script src="js/jquery-3.5.1.min.js"></script>
</head>
<body>
	<div class="wapper">
		<div class="collapse-menu-button">
			<button type="button" id="sidebarCollapse" class="btn">
				<i class="fas fa-align-left"></i>
			</button>
		</div>
		<!-- Sidebar  -->
		<div class="row">
			<div class="col-md-3 pr-md-0">
				<nav id="sidebar" class="">
					<div class="sidebar-header w-100">
						<div class="logo w-25">
							<a href="#"><img src="images/Logo_Ananas_Header.png"
								alt="Logo" class="w-100"></a>
						</div>
					</div>

					<ul class="list-unstyled components">
						<li class="active"><a href="#"><i class="fas fa-home"></i><span
								class="ml-2">Home</span></a></li>
						<li><a href="#"><i class="fas fa-shopping-cart"></i><span
								class="ml-2">Cart</span></a></li>
						<li><a href="#"><i class="fab fa-sellsy"></i><span
								class="ml-2">Best Seller</span></a></li>
						<li><a href="#subCategory" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle"><i
								class="fas fa-tint"></i><span class="ml-2">Categories</span></a>
							<ul class="collapse list-unstyled" id="subCategory">
								<li><a href="#">Category 1</a></li>
								<li><a href="#">Category 2</a></li>
								<li><a href="#">Category 3</a></li>
							</ul></li>
						<li><a href="#"><i class="fas fa-heart"></i><span
								class="ml-2">Favorite List</span></a></li>
						<li><a href="#"><i class="fas fa-sign-in-alt"></i><span
								class="ml-2">Login</span></a></li>

					</ul>
				</nav>
			</div>

			<div class="col-md-9 pl-md-0">
				<!-- Page Content  -->
				<div id="content" class="pl-md-0">
					<form action="">
						<div class="d-flex justify-content-end h-100">
							<div class="searchbar">
								<input class="search_input" type="text" name="txtSearch"
									placeholder="Search..."> <a href="#"
									class="search_icon"><i class="fas fa-search"></i></a>
							</div>
						</div>
					</form>

					<div class="row mt-4">
						<div class="col-12">
							<img src="images/desktop_productlist.jpg" alt=""
								class="col-12 col-md-11 ml-md-4">
						</div>

						<div class="col-6 col-md-4 mt-4">
							<div class="card">
								<img class="card-img-top" src="images/pro_basas_A61067_1.jpg"
									alt="Card image cap">
								<div class="card-body">
									<a href="" class="text-decoration-none text-reset text-center">
										<h5 class="card-title">Basas Black Lace - Low Top</h5>
									</a>
									<p class="card-text text-center">Black</p>
									<p class="card-text text-center font-weight-bold">450$</p>
									<a href="#"
										class="btn btn-orange d-flex justify-content-center">Add
										To Cart<i class="fas fa-cart-plus mt-1 ml-2"></i>
									</a> <a href="#"
										class="btn btn-favorite d-flex justify-content-center mt-2">Add
										To Favorite<i class="fas fa-heart mt-1 ml-2"></i>
									</a>
								</div>
							</div>
						</div>

						<div class="col-6 col-md-4 mt-4">
							<div class="card">
								<img class="card-img-top" src="images/pro_basas_A61067_1.jpg"
									alt="Card image cap">
								<div class="card-body">
									<a href="" class="text-decoration-none text-reset text-center">
										<h5 class="card-title">Basas Black Lace - Low Top</h5>
									</a>
									<p class="card-text text-center">Black</p>
									<p class="card-text text-center font-weight-bold">450$</p>
									<a href="#"
										class="btn btn-orange d-flex justify-content-center">Add
										To Cart<i class="fas fa-cart-plus mt-1 ml-2"></i>
									</a> <a href="#"
										class="btn btn-favorite d-flex justify-content-center mt-2">Add
										To Favorite<i class="fas fa-heart mt-1 ml-2"></i>
									</a>
								</div>
							</div>
						</div>

						<div class="col-6 col-md-4 mt-4">
							<div class="card">
								<img class="card-img-top" src="images/pro_basas_A61067_1.jpg"
									alt="Card image cap">
								<div class="card-body">
									<a href="" class="text-decoration-none text-reset text-center">
										<h5 class="card-title">Basas Black Lace - Low Top</h5>
									</a>
									<p class="card-text text-center">Black</p>
									<p class="card-text text-center font-weight-bold">450$</p>
									<a href="#"
										class="btn btn-orange d-flex justify-content-center">Add
										To Cart<i class="fas fa-cart-plus mt-1 ml-2"></i>
									</a> <a href="#"
										class="btn btn-favorite d-flex justify-content-center mt-2">Add
										To Favorite<i class="fas fa-heart mt-1 ml-2"></i>
									</a>
								</div>
							</div>
						</div>

						<div class="col-6 col-md-4 mt-4">
							<div class="card">
								<img class="card-img-top" src="images/pro_basas_A61067_1.jpg"
									alt="Card image cap">
								<div class="card-body">
									<a href="" class="text-decoration-none text-reset text-center">
										<h5 class="card-title">Basas Black Lace - Low Top</h5>
									</a>
									<p class="card-text text-center">Black</p>
									<p class="card-text text-center font-weight-bold">450$</p>
									<a href="#"
										class="btn btn-orange d-flex justify-content-center">Add
										To Cart<i class="fas fa-cart-plus mt-1 ml-2"></i>
									</a> <a href="#"
										class="btn btn-favorite d-flex justify-content-center mt-2">Add
										To Favorite<i class="fas fa-heart mt-1 ml-2"></i>
									</a>
								</div>
							</div>
						</div>

						<div class="col-6 col-md-4 mt-4">
							<div class="card">
								<img class="card-img-top" src="images/pro_basas_A61067_1.jpg"
									alt="Card image cap">
								<div class="card-body">
									<a href="" class="text-decoration-none text-reset text-center">
										<h5 class="card-title">Basas Black Lace - Low Top</h5>
									</a>
									<p class="card-text text-center">Black</p>
									<p class="card-text text-center font-weight-bold">450$</p>
									<a href="#"
										class="btn btn-orange d-flex justify-content-center">Add
										To Cart<i class="fas fa-cart-plus mt-1 ml-2"></i>
									</a> <a href="#"
										class="btn btn-favorite d-flex justify-content-center mt-2">Add
										To Favorite<i class="fas fa-heart mt-1 ml-2"></i>
									</a>
								</div>
							</div>
						</div>

						<div class="col-6 col-md-4 mt-4">
							<div class="card">
								<img class="card-img-top" src="images/pro_basas_A61067_1.jpg"
									alt="Card image cap">
								<div class="card-body">
									<a href="" class="text-decoration-none text-reset text-center">
										<h5 class="card-title">Basas Black Lace - Low Top</h5>
									</a>
									<p class="card-text text-center">Black</p>
									<p class="card-text text-center font-weight-bold">450$</p>
									<a href="#"
										class="btn btn-orange d-flex justify-content-center">Add
										To Cart<i class="fas fa-cart-plus mt-1 ml-2"></i>
									</a> <a href="#"
										class="btn btn-favorite d-flex justify-content-center mt-2">Add
										To Favorite<i class="fas fa-heart mt-1 ml-2"></i>
									</a>
								</div>
							</div>
						</div>

						<div class="col-6 col-md-4 mt-4">
							<div class="card">
								<img class="card-img-top" src="images/pro_basas_A61067_1.jpg"
									alt="Card image cap">
								<div class="card-body">
									<a href="" class="text-decoration-none text-reset text-center">
										<h5 class="card-title">Basas Black Lace - Low Top</h5>
									</a>
									<p class="card-text text-center">Black</p>
									<p class="card-text text-center font-weight-bold">450$</p>
									<a href="#"
										class="btn btn-orange d-flex justify-content-center">Add
										To Cart<i class="fas fa-cart-plus mt-1 ml-2"></i>
									</a> <a href="#"
										class="btn btn-favorite d-flex justify-content-center mt-2">Add
										To Favorite<i class="fas fa-heart mt-1 ml-2"></i>
									</a>
								</div>
							</div>
						</div>

						<div class="col-6 col-md-4 mt-4">
							<div class="card">
								<img class="card-img-top" src="images/pro_basas_A61067_1.jpg"
									alt="Card image cap">
								<div class="card-body">
									<a href="" class="text-decoration-none text-reset text-center">
										<h5 class="card-title">Basas Black Lace - Low Top</h5>
									</a>
									<p class="card-text text-center">Black</p>
									<p class="card-text text-center font-weight-bold">450$</p>
									<a href="#"
										class="btn btn-orange d-flex justify-content-center">Add
										To Cart<i class="fas fa-cart-plus mt-1 ml-2"></i>
									</a> <a href="#"
										class="btn btn-favorite d-flex justify-content-center mt-2">Add
										To Favorite<i class="fas fa-heart mt-1 ml-2"></i>
									</a>
								</div>
							</div>
						</div>

						<div class="col-6 col-md-4 mt-4">
							<div class="card">
								<img class="card-img-top" src="images/pro_basas_A61067_1.jpg"
									alt="Card image cap">
								<div class="card-body">
									<a href="" class="text-decoration-none text-reset text-center">
										<h5 class="card-title">Basas Black Lace - Low Top</h5>
									</a>
									<p class="card-text text-center">Black</p>
									<p class="card-text text-center font-weight-bold">450$</p>
									<a href="#"
										class="btn btn-orange d-flex justify-content-center">Add
										To Cart<i class="fas fa-cart-plus mt-1 ml-2"></i>
									</a> <a href="#"
										class="btn btn-favorite d-flex justify-content-center mt-2">Add
										To Favorite<i class="fas fa-heart mt-1 ml-2"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript ">
        $(document).ready(function() {
            $('#sidebarCollapse').on('click', function() {
                $('#sidebar').toggleClass('active');
                $('#sidebarCollapse').toggleClass('sidebarCollapseClicked');
            });
        });
    </script>
	<script src="js/myJavaScript.js "></script>
	<script src="js/all.js "></script>
	<script src="js/bootstrap.bundle.js "></script>
</body>
</html>