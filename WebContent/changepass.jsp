<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <!--  -->
    <link rel="stylesheet" href="css/anhvkt.style.css">

    <!--  -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/all.css">

    <!--  -->
    <link rel="stylesheet" href="js/all.js">
    <link rel="stylesheet" href="js/bootstrap.min.js">


</head>
<body>

    <div class="container-fluid">
        <h2 class="card-title text-center">Account</h2>
        <div class="container">
            <form action="" id="all">
                <div class="row">
                    <div class="col-12 col-md-3">
                        <div class="card row">
                            <div class="card pt-3" >
                                <img class="card-img-top ima" src="img/ava.jpg" alt="Card image cap" style="width: 93%;">
                                <div class="card-body">
                                    <ul>
                                        <li>
                                            <a href="ShowAccount.html" class="a">Edit information and contact</a>
                                        </li>
                                        <li>
                                            <a href="ChangePassword.html" class="a">Change the password</a>
                                        </li>
                                    </ul>
 
                                </div>
                              </div>

                        </div>
                    </div>
                    <div class="col-12 col-md-9">
                        <div class="card p-3">
                            <div class="card-item">   


                                <!--  -->
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                        <label for="inputFN">Old Password 
                                            <div class="hoathi">*</div>
                                        </label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <input type="text" class="form-control" name="cvv" id="cvv" >
                                    </div>
                                </div>
                                <!--  -->
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                        <label for="inputFN">New Password 
                                            <div class="hoathi">*</div>
                                        </label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <input type="text" class="form-control" name="cvv" id="cvv" >
                                    </div>
                                </div>

                                <!--  -->
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                        <label for="inputFN">Confirm password 
                                            <div class="hoathi">*</div>
                                        </label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <input type="text" class="form-control" name="cvv" id="cvv" >
                                    </div>
                                </div>

                                <div class="btn_ta">
                                    <a href="" class="btn btn-primary mr-3 btn-success" >Change</a>
                                    <a href="showaccount.jsp" class="btn btn-primary bg-danger">Cancel</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>          
        </div>
    </div>
</body>
</html>