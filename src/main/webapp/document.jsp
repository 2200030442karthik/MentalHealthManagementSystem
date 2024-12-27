<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String name = request.getParameter("name");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7f6;
            padding: 20px;
        }
        .container {
            max-width: 600px;
            margin: 20px auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h3 {
            color: #4caf50;
        }
        p {
            font-size: 18px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h3>Document Details for <%= name %></h3>
        <p><strong>Document Type:</strong> Lab Reports</p>
        <p><strong>Description:</strong> Blood Test, X-Ray, and Ultrasound Reports</p>
        <p><strong>Date:</strong> 12-Dec-2024</p>
        <a href="doctorprofile.jsp" style="color: #4caf50; text-decoration: none;">Go Back</a>
    </div>
</body>
</html>
