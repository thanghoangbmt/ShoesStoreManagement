<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Register Page</title>

        <link rel="stylesheet" href="css/all.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/register.css">
        <link rel="stylesheet" href="css/style.css">

    </head>

    <body>
        <div class="container">
            <div class="mt-5">
                <form class="form-horizontal" role="form">
                    <h1 class="text-center h3 font-weight-normal">Register Form</h1>
                    <input type="text" id="email" placeholder="Email" class="form-control" autofocus>
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-4">
                                <label for="password" class="form-group">Password (<span>*</span>)
						</label>
                            </div>
                            <div class="col-sm-8">
                                <input type="password" id="password" placeholder="Password" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-4">
                                <label for="password" class="form-group">Confirm Password(<span>*</span>)
						</label>
                            </div>
                            <div class="col-sm-8">
                                <input type="password" id="password" placeholder="Confirm  Password" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-4">
                                <label for="firstName" class="form-group">Phone Number (<span>*</span>)
						</label>
                            </div>
                            <div class="col-sm-8">
                                <input type="text" id="phone" placeholder="Phone Number" class="form-control" autofocus>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-4">
                                <label for="firstName" class="form-group">Full Name (<span>*</span>)
						</label>
                            </div>
                            <div class="col-sm-8">
                                <input type="text" id="fullName" placeholder="Full Name" class="form-control" autofocus>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-4">
                                <label for="firstName" class="form-group">Address (<span>*</span>)
						</label>
                            </div>
                            <div class="col-sm-8">
                                <textarea type="text" id="address" placeholder="Address" class="form-control" autofocus cols="20" rows="3"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <div class="checkbox">
                                <label> <input type="checkbox">I accept the <a
							href="#">terms</a> of User & Privacy Policy
						</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12 ">
                            <button type="submit" class="btn btn-success btn-block">Sign
						Up</button>
                        </div>
                    </div>
                    <div class="dotted"></div>
                    <h2 class="text-center">Login With</h2>
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-6 form-group to">
                                <button class="btn facebook-btn social-btn" type="button" class="form-control">Sign in with Facebook</button>
                            </div>
                            <div class="col-sm-6 form-group">
                                <button class="btn google-btn social-btn" type="button" class="form-control">Sign in with Google+</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </body>
    <script src="js/all.js"></script>
    <script src="js/jquery-3.5.1.min.js"></script>

    </html>