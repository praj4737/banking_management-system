<%--
  Created by IntelliJ IDEA.
  User: prana
  Date: 09-01-2025
  Time: 18:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transaction History</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style>
        body {
            padding: 20px;
        }
        .transaction-history {
            max-width: 800px;
            margin: auto;
        }
        table {
            width: 100%;
            margin-top: 20px;
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
<div class="transaction-history">
    <h2 class="text-center"><i class="material-icons">receipt_long</i>Transaction History</h2>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th><i class="material-icons">today</i></th>
            <th><i class="material-icons">description</i></th>
            <th><i class="material-icons">currency_rupee</i></th>
            <th> <i class="material-icons">checklist</i></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="transaction" items="${transactions}">
            <tr>
            <td>${transaction.date}</td>
            <td>Grocery Shopping</td>
            <td>${transaction.sentAmount}</td>
            <c:choose>
                <c:when test="${transaction.senderAccountNo == accountNo}">
                    <td>Debited</td>
                </c:when>
                <c:otherwise>
                    <td>Credited</td>
                </c:otherwise>

            </c:choose>

            </tr>
        </c:forEach>

        <!-- Add more transaction rows as needed -->
        </tbody>
    </table>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
