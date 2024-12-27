<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.klef.jfsd.Project.model.Doctor" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    Doctor c = (Doctor) session.getAttribute("doctor");
    if (c == null) {
        response.sendRedirect("doctorlogin");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor Home</title>

    <style>
        /* Global styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #F8FBFF; /* Lightest blue background */
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Container for the main content */
        .container {
            width: 80%;
            max-width: 1200px;
            margin: 30px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        /* Heading styling */
        h2 {
            text-align: center;
            color: #3BAFDA; /* Soft blue for headings */
            font-size: 36px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        /* Greeting message styling */
        .greeting-message {
            font-size: 18px;
            color: #555;
            text-align: center;
            padding: 10px;
        }

        /* Navbar styling */
        .navbar {
            background-color: #BEE3F8; /* Light blue */
            padding: 10px 0;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            color: #333; /* Dark text for better contrast */
            text-decoration: none;
            font-size: 18px;
            margin: 0 20px;
            padding: 12px 15px;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .navbar a:hover {
            background-color: #A3D5F0; /* Slightly darker blue */
        }

        /* Responsive styling */
        @media (max-width: 768px) {
            .container {
                width: 90%;
            }

            .navbar a {
                font-size: 16px;
                padding: 10px 12px;
            }
        }
    </style>
</head>
<body>
    <%@ include file="doctornavbar.jsp" %>
    <div class="container">
        <h2>Welcome, <%= c.getName() %>!</h2>
        <p class="greeting-message">You are logged in as a doctor. Manage your profile and settings from here.</p>
    </div>
</body>
</html>
