<%--
  Created by IntelliJ IDEA.
  User: prana
  Date: 09-01-2025
  Time: 18:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transfer Funds</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style>
        body {
            padding: 20px;
        }
        .transfer-form {
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
<div class="transfer-form">
    <h2 class="text-center">Transfer Funds</h2>


    <form action="sendMoney" method="post">
        <div class="mb-3">
            <label for="senderAccount" class="form-label"><i class="material-icons">north_east</i> Sender's Account Number</label>
            <input name="senderAccount" type="text" class="form-control" id="senderAccount" required>
        </div>
        <div class="mb-3">
            <label for="receiverAccount" class="form-label"><i class="material-icons">south_west</i> Receiver's Account Number</label>
            <input name="receiverAccount" type="text" class="form-control" id="receiverAccount" required>
        </div>
        <div class="mb-3">
            <label for="ifscCode" class="form-label"><i class="material-icons">code</i> Receiver's Bank IFSC Code</label>
            <input name="ifscCode" type="text" class="form-control" id="ifscCode" required>
        </div>
        <div class="mb-3">
            <label for="amount" class="form-label"><i class="material-icons">currency_rupee</i> Amount to Send</label>
            <input name="amount" type="number" class="form-control" id="amount" required>
        </div>
        <div class="mb-3">
            <label for="transferType" class="form-label"><i class="material-icons">local_shipping</i> Transfer Type</label>
            <select name="transferType" class="form-select" id="transferType" required>
                <option value="IMPS">IMPS</option>
                <option value="NEFT">NEFT</option>
            </select>
        </div>
        <button onclick="" type="submit" class="btn btn-primary"><i class="material-icons">send_money</i></button>
    </form>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
<script src="${pageContext.request.contextPath}/js/TransferFunds.js"></script>
</html>
