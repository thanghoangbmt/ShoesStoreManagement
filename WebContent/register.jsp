<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register Page</title>

<link rel="stylesheet" href="css/all.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/login.css">
<script src="js/jquery-3.5.1.min.js"></script>
</head>

<body>
	<div id="logreg-forms">

		<form action="#" class="form-signup">
			<h1 class="h3 mb-3 font-weight-normal" style="text-align: center">Sign
				Up</h1>
			<div class="social-login">
				<c:url var="facebookLoginLink"
					value="https://www.facebook.com/dialog/oauth">
					<c:param name="scope" value="email"></c:param>
					<c:param name="redirect_uri"
						value="http://localhost:8080/ShoesStoreManagement/FacebookLoginController"></c:param>
					<c:param name="client_id" value="798224377662570"></c:param>
				</c:url>
				<a class="btn facebook-btn social-btn d-inline-block"
					href="${facebookLoginLink}"> <span><i
						class="fab fa-facebook-f"></i> Sign in with Facebook</span>
				</a>
			</div>
			<div class="social-login">
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
					href="${googleLoginLink}"> <span><i
						class="fab fa-google-plus-g"></i> Sign in with Google+</span>
				</a>
			</div>

			<p style="text-align: center">OR</p>

			<input type="text" id="txtFullname" class="form-control"
				placeholder="Full name" name="txtFullname"> <input
				type="email" id="txtEmail" class="form-control"
				placeholder="Email address" name="txtEmail"> <input
				type="text" id="txtPhoneNumber" class="form-control"
				placeholder="Phone number" name="txtPhoneNumber"> <input
				type="password" id="txtPassword" class="form-control"
				placeholder="Password" name="txtPassword"> <input
				type="password" id="txtConfirmPassword" class="form-control"
				placeholder="Confirm Password" name="txtConfirmPassword"> <input
				type="text" id="txtAddress" class="form-control"
				placeholder="Address" name="txtAddress">


			<button class="btn btn-primary btn-block" type="button"
				id="btnSignUp">
				<i class="fas fa-user-plus"></i> Sign Up
			</button>
			<a href="login.jsp" id="cancel_signup"><i
				class="fas fa-angle-left"></i> Back</a>
		</form>

		<div class="modal fade" id="errorModal" tabindex="-1" role="dialog"
			aria-labelledby="errorModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title text-danger" id="errorModalLabel">Error!</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<p id="errorMessage"></p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="js/all.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script>
		var btnSignUp = document.getElementById("btnSignUp");
		btnSignUp
				.addEventListener(
						"click",
						function(event) {
							event.preventDefault();
							btnSignUp.removeAttribute("data-target");
							btnSignUp.removeAttribute("data-toggle");
							var txtFullname = document
									.getElementById("txtFullname").value.trim();
							var txtEmail = document.getElementById("txtEmail").value
									.trim();
							var txtPhoneNumber = document
									.getElementById("txtPhoneNumber").value
									.trim();
							var txtPassword = document
									.getElementById("txtPassword").value;
							var txtConfirmPassword = document
									.getElementById("txtConfirmPasswords").value;
							var txtAddress = document
									.getElementById("txtAddress").value.trim();

							if (txtFullname === "") {
								btnSignUp.setAttribute("data-target",
										"#errorModal");
								btnSignUp.setAttribute("data-toggle", "modal");
								var errorMessage = document
										.getElementById("errorMessage");
								errorMessage.innerHTML = "Please enter Fullname!";
								return;
							}

							if (txtEmail === "") {
								btnSignUp.setAttribute("data-target",
										"#errorModal");
								btnSignUp.setAttribute("data-toggle", "modal");
								var errorMessage = document
										.getElementById("errorMessage");
								errorMessage.innerHTML = "Please enter Email!";
								return;
							}

							if (!isValidEmail(txtEmail)) {
								btnSignUp.setAttribute("data-target",
										"#errorModal");
								btnSignUp.setAttribute("data-toggle", "modal");
								var errorMessage = document
										.getElementById("errorMessage");
								errorMessage.innerHTML = "Invalid Email format!";
								return;
							}

							if (txtPhoneNumber === "") {
								btnSignUp.setAttribute("data-target",
										"#errorModal");
								btnSignUp.setAttribute("data-toggle", "modal");
								var errorMessage = document
										.getElementById("errorMessage");
								errorMessage.innerHTML = "Please enter Phone Number!";
								return;
							}

							if (!isValidPhoneNumber(txtPhoneNumber)) {
								btnSignUp.setAttribute("data-target",
										"#errorModal");
								btnSignUp.setAttribute("data-toggle", "modal");
								var errorMessage = document
										.getElementById("errorMessage");
								errorMessage.innerHTML = "Invalid Phone Number format!";
								return;
							}

							if (txtPassword === "") {
								btnSignUp.setAttribute("data-target",
										"#errorModal");
								btnSignUp.setAttribute("data-toggle", "modal");
								var errorMessage = document
										.getElementById("errorMessage");
								errorMessage.innerHTML = "Please enter Password!";
								return;
							}

							if (txtConfirmPassword === "") {
								btnSignUp.setAttribute("data-target",
										"#errorModal");
								btnSignUp.setAttribute("data-toggle", "modal");
								var errorMessage = document
										.getElementById("errorMessage");
								errorMessage.innerHTML = "Please enter Confirm Password!";
								return;
							}

							if (!(txtPassword === txtConfirmPassword)) {
								btnSignUp.setAttribute("data-target",
										"#errorModal");
								btnSignUp.setAttribute("data-toggle", "modal");
								var errorMessage = document
										.getElementById("errorMessage");
								errorMessage.innerHTML = "Password and Confirm Password do not match!";
								return;
							}

							if (txtAddress === "") {
								btnSignUp.setAttribute("data-target",
										"#errorModal");
								btnSignUp.setAttribute("data-toggle", "modal");
								var errorMessage = document
										.getElementById("errorMessage");
								errorMessage.innerHTML = "Please enter Address!";
								return;
							}

							var formSignUp = document
									.getElementById("formSignUp");
							var input = document.createElement("input");
							input.type = "hidden";
							input.name = "action";
							input.value = "Sign Up";
							formSignUp.appendChild(input);
							formSignUp.submit();
						});

		function isValidEmail(str) {
			var result = false;
			const patt = /^[a-z][a-z0-9_\.]{5,32}@[a-z0-9]{2,}(\.[a-z0-9]{2,4}){1,2}$/gm;
			if (patt.test(str)) {
				return true;
			}
			return result;
		}

		function isValidPhoneNumber(str) {
			var result = false;
			const patt = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
			if (patt.test(str)) {
				return true;
			}
			return result;
		}
	</script>
</body>


</html>