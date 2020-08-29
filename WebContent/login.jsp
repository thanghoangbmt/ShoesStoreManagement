<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="css/all.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Login Page</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body>
	<div id="logreg-forms">
		<form action="LoginController" class="form-signin" method="POST">
			<h1 class="h3 mb-3 font-weight-normal" style="text-align: center">Sign
				in</h1>
			<div class="social-login">

				<c:url var="facebookLoginLink"
					value="https://www.facebook.com/dialog/oauth">
					<c:param name="scope" value="email"></c:param>
					<c:param name="redirect_uri"
						value="http://localhost:8080/ShoesStoreManagement/FacebookLoginController"></c:param>
					<c:param name="client_id" value="798224377662570"></c:param>
				</c:url>
				<a class="btn facebook-btn social-btn d-inline-block" href="${facebookLoginLink}">
					<span><i class="fab fa-facebook-f"></i> Sign in with
						Facebook</span>
				</a>

				<c:url var="googleLoginLink"
					value="https://accounts.google.com/o/oauth2/auth">
					<c:param name="scope" value="email profile"></c:param>
					<c:param name="redirect_uri"
						value="http://localhost:8080/ShoesStoreManagement/GoogleLoginController"></c:param>
					<c:param name="response_type" value="code"></c:param>
					<c:param name="client_id"
						value="636020098503-in0rvu06sde1bcicvbvh4s5m12rv7slt.apps.googleusercontent.com"></c:param>
					<c:param name="approval_prompt" value="force"></c:param>
				</c:url>
				<a class="btn google-btn social-btn d-inline-block"
					href="${googleLoginLink}"><span><i
						class="fab fa-google-plus-g"></i> Sign in with Google+</span> </a>
			</div>
			<p style="text-align: center">OR</p>
			<input type="email" id="inputEmail" class="form-control"
				placeholder="Email address" name="txtEmail"> <input
				type="password" id="inputPassword" class="form-control"
				placeholder="Password" name="txtPassword"> <input
				type="submit" id="inputPassword"
				class="btn btn-success btn-block mt-2" name="action" value="Sign In">


			<a href="#" id="forgot_pswd" class="pt-2">Forgot password?</a>
			<hr>
			<!-- <p>Don't have an account!</p>  -->
			<a class="btn btn-primary btn-block text-white" id="btn-signup" href="register.jsp"><i
				class="fas fa-user-plus"></i> Sign up New Account</a>
		</form>
		<br>

	</div>
	<script src="js/all.js"></script>
	<script src="js/jquery-3.5.1.min.js"></script>
</body>
</html>