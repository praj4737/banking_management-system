<%--
  Created by IntelliJ IDEA.
  User: prana
  Date: 04-01-2025
  Time: 23:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Type Selection</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <style>
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
<%--<div class="container mt-4">--%>
<%--    <div id="success-alert" class="alert alert-success" role="alert">--%>
<%--        Congrats! you are a customer of MyBank now.--%>
<%--    </div>--%>
    <div class="container  mt-5 ">
    <div class="d-flex flex-row border-bottom">
        <div>
            <i style="font-size: 30px" class="material-icons">group</i>
        </div>
        <div>
            <h2 class="">&nbsp;Select Account Type</h2>
        </div>

    </div>
        <div>
    <form id="acctypeform" action="setAccountType" method="post">
        <div class="form-check">
            <input class="form-check-input" type="radio" name="accountType" id="savingsAccount" value="Savings Account">
            <label class="form-check-label" for="savingsAccount">
                Savings Account
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="accountType" id="checkingAccount" value="Checking Account">
            <label class="form-check-label" for="checkingAccount">
                Checking Account
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="accountType" id="businessAccount" value="Business Account">
            <label class="form-check-label" for="businessAccount">
                Business Account
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="accountType" id="fixedDeposit" value="Fixed Deposit Account">
            <label class="form-check-label" for="fixedDeposit">
                Fixed Deposit Account
            </label>
        </div>
        <div class="mt-3 text-center">
            <button id="submit-btn" type="button" class="btn btn-primary">Submit</button>
        </div>
    </form>
</div>
</body>
<script src="${pageContext.request.contextPath}/js/AccountType.js"></script>
</html>
