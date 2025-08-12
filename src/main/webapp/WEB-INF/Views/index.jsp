<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Add Employee</title>
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
            box-shadow: 0 2px 12px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }
        label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
            color: #555;
        }
        input[type="text"], input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 12px;
            width: 100%;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .message {
            text-align: center;
            color: green;
            margin-bottom: 15px;
        }
        .link-container {
            text-align: center;
            margin-top: 15px;
        }
        .link-container a {
            color: #007bff;
            text-decoration: none;
        }
        .link-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add New Employee</h2>

        <c:if test="${not empty message}">
            <p class="message">${message}</p>
        </c:if>

        <form action="addEmployee" method="post">
            <label>Employee Name:</label>
            <input type="text" name="employeeName" required />

            <label>Employee Email:</label>
            <input type="email" name="employeeEmail" required />

            <label>Employee Location:</label>
            <input type="text" name="employeeLocation" required />

            <input type="submit" value="Submit" />
        </form>

        <div class="link-container">
            <a href="/displayAll">View All Employees</a>
        </div>
    </div>
</body>
</html>
