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
            <form action="" id="all" >
                <div class="row">
                    <div class="col-12 col-md-3">
                        <div class="card row">
                            <div class="card pt-3" >
                                <img class="card-img-top ima" src="img/ava.jpg" alt="Card image cap" style="width: 93%;">
                                <div class="card-body">
                                    <ul>
                                        <li>
                                            <a href="showaccount.jsp " class="a">Edit information and contact</a>
                                        </li>
                                        <li>
                                            <a href="changepass.jsp" class="a">Change the password</a>
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
                                        <label for="inputFN">Email </label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <label for="inputFN">anhvktde130008@fpt.edu.vn</label>
                                    </div>
                                </div>

                                <!--  -->
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                        <label for="inputFN">Full Name </label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <label for="inputFN">Võ Khôi Tuấn Anh</label>
                                    </div>
                                </div>

                                <!--  -->
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                        <label for="inputFN">Adress </label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <label for="inputFN">143 Thanh Thuy, Da Nang</label>
                                    </div>
                                </div>

                                <!--  -->
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                        <label for="inputFN">Phone Number</label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <label for="inputFN">0914154444</label>
                                    </div>
                                </div>

                                <!--  -->
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                        <label for="inputFN">Status </label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <label for="inputFN">Actice</label>
                                    </div>
                                </div>

                                <!--  -->
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                        <label for="inputFN">Description Role </label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <label for="inputFN">Customer</label>
                                    </div>
                                </div>
                                 
                               <div class="btn_ta">
                                <a href="editaccount.jsp" class="btn btn-primary stretched-link btn-success">edit acc</a>
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