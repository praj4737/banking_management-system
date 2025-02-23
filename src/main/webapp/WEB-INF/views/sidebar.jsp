<%--
  Created by IntelliJ IDEA.
  User: prana
  Date: 28-12-2024
  Time: 22:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="sidebar.css">
    <style>
        .sidebar {
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 100;
            background-color: #f8f9fa;
            padding-top: 1rem;
        }
        .sidebar .nav-link {
            color: #333;
        }
        @media (max-width: 768px) {
            .sidebar {
                height: auto;
                position: relative;
                width: 100%;
            }
        }
        .nav-link{
            display: inline-block;
            vertical-align: middle;
        }
        .material-icons{
            vertical-align: middle;
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

<!-- Sidebar -->
<!--
<div class="sidebar">
    <nav class="nav flex-column">
        <a class="nav-link border" href="home"><i class="material-icons">dashboard</i> Dashboard </a>
        <a class="nav-link border" href="profile"><i class="material-icons">person</i> Profile</a>
        <a class="nav-link border" href="setting"><i class="material-icons">settings</i> Settings</a>
        <a class="nav-link border" href="notification"><i class="material-icons">notifications</i> Notifications</a>
        <a class="nav-link border" href="help"><i class="material-icons">help</i> Help</a>
    </nav>
</div>
-->
</body>
</html>
