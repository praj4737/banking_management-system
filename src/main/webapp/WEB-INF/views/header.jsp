<%--
  Created by IntelliJ IDEA.
  User: prana
  Date: 28-12-2024
  Time: 22:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style>
        .navbar a:hover{
            color: blue;
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
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#"><i style="font-size:30px" class="material-icons">assured_workload</i> My Bank</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse " id="navbarNav">
        <div class="container  d-flex justify-content-start">

        <ul class="navbar-nav ml-auto ">

            <li class="nav-item">
                <a class="nav-link border-bottom" href="#"><i class="material-icons">home</i> Home</a>
            </li>

            <li class="nav-item">
                <a class="nav-link border-bottom" href="login"><i class="material-icons">logout</i> Logout</a>
            </li>
            <li>
                <a class="nav-link border-bottom" href="home"><i class="material-icons">dashboard</i> Dashboard </a>

            </li>
            <li>
                <a class="nav-link border-bottom" href="profile"><i class="material-icons">person</i> Profile</a>

            </li>
            <li>
                <a class="nav-link border-bottom" href="setting"><i class="material-icons">settings</i> Settings</a>
            </li>
            <li>
                <a class="nav-link border-bottom" href="notification"><i class="material-icons">notifications</i> Notifications</a>
            </li>
            <li>
                <a class="nav-link border-bottom" href="help"><i class="material-icons">help</i> Help</a>
            </li>
        </ul>
        </div>

    </div>
</nav>

</body>
</html>
