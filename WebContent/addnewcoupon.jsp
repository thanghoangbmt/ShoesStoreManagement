<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Coupon Management</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/tuananh.addcoupon.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/all.css">
</head>

<body>
    <div class="container-fluid">
        <h2 class="card-title text-center">Add New Coupon</h2>
        <div class="container">
            <form action="">
                <div class="row text-center">
                    <div class="col-12 col-md-6 cus01">
                        <div class="row cus02">
                            <div class="col-12">
                                <div class="form-group">
                                    <input type="text" placeholder="New Coupon Code" class="form-control">
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="form-group">
                                    <input type="text" placeholder="Description" class="form-control">
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="form-group">
                                    <input type="text" placeholder="31/12/2020" class="form-control">
                                </div>
                            </div>

                           <div class="col-12">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-group">
                                            <input type="text" placeholder="Discount" class="form-control">
                                        </div>
                                    </div>

                                    <div class="col-6">
                                        <form action="/action_page.php">                                           
                                            <input type="radio" id="male" name="gender" value="male">
                                            <label for="Percent">Percent</label>
                                            <input type="radio" id="female" name="gender" value="female">
                                            <label for="Dollar">Dollar</label>
                                          </form>
                                    </div>
                                </div>
                            </div>


                            <div class="col-12">
                                <div class="input-group mb-3">
                                    <select class="custom-select" id="inputGroupSelect01">
                                        <option selected>Choose Customer...</option>
                                        <option value="1">Admin</option>
                                        <option value="2">Customer</option>
                                        <option value="3">Staff</option>
                                        <option value="3">All</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-group">
                                            <button class="col-12 btn btn-success font-weight-bold">
                                                Register Now
                                            </button>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-group">
                                            <button class="col-12 btn bg-danger font-weight-bold">
                                                Cancel
                                            </button>
                                        </div>
                                    </div>
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