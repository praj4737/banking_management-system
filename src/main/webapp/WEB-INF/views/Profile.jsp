<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%--
  Created by IntelliJ IDEA.
  User: prana
  Date: 27-01-2025
  Time: 17:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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
<%@ include file="header.jsp" %>
<%@ include file="sidebar.jsp" %>
<div class="container mt-5">
    <div class="card">
        <div class="card-body text-center">
            <img src="https://t4.ftcdn.net/jpg/02/15/84/43/360_F_215844325_ttX9YiIIyeaR7Ne6EaLLjMAmy4GvPC69.jpg" class="rounded-circle border" alt="User Picture" width="150">
            <h3 class="mt-2">User Profile</h3>
        </div>

        <div class="card-body">
            <div class="row">
                <div class="col-md-4">
                    <h5 class=" border-bottom"><i class="material-icons ">badge</i>Customer ID</h5>
                    <p id="customerid">${customer.id}</p>
                </div>
                <div class="col-md-4">
                    <h5 class=" border-bottom"><i class="material-icons ">person</i>Name</h5>
                    <p id="name">${customer.fname} ${customer.lname}</p>

                </div>
                <div class="col-md-4">
                    <h5 class=" border-bottom"><i class="material-icons ">account_balance</i>Bank</h5>
                    <p id="bank">My Bank</p>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <h5 class=" border-bottom"><i class="material-icons ">segment</i>Branch</h5>
                    <p id="branch">MG Road Branch</p>
                </div>
                <div class="col-md-8">
                    <h5 class=" border-bottom"><i class="material-icons ">home</i>Address</h5>
                    <p id="address">${customer.address.addressLine1}, ${customer.address.addressLine2},
                        ${customer.address.addressLine3}, ${customer.address.pincode}, ${customer.address.city},
                        ${customer.address.state}, ${customer.address.country}
                    </p>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <h5 class=" border-bottom"><i class="material-icons ">contact_mail</i>Contact Info</h5>
                    <p id="contact">Email: ${customer.contact.email}<br>Phone: +91 ${customer.contact.phoneNumber}</p>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <h5 class=" border-bottom"><i class="material-icons ">account_circle</i>Account Info</h5>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th>Account Number</th>
                                <th>Account Type</th>
                                <th>Balance</th>
                                <th>Status</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="acc" items="${accounts}">
                                <tr>
                                    <td>${acc.accountNo}</td>
                                    <td>Savings</td>
                                    <td>${acc.balance}</td>
                                    <td>${acc.status}</td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

