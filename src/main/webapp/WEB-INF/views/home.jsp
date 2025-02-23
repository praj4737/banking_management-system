<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="home.css">
    <style>
        /* Custom styles for the sidebar */
        .main-content {
            margin-left: 250px;
        }
        @media (max-width: 768px) {
            .main-content {
                margin-left: 0;
            }
            .sidebar {
                height: auto;
                position: relative;
                width: 100%;
            }
        }
        #moving-msg{
            position: sticky;
            bottom: 0;
        }
        marquee{
            color: white;
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
<!-- Navigation Bar -->
<%@ include file="header.jsp"%>
<%@ include file="sidebar.jsp" %>

<!-- Main Content -->
<div class="main-content container mt-4 border">
    <div class="row justify-content-center">
        <div class="col-12 text-center mb-4">
            <b>Welcome </b>Mr. ${overview.holderName}
            <p> <i class="material-icons">login</i> at <span id="logged-in-time"></span></p>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="card">
                <div class="card-body">
                    <form action="accountOverview" method="get">
                    <h5 class="card-title"><i class="material-icons">account_balance_wallet</i>Account Overview</h5>
                    <p class="card-text">View your account balances and recent transactions.</p>
                    <button type="submit" class="btn btn-primary"><i class="material-icons">double_arrow</i></button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="card">
                <div class="card-body">
                    <form action="transferFunds" method="get">
                    <h5 class="card-title"><i class="material-icons">payments</i>Transfer Funds</h5>
                    <p class="card-text">Transfer money between accounts or to others.</p>
                    <button type="submit" class="btn btn-primary"><i class="material-icons">double_arrow</i></button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><i class="material-icons">credit_card</i>Bill Payments</h5>
                    <p class="card-text">Pay your utility bills, credit card bills, etc.</p>
                    <button class="btn btn-primary"><i class="material-icons">double_arrow</i></button>
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="card">
                <div class="card-body">
                    <form action="transactionHistory" method="get">
                    <h5 class="card-title"><i class="material-icons">receipt_long</i>Transaction History</h5>
                    <p class="card-text">View detailed history of your transactions.</p>
                    <button type="submit" class="btn btn-primary"><i class="material-icons">double_arrow</i></button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="card">
                <div class="card-body">
                    <form action="fundInvestment" method="get">
                    <h5 class="card-title"><i class="material-icons">store</i>Fund Investments</h5>
                    <p class="card-text">Invest in mutual funds, fixed deposits, etc.</p>
                    <button class="btn btn-primary"><i class="material-icons">double_arrow</i></button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><i class="material-icons">real_estate_agent</i>Loans</h5>
                    <p class="card-text">View existing loans or apply for new ones.</p>
                    <button class="btn btn-primary"><i class="material-icons">double_arrow</i></button>
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="card">
                <div class="card-body">
                    <form action="help">
                    <h5 class="card-title"><i class="material-icons">support_agent</i>Customer Support</h5>
                    <p class="card-text">Get assistance from customer service.</p>
                    <button class="btn btn-primary"><i class="material-icons">double_arrow</i></button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><i class="material-icons">redeem</i>Offers and Rewards</h5>
                    <p class="card-text">Access special offers and reward points.</p>
                    <button class="btn btn-primary"><i class="material-icons">double_arrow</i></button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Marquee -->
<div id="moving-msg" class="container mt-4 border bg-dark">
    <marquee><strong>Security Tip:</strong> Beware of phishing scams. The bank will never ask for your password or PIN. <strong>Offer:</strong> Enjoy up to 10% cashback on online purchases with your bank credit card.</marquee>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        var now = new Date();
        var hours = now.getHours();
        var minutes = now.getMinutes();
        minutes = minutes < 10 ? '0' + minutes : minutes;
        var currentTime = hours + ":" + minutes;
        document.getElementById('logged-in-time').textContent = currentTime;
    });
</script>
</body>
</html>
