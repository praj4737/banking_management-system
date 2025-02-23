<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: prana
  Date: 09-01-2025
  Time: 18:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Overview</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style>
        body {
            padding: 20px;
        }
        .account-overview {
            max-width: 600px;
            margin: auto;
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
<%@include file="header.jsp"%>
<%@include file="sidebar.jsp" %>
<div class="account-overview">
    <h2 class="text-center">Account Overview</h2>
    <div class="card mt-4">
        <div class="card-body">
            <h5 class="card-title border-bottom"><i class="material-icons">account_balance_wallet</i> Account Balance</h5>
            <p class="card-text">>>${balance}</p>
        </div>
    </div>
    <div class="card mt-4">
        <div class="card-body">
            <h5 class="card-title border-bottom"><i class="material-icons">account_box</i> Account Type</h5>
            <p class="card-text">${accountType}</p>
        </div>
        <div class="card-body">
            <h5 class="card-title border-bottom"><i class="material-icons">adjust</i> Account Status</h5>
            <c:choose>
                <c:when test="${status}">
                     <p class="card-text">Active</p>
                </c:when>
                <c:otherwise>
                    <p class="card-text">Deactivated</p>
                </c:otherwise>
            </c:choose>

        </div>
    </div>
    <div class="card mt-4">
        <div class="card-body">
            <h5 class="card-title border-bottom"><i class="material-icons">person</i> Account Details</h5>
            <p class="card-text"><strong>Account Holder:</strong>${holdername}</p>
            <p class="card-text"><strong>Account Number:</strong>${accountNo}</p>
            <p class="card-text"><strong>Branch:</strong> Bengaluru East</p>
        </div>
    </div>

</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
