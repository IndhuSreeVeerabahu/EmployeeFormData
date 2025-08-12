<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>All Employees</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f6fa;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 900px;
            margin: 40px auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
        }
        th, td {
            padding: 12px 15px;
            text-align: left;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #e9f3ff;
        }
        a {
            color: #007bff;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        .back-link {
            text-align: center;
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>All Employees</h2>
        <table>
            <tr>
                <th>Employee ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Location</th>
            </tr>
            <c:forEach var="emp" items="${employees}">
                <tr>
                    <td>
                        <a href="/display/${emp.id}">${emp.empId}</a>
                    </td>
                    <td>${emp.employeeName}</td>
                    <td>${emp.employeeEmail}</td>
                    <td>${emp.employeeLocation}</td>
                </tr>
            </c:forEach>
        </table>

        <div class="back-link">
            <a href="/">← Add New Employee</a>
        </div>
    </div>
</body>
</html>
