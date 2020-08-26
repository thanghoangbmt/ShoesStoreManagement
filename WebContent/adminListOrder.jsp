<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin List Order</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/all.css">
</head>
<body>
	<div class="container">
		<h2 class="text-center mt-4 mb-5 font-weight-bolder">List Order</h2>
		<form action="MainController">
			<div class="form-group">
				<input type="date" class="" id="txtSearchByDate"> <input
					type="submit" class="btn btn-primary" value="Search Order">
			</div>
		</form>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">NO</th>
					<th scope="col">Email</th>
					<th scope="col">Date</th>
					<th scope="col">Total</th>
					<th scope="col">Status</th>
					<th scope="col">View Detail</th>
					<th scope="col">Accept/Reject</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>thanghoangbmt@gmail.com</td>
					<td>23/08/2020</td>
					<td>200$</td>
					<td>Thắng</td>
					<td><a href="#" class="btn btn-info">View details</a></td>
					<td>
						<form action="MainController">
							<input type="submit" class="btn btn-success" name="btnAction" value="Accept"> 
								<input type="submit"
								class="btn btn-danger" name="btnAction" value="Reject">
							<input type="hidden" name="txtEmail" value="">
						</form>
					</td>
				</tr>

				<tr>
					<th scope="row">2</th>
					<td>thanghoangbmt@gmail.com</td>
					<td>20/08/2020</td>
					<td>200$</td>
					<td>Rejected</td>
					<td><a href="#" class="btn btn-info">View details</a></td>
					<td></td>
				</tr>

				<tr>
					<th scope="row">3</th>
					<td>thanghoangbmt@gmail.com</td>
					<td>15/08/2020</td>
					<td>200$</td>
					<td>Accepted</td>
					<td><a href="#" class="btn btn-info">View details</a></td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</div>


	<script src="js/myJavaScript.js"></script>
	<script src="js/all.js"></script>
	<script src="js/jquery-3.5.1.min.js"></script>
</body>
</html>