<%--
  Created by IntelliJ IDEA.
  User: prana
  Date: 27-01-2025
  Time: 17:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Help</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .chat-frame {
      width: 100%;
      height: 400px;
      border: 1px solid #ccc;
      border-radius: 5px;
      display: flex;
      align-items: center;
      justify-content: center;
      background-color: #f5f5f5;
      margin-bottom: 20px;
    }
    .prompt-bar {
      display: flex;
    }
    .input-group-text {
      flex: 1;
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
<%@ include file="header.jsp"%>
<%@ include file="sidebar.jsp" %>
<div class="container mt-5">
  <div class="card">
    <div class="card-header text-center">
      <h3>Help</h3>
    </div>
    <div class="card-body">
      <!-- Chatbot Frame -->
      <div class="chat-frame">
        <p class="lead">Chatbot window (design only)</p>
      </div>

      <!-- Prompt Input Bar -->
      <div class="mb-4 prompt-bar">
        <input type="text" class="form-control" placeholder="Type your message here..." disabled>
        <button class="btn btn-primary ml-2" disabled>Send</button>
      </div>

      <!-- FAQ Section -->
      <div class="mb-4">
        <h5>Frequently Asked Questions</h5>
        <div class="list-group">
          <a href="#" class="list-group-item list-group-item-action">How do I reset my password?</a>
          <a href="#" class="list-group-item list-group-item-action">How do I update my contact info?</a>
          <a href="#" class="list-group-item list-group-item-action">Where can I view my transaction history?</a>
          <a href="#" class="list-group-item list-group-item-action">How do I deactivate my account?</a>
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
