<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Account Page</title>

<link rel="stylesheet" href="css/all.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/login.css">
<script src="js/jquery-3.5.1.min.js"></script>
</head>
<body>
	<div id="logreg-forms">
		<form action="ResetPasswordController" class="form-reset" id="formReset" method="POST">
			<input type="email" id="resetEmail" class="form-control" placeholder="Email address">
			<button class="btn btn-primary btn-block" type="submit">Reset Password</button>
			<a href="login.jsp" id="cancel_reset"><i class="fas fa-angle-left"></i> Back</a>
		</form>
	</div>
	
	<script src="js/all.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>