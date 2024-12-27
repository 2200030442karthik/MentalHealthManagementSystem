<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mental Health Management </title>

    <!-- External Stylesheets -->
    <link rel="stylesheet" type="text/css" href="style.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
        /* Global Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7fa;
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Navbar Styling */
        .navbar {
            background-color: #4CAF50;
            padding: 10px 0;
            text-align: center;
            margin: 0;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            font-size: 18px;
            margin: 0 20px;
            padding: 12px 15px;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .navbar a:hover {
            background-color: #45a049;
        }

        /* Heading Styling */
        h2 {
            text-align: center;
            color: #4CAF50;
            font-size: 36px;
            font-weight: bold;
            margin-top: 50px;
        }

        /* Links Styling */
        .navbar a {
            font-size: 18px;
            padding: 12px;
        }

        .navbar {
            background-color: #4CAF50;
        }

        .navbar a:hover {
            background-color: #45a049;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .navbar a {
                font-size: 16px;
                padding: 10px 12px;
            }
        }
    </style>
</head>

<body>
    <!-- Navigation Bar -->
    <div class="navbar">
        <a href="patienthome">Home</a>&nbsp;&nbsp;
        <a href="patientprofile">Patient Profile</a>&nbsp;&nbsp;
		<a href="bookappointment">Book Appointment</a>&nbsp;&nbsp;
		<a href="viewappointment">View Appointment</a>&nbsp;&nbsp;
        <a href="patientlogout">Logout</a>&nbsp;&nbsp;
		
		
    </div>

    <!-- Main Content -->
    <h2>Mental Health Management Project</h2>
</body>
</html>
