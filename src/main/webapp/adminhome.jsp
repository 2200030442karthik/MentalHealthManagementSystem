<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <style>
        /* General Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            color: #333;
            margin: 0;
            padding: 0;
        }

        /* Navbar Styling */
        .navbar {
            background-color: #4caf50;
            color: white;
            text-align: center;
            font-size: 18px;
            padding: 10px;
            margin-bottom: 20px;
        }

        /* Container for Page Content */
        .container {
            max-width: 900px;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        /* Info Boxes for Total Patients and Total Doctors */
        .info-box {
            background-color: #ffffff;
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            display: inline-block;
            width: 45%;
            text-align: center;
        }

        .info-box h3 {
            font-size: 22px;
            color: #333;
            margin-bottom: 10px;
        }

        .info-box p {
            font-size: 20px;
            font-weight: bold;
            color: #555;
        }

		/* Specific Colors for Total Patient and Total Doctor Boxes */
		.info-box.patients {
		    background-color: #e8f5e9; /* Light Green for Total Patients */
		    border-color: #81c784; /* Green border */
		}

		.info-box.doctors {
		    background-color: #e3f2fd; /* Light Pink for Total Doctors */
		    border-color: #f50057;
		}


        /* Footer Style */
        footer {
            background-color: #4caf50;
            color: white;
            text-align: center;
            padding: 15px;
            position: fixed;
            width: 100%;
            bottom: 0;
        }

    </style>
</head>
<body>
    <!-- Include Navbar -->
    <div class="navbar">
        <%@ include file="adminnavbar.jsp" %>
    </div>

    <div class="container">
        <h1>Welcome to the Admin Dashboard</h1>

        <!-- Total Patient and Doctor Info Boxes -->
        <div class="info-box patients">
            <h3>Total Patients</h3>
            <p><c:out value="${count}"/></p>
        </div>

        <div class="info-box doctors">
            <h3>Total Doctors</h3>
            <p><c:out value="${count1}"/></p>
        </div>
    </div>

    
</body>
</html>
