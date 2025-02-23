<%--
  Created by IntelliJ IDEA.
  User: prana
  Date: 29-01-2025
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Contact Details</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .hidden-form {
            display: none;
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
<%@ include file="header.jsp" %>
<%@ include file="sidebar.jsp" %>
<div class="container mt-5">
    <h2 class="text-center">Update Contact Details</h2>
    <div class="form-group">
        <label for="updateOption">What would you like to update?</label>
        <select class="form-control" id="updateOption" onchange="showForm()">
            <option value="" selected disabled>Select an option</option>
            <option value="emailForm">Email</option>
            <option value="phoneForm">Phone Number</option>
            <option value="alternateMobileForm">Alternate Mobile Number</option>
        </select>
    </div>
    <form id="emailForm" class="hidden-form" action="updateEmail" method="post">
        <div class="form-group">
            <label for="email">Email</label>
            <input name="email" type="email" class="form-control" id="email" placeholder="Enter your new email">
        </div>
        <button type="submit" class="btn btn-primary">Update Email</button>
    </form>
    <form id="phoneForm" class="hidden-form" action="updatePhoneNumber" method="post">
        <div class="form-group">
            <label for="phone">Phone Number</label>
            <input name="phoneNumber" type="text" class="form-control" id="phone" placeholder="Enter your new phone number">
        </div>
        <button type="submit" class="btn btn-primary">Update Phone Number</button>
    </form>
    <form id="alternateMobileForm" class="hidden-form">
        <div class="form-group">
            <label for="alternateMobile">Alternate Mobile Number</label>
            <input type="text" class="form-control" id="alternateMobile" placeholder="Enter your alternate mobile number">
        </div>
        <button type="submit" class="btn btn-primary">Update Alternate Mobile Number</button>
    </form>
</div>

<script>
    function showForm() {
        // Hide all forms
        document.getElementById('emailForm').style.display = 'none';
        document.getElementById('phoneForm').style.display = 'none';
        document.getElementById('alternateMobileForm').style.display = 'none';

        // Display the selected form
        const selectedOption = document.getElementById('updateOption').value;
        document.getElementById(selectedOption).style.display = 'block';
    }
</script>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
