<%@page import="com.klef.jfsd.springboot.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  Student s = (Student) session.getAttribute("student");
  if (s == null) {
      response.sendRedirect("stusessionfail");
      return;
  }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Home</title>
    <style>
        /* Global Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        /* Navbar */
        nav {
            width: 100%;
            padding: 1rem 2rem;
            background: #3b82f6;
            color: #ffffff;
            font-size: 1.1rem;
            text-align: center;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        nav a {
            color: #ffffff;
            text-decoration: none;
            margin: 0 1rem;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        nav a:hover {
            color: #ffcc00;
        }

        /* Welcome Section */
        .welcome-section {
            margin-top: 2rem;
            padding: 2rem;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 800px;
            width: 100%;
        }

        .welcome-section h1 {
            font-size: 2.5rem;
            color: #3b82f6;
            margin-bottom: 0.5rem;
        }

        .welcome-section p {
            font-size: 1.2rem;
            color: #555;
            margin-top: 0.5rem;
        }

        /* Content Section */
        .content-section {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            padding: 2rem;
            max-width: 1000px;
            width: 100%;
            margin-top: 2rem;
        }

        /* Info Card */
        .info-card {
            background: #ffffff;
            padding: 1.5rem;
            border-radius: 10px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s ease;
            height: 200px;
        }

        .info-card:hover {
            transform: scale(1.05);
        }

        .info-card h3 {
            font-size: 1.6rem;
            color: #3b82f6;
            margin-bottom: 1rem;
        }

        .info-card p {
            font-size: 1.1rem;
            color: #666;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .welcome-section {
                width: 90%;
            }

            .content-section {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <%@include file="stunavbar.jsp" %>

    <!-- Welcome Section -->
    <div class="welcome-section">
        <h1>Welcome, <%= s.getName() %>!</h1>
        <p>Welcome to your peer review collaboration platform. Track your assignments, collaborate with peers, and enhance your skills.</p>
    </div>

    <!-- Content Section -->
    <div class="content-section">
        <!-- Assignment Card -->
        <div class="info-card">
            <h3>Your Current Assignments</h3>
            <p>Review and submit your assignments on time. Don't forget to check your deadlines!</p>
        </div>

        <!-- Peer Review Card -->
        <div class="info-card">
            <h3>Peer Reviews</h3>
            <p>Provide valuable feedback to your peers and contribute to their learning journey!</p>
        </div>
        <!-- Progress Card -->
        <div class="info-card">
            <h3>Track Your Progress</h3>
            <p>Monitor your academic progress and see how you're advancing through assignments and reviews.</p>
        </div>
    </div>
</body>
</html>