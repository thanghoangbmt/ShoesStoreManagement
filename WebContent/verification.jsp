<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Verification Page</title>

<link rel="stylesheet" href="css/all.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/login.css">
<script src="js/jquery-3.5.1.min.js"></script>
</head>
<body>
	<div id="logreg-forms">
		<form action="MainController" class="form-reset" id="formVerification" method="POST">
			<input type="text" id="txtVerificationCode" name="txtVerificationCode" class="form-control" placeholder="Verification Code">
			<button class="btn btn-primary btn-block mt-2" id="btnVerify" type="button">Verify</button>
			<a href="home.jsp" id="cancel_reset"><i class="fas fa-angle-left"></i> Back to Home</a>
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
		var btnVerify = document.getElementById("btnVerify");
		btnVerify.addEventListener("click", function(event) {
			event.preventDefault();
			btnVerify.removeAttribute("data-target");
			btnVerify.removeAttribute("data-toggle");
			var txtVerificationCode = document.getElementById("txtVerificationCode").value.trim();
			if (txtVerificationCode === "") {
				btnVerify.setAttribute("data-target", "#errorModal");
				btnVerify.setAttribute("data-toggle", "modal");
				var errorMessage = document.getElementById("errorMessage");
				errorMessage.innerHTML = "Please enter Verification Code!";
				return;
			}
			
			var formSignIn = document.getElementById("formVerification");
			var input = document.createElement("input");
			input.type = "hidden";
			input.name = "action";
			input.value = "Verify";
			formSignIn.appendChild(input);
			formSignIn.submit();
		});
		
		
	</script>
</body>
</html>