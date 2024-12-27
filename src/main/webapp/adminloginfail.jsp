<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Failed</title>

    <style>
        /* General Page Styling */
        body {
            font-family: 'Roboto', Arial, sans-serif;
            background: linear-gradient(120deg, #ff7e5f, #feb47b);
            color: #ffffff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Main container */
        .container {
            max-width: 500px;
            text-align: center;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 12px;
            padding: 30px 40px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        /* Emoji Styling */
        .emoji {
            font-size: 80px;
            margin-bottom: 20px;
            color: #ff6b6b;
        }

        /* Error Message Styling */
        .message {
            font-size: 22px;
            margin-bottom: 20px;
            font-weight: bold;
            color: #fff;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
        }

        /* Try Again Button Styling */
        .try-again-btn {
            display: inline-block;
            padding: 12px 25px;
            background: #ff6b6b;
            color: #fff;
            text-decoration: none;
            font-size: 18px;
            font-weight: bold;
            border-radius: 8px;
            transition: background 0.3s ease, transform 0.3s ease;
        }

        .try-again-btn:hover {
            background: #ff3b3b;
            transform: translateY(-2px);
        }

        .try-again-btn:active {
            background: #e63333;
            transform: translateY(0);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                width: 90%;
                padding: 20px;
            }
            .message {
                font-size: 18px;
            }
        }
    </style>
</head>

<body>
    <!-- Main content container -->
    <div class="container">
        <!-- Sad Emoji -->
        <div class="emoji">😞</div>
        
        <!-- Error Message -->
        <div class="message">
            <c:out value="${message}" default="Oops! Something went wrong. Please try again."></c:out>
        </div>

        <!-- Try Again Button -->
        <a href="adminlogin" class="try-again-btn">Try Again</a>
    </div>
</body>
</html>
