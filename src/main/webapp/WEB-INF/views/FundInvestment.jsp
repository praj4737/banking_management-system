<%--
  Created by IntelliJ IDEA.
  User: prana
  Date: 09-01-2025
  Time: 23:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fund Investment Feature</title>
    <link rel="stylesheet" href="styles.css">
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
<%@ include file="header.jsp"%>
<%@ include file="sidebar.jsp" %>

<section id="fund-investment">
    <h2>Fund Investment Opportunities</h2>
    <p>Explore various fund investment options to grow your wealth and achieve your financial goals.</p>

    <div class="fund-types">
        <h3>Types of Investment Funds</h3>
        <ul>
            <li>Mutual Funds</li>
            <li>Exchange-Traded Funds (ETFs)</li>
            <li>Index Funds</li>
            <li>Hedge Funds</li>
        </ul>
    </div>

    <div class="investment-benefits">
        <h3>Benefits of Fund Investment</h3>
        <ul>
            <li>Diversification</li>
            <li>Professional Management</li>
            <li>Liquidity</li>
            <li>Accessibility</li>
            <li>Flexibility</li>
        </ul>
    </div>

    <div class="getting-started">
        <h3>Getting Started</h3>
        <ol>
            <li>Assess Your Financial Goals</li>
            <li>Research and Choose Funds</li>
            <li>Open an Account</li>
            <li>Monitor and Adjust</li>
        </ol>
    </div>
    <div class="contact-us">
        <h3>Contact Us</h3>
        <p>To know more about our investment options or to start investing, feel free to contact us:</p>
        <ul>
            <li>Email: <a href="mailto:investments@yourbank.com">investments@yourbank.com</a></li>
            <li>Phone: +1-234-567-890</li>
            <li>Visit: Your Bank's nearest branch</li>
        </ul>
    </div>

</section>
</body>
</html>
