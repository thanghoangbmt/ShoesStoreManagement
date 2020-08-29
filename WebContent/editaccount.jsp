<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <h2 class="card-title text-center">Edit Account Information</h2>

        <div class="container" >
            <form action="" id="all" >
                <div class="row">
                    <!-- ảnh, menu -->
                    <div class="col-12 col-md-3">
                        <div class="card row">
                            <div class="card pt-3" >
                                <img class="card-img-top ima" src="img/ava.jpg" alt="Card image cap" style="width: 93%;">
                                <div class="card-body">
                                    <form action='' method="POST" enctype="multipart/form-data"> 
                                        <div class='form-group'> 
                                            <input class='form-control' type="file" name="fileToUpload" id="fileToUpload"> 
                                                                 
                                        </div> 
                                                                 
                                        <div class='form-group'> 
                                            <button class='btn btn-warning btn-lg' name='upload_event_image'><span class='glyphicon glyphicon-upload'> </span> Upload </button> 
                                        </div> 
                                    </form> 
                                </div>
                            </div>

                        </div>
                    </div>
                    
                    <!-- thông tin cá nhân -->
                    <div class="col-12 col-sm-12 col-ld-9 col-md-8 col-lg-8">
                        <div class="card p-3">
                            <div class="card-item">   
                                <!--  -->
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                        <label for="inputFN">
                                            Email 
                                        </label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <label for="inputFN">anhvktde130008@fpt.edu.vn</label>
                                    </div>
                                </div>

                                <!--  -->
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                        <label for="inputFN">Full Name
                                            <div class="hoathi">*</div>
                                        </label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <input type="text" class="form-control" name="cvv" id="FullName" placeholder="Võ Khôi Tuấn Anh">
                                        <p id="messageErrorFullname" style="color:red; padding-left: 50%;"></p>
                                    </div>
                                </div>

                                <!--  -->
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                        <label for="inputFN">Adress
                                            <div class="hoathi">*</div>
                                        </label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <input type="text" class="form-control" name="cvv" id="Adress" placeholder="143 Thanh Thuy, Da Nang">
                                        <p id="messageErrorAdress" style="color:red; padding-left: 50%;"></p>
                                    </div>
                                </div>

                                <!--  -->
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                        <label for="inputFN">Phone Number
                                            <div class="hoathi">*</div>
                                        </label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <input type="text" class="form-control" name="cvv" id="Phone" placeholder="0914154444">
                                        <p id="messageErrorPhone" style="color:red; padding-left: 50%;"></p>
                                    </div>
                                </div>

                                <!--  -->
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                        <label for="inputFN">Status</label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <label for="inputFN">Actice</label>
                                    </div>
                                </div>

                                <!--  -->
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                        <label for="inputFN">Description Role</label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <label for="inputFN">Customer</label>
                                    </div>
                                </div>

                                <div class="btn_ta">
                                    <a href="" class="btn btn-primary mr-3 btn-success" >Save</a>
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