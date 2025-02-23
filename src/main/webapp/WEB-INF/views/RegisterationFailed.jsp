
<%--
  Created by IntelliJ IDEA.
  User: prana
  Date: 31-01-2025
  Time: 18:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Unsuccessful</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style>
        body {
            padding: 40px;
            background-color: #f8f9fa;
        }
        .failure-container {
            max-width: 800px;
            margin: auto;
            text-align: center;
            padding: 50px;
            border-radius: 15px;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .failure-icon {
            font-size: 100px;
            color: #dc3545;
        }
        .failure-message {
            font-size: 24px;
            font-weight: bold;
            margin: 20px 0;
        }
        .retry-button {
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
<div class="failure-container">
    <div class="failure-icon">
        <i class="bi bi-x-circle"></i> <!-- Bootstrap Icons used here -->
    </div>
    <div class="failure-message">
        Registration Unsuccessful.
    </div>
    <a href="/register" class="btn btn-danger retry-button">Retry Registration</a>
</div>

<!-- Bootstrap Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.7.2/font/bootstrap-icons.min.css">
</body>
</html>
