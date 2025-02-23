<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: prana
  Date: 30-12-2024
  Time: 14:35
  To change this template use File | Settings | File Templates.
  akanksha gupta
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Address Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <style>
        .wrapper {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .btn{
            background-color: #7F00FF;
        }
        input:focus{
            box-shadow: none;
            outline: 2px solid #7F00FF !important;
            outline-offset: 2px;
        }
    </style>
</head>
<body>
<%@include file="RegistrationHeader.jsp"%>
<div class="wrapper mt-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card border">
                    <div class="card-body">
                        <div class="d-flex flex-row border-bottom">
                            <i class="material-icons">home</i>
                            <h5 class="card-title">&nbsp; Address Form</h5>
                        </div>

                        <form:form  action="address" class="mt-2" method="post" modelAttribute="address">
                            <div class="row">
                                <!-- Address Line 1 and Address Line 2 -->
                                <div class="col-md-6 mb-3">
                                    <div class="form-floating">
                                        <form:input path="addressLine1" class="form-control" id="addressLine1" name="addressLine1" type="text" placeholder="Address Line 1" />
                                        <label for="addressLine1">Address Line 1</label>
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <div class="form-floating">
                                        <form:input path="addressLine2" class="form-control" id="addressLine2" name="addressLine2" type="text" placeholder="Address Line 2" />
                                        <label for="addressLine2">Address Line 2</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <!-- Address Line 3 and Pincode -->
                                <div class="col-md-6 mb-3">
                                    <div class="form-floating">
                                        <form:input path="addressLine3" class="form-control" id="addressLine3" name="addressLine3" type="text" placeholder="Address Line 3" />
                                        <label for="addressLine3">Address Line 3</label>
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <div class="form-floating">
                                        <form:input path="pincode" class="form-control" id="pincode" name="pincode" type="text" placeholder="Pincode" />
                                        <label for="pincode">Pincode</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <!-- City and State -->
                                <div class="col-md-6 mb-3">
                                    <div class="form-floating">
                                        <form:input path="city" class="form-control" id="city" name="city" type="text" placeholder="City" />
                                        <label for="city">City</label>
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <div class="form-floating">
                                        <form:input path="state" class="form-control" id="state" name="state" type="text" placeholder="State" />
                                        <label for="state">State</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <!-- Country and Status -->
                                <div class="col-md-6 mb-3">
                                    <div class="form-floating">
                                        <form:input path="country" class="form-control" id="country" name="country" type="text" placeholder="Country" />
                                        <label for="country">Country</label>
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <div class="form-check">

                                    </div>
                                </div>
                            </div>
                            <!-- Submit Button -->
                            <div class="text-center">
                                <input id="submit-btn" type="submit" value="Submit" class="btn btn-primary">
                            </div>
                        </form:form>
                    </div>
                    <div class="card-footer">
                        <!-- Additional footer content if needed -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
