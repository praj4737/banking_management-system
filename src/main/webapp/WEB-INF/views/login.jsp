<%--
  Created by IntelliJ IDEA.
  User: prana
  Date: 28-12-2024
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <style>
        body{
            overflow: hidden;
        }
        .wrapper{
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;

        }
        .btn{
            background-color: #7F00FF;
        }

        input:focus{
            box-shadow: none;
            outline: 2px solid #7F00FF !important;
            outline-offset: 2px;
        }
        input:focus{
            box-shadow: none;
            outline: 2px solid #7F00FF !important;
            outline-offset: 2px;
        }
    </style>
</head>
<body>
    <div class="wrapper">

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="card border">
                    <h1><i class="material-icons">login</i> Log In</h1>
                    <div class="card-body">
                        <h5 class="card-title"><i class="material-icons">account_balance</i>My Bank</h5>

                        <form action="login" method="post">
                            <div class="form-floating">
                                <input name="cusId" class="form-control" id="customer_id" type="text" placeholder="customer id">
                                <label for="customer_id">Customer id</label>

                            </div>
                            <br>
                            <div class="form-floating">
                                <input name="pass" class="form-control" id="pass" type="password" placeholder="password">
                                <label for="pass">password</label>
                            </div>
                            <br>
                            <div>
                                <input type="checkbox" class="form-check-input">
                                <label class="form-check-label">Remember Me</label>
                            </div>
                            <div class="text-center">
                                <input type="submit" value="Log In" class="btn btn-primary">
                            </div>
                        </form>
                    </div>
                    <div class="card-footer">
                        <form action="register" method="get">
                            <label class="form-label">Not a user? Register Now</label>
                            <input type="submit" class="btn btn-primary" value="Sign Up">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</body>
</html>
