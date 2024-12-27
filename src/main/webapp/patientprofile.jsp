<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.klef.jfsd.Project.model.Patient" %>

<%
    Patient c = (Patient) session.getAttribute("patient");
    if (c == null) {
        response.sendRedirect("patientlogin");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Patient Profile</title>
    <style>
        /* General Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7f6;
            margin: 0;
            padding: 0;
        }
        
        h3 {
            color: #4caf50;
            text-align: center;
            padding-top: 20px;
        }

        /* Profile Container */
        .profile-container {
            max-width: 600px;
            margin: 30px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Profile Details Styling */
        .profile-details p {
            font-size: 18px;
            margin-bottom: 15px;
        }

        .profile-details p span {
            font-weight: bold;
            color: #333;
        }

        /* Button Styling */
        .btn-back {
            display: inline-block;
            background-color: #4caf50;
            color: #fff;
            padding: 10px 20px;
            font-size: 16px;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
            text-align: center;
        }

        .btn-back:hover {
            background-color: #45a049;
        }

        /* Navbar Styling */
        .navbar {
            background-color: #4caf50;
            padding: 10px;
            text-align: center;
        }

        .navbar a {
            color: white;
            margin: 0 15px;
            text-decoration: none;
        }

        .navbar a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <%@ include file="patientnavbar.jsp" %>
    <div class="profile-container">
        <h3>My Profile</h3>
        <div class="profile-details">
            <p><span>ID:</span> <%= c.getId() %></p>
            <p><span>Name:</span> <%= c.getName() %></p>
            <p><span>Gender:</span> <%= c.getGender() %></p>
            <p><span>DOB:</span> <%= c.getDateofbirth() %></p>
            <p><span>Email:</span> <%= c.getEmail() %></p>
            <p><span>Location:</span> <%= c.getLocation() %></p>
            <p><span>Contact:</span> <%= c.getContact() %></p>
        </div>
        <a href="patienthome.jsp" class="btn-back">Go Back</a>
    </div>
</body>
</html>
