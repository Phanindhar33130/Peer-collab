<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Home Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }
        .content {
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            max-width: 800px;
            margin: 40px auto;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333333;
        }
        p {
            font-size: 16px;
            line-height: 1.6;
            color: #555555;
            margin: 10px 0;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            background-color: #f0f0f0;
            padding: 10px;
            margin: 8px 0;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <div class="content">
        <h1>Welcome, Admin</h1>
        <p>You can manage all aspects of the peer review collaboration platform from here. Below is a summary of your key responsibilities:</p>
        <ul>
            <li><strong>Assignment Management:</strong> Create, edit, and monitor assignments for students.</li>
            <li><strong>Reviewer Allocation:</strong> Assign reviewers to ensure balanced and fair peer reviews.</li>
            <li><strong>Progress Tracking:</strong> Keep track of review submissions and deadlines.</li>
            <li><strong>Feedback Oversight:</strong> Review and respond to student feedback to improve the collaboration process.</li>
            <li><strong>Reports:</strong> Analyze and generate performance reports for both assignments and reviews.</li>
        </ul>
        <p>Maintain a smooth and productive environment for students and mentors by leveraging the tools available to you as an administrator.</p>
    </div>
</body>
</html>