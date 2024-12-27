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
    <title>Upload Document</title>
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

        /* Upload Container */
        .upload-container {
            max-width: 600px;
            margin: 30px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-size: 16px;
            margin-bottom: 10px;
        }

        input[type="text"], input[type="file"] {
            padding: 10px;
            font-size: 14px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 100%;
            box-sizing: border-box;
        }

        button {
            background-color: #4caf50;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        .btn-back {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            background-color: #4caf50;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            text-align: center;
        }

        .btn-back:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <%@ include file="doctornavbar.jsp" %>

    <!-- Upload Document Section -->
    <div class="upload-container">
        <h3>Upload Patient Document</h3>
        <form action="uploadDocumentServlet" method="post" enctype="multipart/form-data">
            <label for="patientId">Patient ID</label>
            <input type="text" id="patientId" name="patientId" placeholder="Enter Patient ID" required>

            <label for="document">Choose Document</label>
            <input type="file" id="document" name="document" required>

            <button type="submit">Upload Document</button>
        </form>
        <a href="doctorprofile.jsp" class="btn-back">Go Back</a>
    </div>

</body>
</html>
