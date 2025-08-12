<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Employee Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f6fa;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 500px;
            margin: 50px auto;
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }
        .detail {
            margin-bottom: 15px;
        }
        .detail strong {
            color: #555;
        }
        .message {
            margin-top: 15px;
            padding: 10px;
            background-color: #ffe9e9;
            color: #d9534f;
            border-radius: 5px;
            text-align: center;
        }
        .back-link {
            display: block;
            margin-top: 20px;
            text-align: center;
        }
        .back-link a {
            color: #007bff;
            text-decoration: none;
        }
        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Employee Details</h2>

        <div class="detail"><strong>Employee ID:</strong> ${employee.empId}</div>
        <div class="detail"><strong>Name:</strong> ${employee.employeeName}</div>
        <div class="detail"><strong>Email:</strong> ${employee.employeeEmail}</div>
        <div class="detail"><strong>Location:</strong> ${employee.employeeLocation}</div>

        <c:if test="${not empty message}">
            <div class="message">${message}</div>
        </c:if>

        <div class="back-link">
            <a href="/displayAll">← Back to Employee List</a>
        </div>
    </div>
</body>
</html>
