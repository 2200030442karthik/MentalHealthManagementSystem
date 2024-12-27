<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .count-section {
            text-align: center;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #e8f5e9;
            border: 2px solid #4caf50;
            border-radius: 8px;
            display: inline-block;
            font-size: 24px;
            font-weight: bold;
            color: #388e3c;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        th, td {
            padding: 10px 15px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #4caf50;
            color: white;
            font-weight: bold;
            font-size: 16px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        h3 {
            text-align: center;
            color: #333;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %><br/><br/>
    <div class="count-section">Total Patients: <c:out value="${count}" /></div>
    <h3 align="center">View All Patients</h3>
    <table align="center" border="2">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>EMAIL</th>
            <th>LOCATION</th>
            <th>CONTACT NO</th>
        </tr>
        <c:forEach items="${patientlist}" var="patient">
            <tr>
                <td><c:out value="${patient.id}" /></td>
                <td><c:out value="${patient.name}" /></td>
                <td><c:out value="${patient.gender}" /></td>
                <td><c:out value="${patient.dateofbirth}" /></td>
                <td><c:out value="${patient.email}" /></td>
                <td><c:out value="${patient.location}" /></td>
                <td><c:out value="${patient.contact}" /></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
