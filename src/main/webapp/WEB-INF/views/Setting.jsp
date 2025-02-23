<%--
  Created by IntelliJ IDEA.
  User: prana
  Date: 27-01-2025
  Time: 17:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Settings</title>
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
        <div class="card-header text-center">
            <h3>Settings</h3>
        </div>
        <div class="card-body">
            <!-- Change Profile Picture -->
            <div class="mb-4">
<%--                <h5>Change Profile Picture</h5>--%>
                <button class="btn btn-secondary btn-block"><i class="material-icons ">image</i> Change Profile Picture</button>
            </div>

            <!-- Update Contact Info -->
            <div class="mb-4">
<%--                <h5>Update Contact Info</h5>--%>
                <a href="updateContact"><button class="btn btn-secondary btn-block"><i class="material-icons ">contact_emergency</i> Update Contact Info</button></a>
            </div>

            <!-- Update Personal Details -->


            <!-- Deactivate Account -->
            <div class="mb-4">
<%--                <h5>Deactivate Account</h5>--%>
                <a href="deactivateAccount"> <button class="btn btn-danger btn-block"><i class="material-icons ">toggle_off</i> Deactivate Account</button></a>
            </div>

            <!-- Change Password -->
            <div class="mb-4">
<%--                <h5>Change Password</h5>--%>
                <a href="changePassword"><button class="btn btn-secondary btn-block"><i class="material-icons ">lock_reset</i> Change Password</button></a>
            </div>

            <!-- Other Services -->
            <div class="mb-4">
                <h5>Other Settings</h5>
                <button class="btn btn-secondary btn-block">Manage Subscriptions</button>
                <button class="btn btn-secondary btn-block">Connected Devices</button>
                <button class="btn btn-secondary btn-block">Privacy Settings</button>
                <button class="btn btn-secondary btn-block">Notification Preferences</button>
                <button class="btn btn-secondary btn-block">Account Recovery</button>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
