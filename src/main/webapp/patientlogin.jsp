<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Patient Login</title>
</head>
<body>z
    <%@ include file="mainnavbar.jsp" %>

    <h3 align="center">Patient Login Form</h3>
    
    <!-- Display the login failure message in red if provided -->
    <c:if test="${not empty message}">
        <h4 align="center" style="color: #D9534F;"> <!-- Bootstrap danger/red color -->
            <c:out value="${message}" />
        </h4>
    </c:if>

    <div class="container" style="width: 30%; margin: auto;">
        <form method="post" action="checkPatientLogin">
            <label>Enter Email</label>
            <input type="text" class="form-control" name="cemail" required />
            <br/>
            <label>Enter Password</label>
            <input type="password" name="cpwd" class="form-control" required />
            <br/>
        
            <input type="submit" value="Login" class="btn btn-success" />
            <input type="reset" value="Clear" class="btn btn-secondary" />
        </form>
    </div>
</body>
</html>
