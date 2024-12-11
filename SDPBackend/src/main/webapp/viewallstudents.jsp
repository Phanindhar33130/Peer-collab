<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
            color: #333;
        }

        h1 {
            text-align: center;
            color: #444;
            margin-bottom: 20px;
            font-size: 22px;
        }

        .card-container {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
            justify-content: center;
        }

        .card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            width: 150px; /* Small width for compact cards */
            padding: 10px;
            text-align: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s ease;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card h3 {
            font-size: 16px;
            color: #007bff;
            margin: 10px 0 5px;
        }

        .card p {
            font-size: 14px;
            color: #555;
            margin: 5px 0;
        }

        @media (max-width: 768px) {
            .card-container {
                flex-direction: column;
                align-items: center;
            }

            .card {
                width: 200px; /* Slightly larger for better readability on small screens */
            }
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>

    <h1>Student Details</h1>
    <div class="card-container">
        <c:forEach items="${studentlist}" var="student">
            <div class="card">
                <h3><c:out value="${student.sname}" /></h3>
                <p><strong>ID:</strong> <c:out value="${student.sid}" /></p>
            </div>
        </c:forEach>
    </div>
</body>
</html>