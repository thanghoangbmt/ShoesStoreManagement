<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/dung.addNewShoe.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<div class="content">
        <div class="container">
            <a href="" class="logout">Logout</a>
            <div class="heading-text py-3">
                <h2 class="text-center">Add New Shoes</h2>
            </div>
            <form action="" onsubmit="return validate()">
                <div class="row row-content">
                    <div class="col-12 col-md-6 pb-5">
                        <div class="col-custom-left">
                            <h4>Shoes Name</h4>
                            <input type="text" class="form-control" placeholder="Shoes Name" id="shoeNameId">
                            <p class="message" id="messageErrorShoeName" style="color:red; padding-left: 50%;"></p>
                        </div>
                    </div>

                    <div class="col-12 col-md-6 pb-5">
                        <div class="col-custom-left">
                            <h4 class="pl-md-5">Shoes Branch</h4>
                            <input type="text" class="form-control" placeholder="Shoes Branch" id="shoeBranchId">
                            <p id="messageErrorShoeBranch" style="color:red; padding-left: 50%;"></p>
                        </div>
                    </div>

                    <div class="col-12 pb-5">
                        <div class="col-custom">
                            <h4>Description Shoes</h4>
                            <input type="text" class="form-control" placeholder="Description Shoes"
                                id="descriptionShoeId">
                            <p id="messageErrorDescriptionShoe" style="color:red; padding-left: 50%;"></p>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 pb-5">
                        <div class="col-custom-left">
                            <h4>Sale Price</h4>
                            <input type="text" class="form-control" placeholder="Sale Price" id="salePriceId">
                            <p id="messageErrorSalePrice" style="color:red; padding-left: 50%;"></p>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 pb-5">
                        <div class="col-custom-left">
                            <h4 class="pl-md-5">Buy Price</h4>
                            <input type="text" class="form-control" placeholder="Buy Price" id="buyPriceId">
                            <p id="messageErrorBuyPrice" style="color:red; padding-left: 50%;"></p>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 pb-5">
                        <div class="col-custom-left">
                            <h4>Color</h4>
                            <input type="text" class="form-control" placeholder="Color" id="colorId">
                            <p id="messageErrorColor" style="color:red; padding-left: 50%;"></p>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 pb-5">
                        <div class="col-custom-left">
                            <h4 class="pl-md-5">Image</h4>
                            <input type="file" id="imageId">
                            <p id="messageErrorImage" style="color:red; padding-left: 50%;"></p>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 pb-5">
                        <div class="col-custom-left">
                            <h4>Description style</h4>
                            <select class="form-control" id="exampleFormControlSelect1">
                                <option>High Top</option>
                                <option>Low Top</option>
                                <option>Slip-on</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 pb-5">
                        <div class="col-custom-left">
                            <h4 class="pl-md-5">Size</h4>
                            <select class="form-control" id="exampleFormControlSelect1">
                                <option>35</option>
                                <option>36</option>
                                <option>37</option>
                                <option>38</option>
                                <option>39</option>
                                <option>40</option>
                                <option>41</option>
                                <option>42</option>
                                <option>43</option>
                                <option>44</option>
                                <option>45</option>
                                <option>46</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-12 col-md-6 pb-5">
                        <div class="col-custom-left">
                            <h4>Quantity</h4>
                            <input type="number" class="form-control" placeholder="Number" min="1" id="quantityId">
                            <p id="messageErrorQuantity" style="color:red; padding-left: 50%;"></p>
                        </div>
                    </div>

                    <div class="col-12 col-md-6 pb-5">
                        <div class="col-custom-left">
                            <h4 class="pl-md-5">Gender</h4>
                            <div class="custom-checkbox" id="genderId">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions"
                                        id="inlineRadio1" value="option1">
                                    <label class="form-check-label" for="inlineRadio1">Male</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions"
                                        id="inlineRadio2" value="option2">
                                    <label class="form-check-label" for="inlineRadio2">Female</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions"
                                        id="inlineRadio2" value="option2">
                                    <label class="form-check-label" for="inlineRadio2">Both</label>
                                </div>
                                <p id="messageErrorGender" style="color:red; padding-left: 50%;"></p>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 custom-submit">
                        <div class="row">
                            <div class="col-6 text-center">
                                <input class="btn btn-success" type="submit" value="Add">
                            </div>
                            <div class="col-6 text-center">
                                <input class="btn btn-danger" type="submit" value="Cancel">
                            </div>
                        </div>
                    </div>
                </div>
            </form>

        </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>