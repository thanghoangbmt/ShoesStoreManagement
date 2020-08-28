<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Account Management</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/ankvkt.CouponManagement.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
    <div class="example">
        <div class="container">
            <div class="heading-text py-3">
                <h2 class="text-center">Coupon Management</h2>
            </div>


            <div class="col-12">
                <div class="col-3">
                    <div class="input-group mb-3">
                        <select class="custom-select" id="inputGroupSelect01">
                            <option selected>Choose Customer...</option>
                            <option value="1">Admin</option>
                            <option value="2">Customer</option>
                            <option value="3">Staff</option>
                            <option value="3">All</option>
                        </select>
                    </div>
                    <div class="col-9"></div>
                </div>
            </div>


            <div class="row">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Coupon Code</th>
                            <th>Description </th>
                            <th>Exp Data</th>
                            <th>Discount Amount</th>
                            <th>Status</th>
                            <th>Disable</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>CODE01</td>
                            <td>Thắng Hoàng</td>
                            <td>0963492364</td>
                            <td>Đắk Lắk</td>
                            <td>Enable</td>
                            <td><button class="button1 bg-danger">Disable</button></td>
                        </tr>
                        <tr>
                            <td>thanghoangbmt@gmail.com</td>
                            <td>Thắng Hoàng</td>
                            <td>0963492364</td>
                            <td>Đắk Lắk</td>
                            <td>Disable</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>thanghoangbmt@gmail.com</td>
                            <td>Thắng Hoàng</td>
                            <td>0963492364</td>
                            <td>Đắk Lắk</td>
                            <td>Disable</td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>



</body>

</html>