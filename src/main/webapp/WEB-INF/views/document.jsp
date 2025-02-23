<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: prana
  Date: 30-12-2024
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document Upload Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <style>
        .wrapper {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .status-spinner {
            visibility: hidden;
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
<div class="wrapper mt-4">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card border">
                    <div class="card-body">
                        <div class="d-flex flex-row">
                            <i class="material-icons">inventory</i>
                            <h5 class="card-title">&nbsp;Document Upload Form</h5>
                        </div>

                        <form  id="doc" action="" method="post" enctype="multipart/form-data">
                            <div class="row">
                                <!-- Aadhar Number -->
                                <div class="col-md-6 mb-3">
                                    <div class="form-floating">
                                        <input  class="form-control" id="aadharNo" name="aadharNo" type="text" placeholder="Aadhar Number" />
                                        <label for="aadharNo">Aadhar Number</label>
                                    </div>
                                </div>
                                <!-- Aadhar Card -->
                                <div class="col-md-6 mb-3">
                                    <div class="form-floating">
                                        <input path="aadharCard" class="form-control" id="aadharCard" name="aadharcard" type="file" placeholder="Aadhar Card" />
                                        <label for="aadharCard">Aadhar Card</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <!-- PAN Number -->
                                <div class="col-md-6 mb-3">
                                    <div class="form-floating">
                                        <input path="panNo" class="form-control" id="panNo" name="panNo" type="text" placeholder="PAN Number" />
                                        <label for="panNo">PAN Number</label>
                                    </div>
                                </div>
                                <!-- PAN Card -->
                                <div class="col-md-6 mb-3">
                                    <div class="form-floating">
                                        <input path="panCard" class="form-control" id="panCard" name="panCard" type="file" placeholder="PAN Card" />
                                        <label for="panCard">PAN Card</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <!-- Photograph -->
                                <div class="col-md-6 mb-3">
                                    <div class="form-floating">
                                        <input path="photograph" class="form-control" id="photograph" name="photo" type="file" placeholder="Photograph" />
                                        <label for="photograph">Photograph</label>
                                    </div>
                                </div>
                            </div>
                            <!-- Submit Button -->
                            <div class="text-center">
                                <input  id="submit-btn" type="submit" value="Submit" class="btn btn-primary" />
                            </div>
                        </form>
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

<script src="${pageContext.request.contextPath}/js/docoument.js"></script>
</html>

