<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success</title>

    <style>
        /* General Page Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e9f7ef;
            color: #333;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        /* Main container */
        .container {
            max-width: 600px;
            margin: 100px auto;
            padding: 30px;
            background-color: #d4edda;
            border-radius: 8px;
            border: 1px solid #c3e6cb;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Happy Emoji Styling */
        .emoji {
            font-size: 50px;
            color: #28a745;
            margin-bottom: 20px;
        }

        /* Message Styling */
        .message {
            font-size: 24px;
            color: #155724;
            margin-bottom: 30px;
            font-weight: bold;
        }

        /* Button Styling */
        .login-btn {
            padding: 15px 30px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 18px;
            transition: background-color 0.3s ease;
            cursor: pointer;
        }

        .login-btn:hover {
            background-color: #218838;
        }

        .login-btn:active {
            background-color: #1e7e34;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                width: 80%;
                padding: 20px;
            }
            .message {
                font-size: 20px;
            }
        }
    </style>
</head>

<body>
    <!-- Main content container -->
    <div class="container">
        <!-- Happy Emoji -->
        <div class="emoji">😄</div>
        
        <!-- Success Message -->
        <div class="message">
            <c:out value="${message}"></c:out>
        </div>

        <!-- Login Button -->
        <a href="patientlogin" class="login-btn">Login Here</a>
    </div>
</body>
</html>
