<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.klef.jfsd.Project.model.Doctor" %>

<%
    Doctor c = (Doctor) session.getAttribute("doctor");
    if (c == null) {
        response.sendRedirect("doctorlogin");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        h3 {
            color: #4caf50;
            text-align: center;
            padding-top: 20px;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .details p {
            font-size: 16px;
            line-height: 1.6;
            margin: 8px 0;
        }

        .details p span {
            font-weight: bold;
            color: #333;
        }

        .patients {
            margin-top: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        table th, table td {
            text-align: left;
            padding: 10px;
            border: 1px solid #ddd;
        }

        table th {
            background-color: #4caf50;
            color: white;
        }

        .actions {
            text-align: center;
            margin-top: 20px;
        }

        .btn {
            background-color: #4caf50;
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 5px;
            margin: 5px;
            display: inline-block;
        }

        .btn:hover {
            background-color: #45a049;
        }

        .navbar {
            background-color: #4caf50;
            padding: 10px;
            text-align: center;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
        }

        .navbar a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <%@ include file="doctornavbar.jsp" %>

    <div class="container">
        <h3>Doctor Profile</h3>
        <div class="details">
            <p><span>ID:</span> <%= c.getId() %></p>
            <p><span>Name:</span> <%= c.getName() %></p>
            <p><span>Gender:</span> <%= c.getGender() %></p>
            <p><span>DOB:</span> <%= c.getDateofbirth() %></p>
            <p><span>Email:</span> <%= c.getEmail() %></p>
            <p><span>Location:</span> <%= c.getLocation() %></p>
            <p><span>Contact:</span> <%= c.getContact() %></p>
        </div>

        <div class="patients">
            <h3>Previous Patients</h3>
            <table>
                <thead>
                    <tr>
                        <th>Patient Name</th>
                        <th>Gender</th>
                        <th>View Documents</th>
                        <th>View Prescriptions</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        String[][] patients = {
                            {"Alice Johnson", "Female", "document.jsp?name=Alice Johnson", "prescription.jsp?name=Alice Johnson"},
                            {"Bob Smith", "Male", "document.jsp?name=Bob Smith", "prescription.jsp?name=Bob Smith"},
                            {"Charlie Brown", "Male", "document.jsp?name=Charlie Brown", "prescription.jsp?name=Charlie Brown"}
                        };

                        for (String[] patient : patients) {
                    %>
                    <tr>
                        <td><%= patient[0] %></td>
                        <td><%= patient[1] %></td>
                        <td><a href="<%= patient[2] %>">View Documents</a></td>
                        <td><a href="<%= patient[3] %>">View Prescriptions</a></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>

        <div class="actions">
            <a href="addPrescription.jsp" class="btn">Add New Prescription</a>
            <a href="uploadDocument.jsp" class="btn">Upload New Document</a>
        </div>

    </div>

</body>
</html>
