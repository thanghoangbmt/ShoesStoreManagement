<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/all.css">
    <link rel="stylesheet" href="css/thanh.css">
    <title>Payment</title>
</head>

<body>
    <div class="main-cart container-fluid thanh">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-7 col-lg-7 main-cart-left">
                <div class="row">
                    <form action="" class="orderForm">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 title-1-1-thanh">
                            CUSTOMER INFORMATION
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10 form-group">
                            <div class="has-feedback">
                                <input type="text" class="form-control" placeholder="Full Name" name="">
                                <span></span>
                                <!--Lỗi hiễn ở đây-->
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10 form-group">
                            <div class="has-feedback">
                                <input type="text" class="form-control" placeholder="Phone Number" name="">
                                <span></span>
                                <!--Lỗi hiễn ở đây-->
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10 form-group">
                            <div class="has-feedback">
                                <input type="text" class="form-control" placeholder="Email" name="">
                                <span></span>
                                <!--Lỗi hiễn ở đây-->
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10 form-group">
                            <div class="has-feedback">
                                <input type="text" class="form-control" placeholder="Address" name="">
                                <span></span>
                                <!--Lỗi hiễn ở đây-->
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10 form-group location">

                            <select name="" id="" class="form-control">
                                <option value="0">City</option>
                                <option value="43">Da Nang</option>
                            </select>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10 form-group location">

                            <select name="" id="" class="form-control">
                                <option value="0">District</option>
                                <option value="43">Cam Le</option>
                            </select>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 title-1-1-thanh">DELIVERY METHODS</div>
                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 form-group">
                            <div class="ck1">
                                <input type="radio" name="" id="" checked>
                                Standard speed (from 2 - 5 day working)
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 form-group title-right normal-fee">
                            0 VND
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 title-1-1-thanh">
                            PAYMENTS METHODS
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 form-group">
                            <div class="ck1">
                                <input type="radio" name="" id="" checked>
                                Direct Payment On Delivery&nbsp; &nbsp;
                                <img src="images/icon_cham_hoi.svg" alt=""> &nbsp; &nbsp;
                                <img src="images/icon_COD.svg" alt="">
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 form-group">
                            <div class="ck1">
                                <input type="radio" name="" id="" >
                                Payment With MOMO Wallet &nbsp; &nbsp;
                                <img src="images/icon_cham_hoi.svg" alt=""> &nbsp; &nbsp;
                                <img src="images/icon momo-01.svg" alt="">
                            </div>
                        </div>
                    </form>
                </div>

            </div>
            <!-- End main-cart-left-->
            <!-- start main-cart-left-->
            <div class="col-xs-12 col-sm-12 col-md-5 col-lg-5 main-cart-right">
                <ul class="list-group">
                    <li class="list-group-item title-thanh">ORDER</li>

                    <li class="list-group-item line2-thanh"></li>
                    <!-- 1 Product-->
                    <li class="list-group-item text-1-thanh">
                        <span class="title-6-thanh">Ananas Track 6 - Low Top - Triple Black</span>
                        <span class="title-6-1-thanh">990.000 VND</span>
                    </li>
                    <li class="list-group-item text-1-1-thanh">
                        <span class="title-6-2-thanh">Size: 35</span>
                        <span class="title-6-3-thanh">x 1</span>
                    </li>
                    <!-- end 1 product-->
                    <!-- 1 product-->
                    <li class="list-group-item text-1-thanh">
                        <span class="title-6-thanh">Basas New Simple Life - Low Top - Cordovan</span>
                        <span class="title-6-1-thanh">420.000 VND</span>
                    </li>
                    <li class="list-group-item text-1-1-thanh">
                        <span class="title-6-2-thanh">Size: 35</span>
                        <span class="title-6-3-thanh">x 1</span>
                    </li>
                    <li class="list-group-item line2-thanh"></li>
                    <!-- end 1 product-->
                    <li class="list-group-item text-1-thanh">
                        <span class="title-3-thanh">Order</span>
                        <span class="title-3-1-thanh">
                            <span class="current-price">1.410.000 </span>VND
                        </span>
                    </li>
                    <li class="list-group-item text-2-2-thanh">
                        <span class="title-3-thanh">Discount</span>
                        <span class="title-4-1-thanh">
                            - <span class="discount">0</span> VND
                        </span>
                    </li>
                    <li class="list-group-item text-2-3-thanh">
                        <span class="title-21-thanh">Transport fee</span>
                        <span class="title-22">
                            <span class="shipping-fee">0 </span>VND
                        </span>
                    </li>
                    <li class="list-group-item text-2-3-thanh">
                        <span class="title-21-thanh">Payment Fee</span>
                        <span class="title-22">
                            <span class="shipping-fee">0 </span>VND
                        </span>
                    </li>
                    <li class="list-group-item line2-thanh"></li>
                    <li class="list-group-item">
                        <span class="title-5">Total</span>
                        <span class="title-5-2">
                            <span class="total">1.410.000 </span>VND
                        </span>
                    </li>
                    <li class="list-group-item">
                        <button class="btn btn-cart btn-complete-detail"><a
                                href="https://ananas.vn/shipping-infomation/"> FINISHING ORDER</a></button>
                    </li>
                </ul>

                <!-- phần hiển thị thông báo
             Mặc định để display= none. khi có lỗi thì sửa lại display-->
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 main-cart-right error-quantity">
                    <div class="item-notice-thanh">
                        The current product is not enough size / quantity you need</div>
                </div>
                <!-- kết thúc phần hiển thị thông báo-->
            </div>
        </div>
    </div>
</body>

</html>