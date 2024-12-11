<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Application Home</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            min-height: 100vh;
            background-color: #f0f0f0;
            display: flex;
            flex-direction: column;
            align-items: center;
            color: #333;
        }

        .navbar {
            width: 100%;
            background: rgba(0, 0, 0, 0.7);
            padding: 1rem 2rem;
            position: fixed;
            top: 0;
            left: 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            color: white;
            z-index: 1000;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 1rem;
            font-size: 1.1rem;
            transition: color 0.3s ease;
        }

        .navbar a:hover {
            color: #ffcc00;
        }

        .navbar .logo {
            font-size: 1.5rem;
            font-weight: bold;
        }

        .content {
            text-align: center;
            z-index: 2;
            margin-top: 10%;
            padding: 2rem;
        }

        .content h1 {
            font-size: 3rem;
            color: #333;
            margin-bottom: 1rem;
        }

        .content p {
            font-size: 1.3rem;
            margin-top: 1rem;
            color: #666;
        }

        .section {
            display: flex;
            align-items: center;
            padding: 2rem;
            width: 100%;
        }

        .section:nth-child(even) {
            flex-direction: row-reverse;
        }

        .section img {
            width: 50%;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .section .text-content {
            width: 50%;
            padding: 2rem;
        }

        .section .text-content h2 {
            font-size: 2rem;
            color: #333;
        }

        .section .text-content p {
            margin-top: 1rem;
            font-size: 1.2rem;
            color: #666;
        }

        .footer {
            width: 100%;
            background: #333;
            color: white;
            padding: 2rem;
            text-align: center;
            margin-top: 2rem;
        }

        .footer .footer-links {
            display: flex;
            justify-content: center;
            gap: 2rem;
            margin-bottom: 1rem;
        }

        .footer .footer-links a {
            color: #ffcc00;
            text-decoration: none;
            font-size: 1rem;
        }

        .footer .footer-links a:hover {
            text-decoration: underline;
        }

        .footer p {
            font-size: 0.9rem;
            color: #ccc;
        }
    </style>
</head>
<body>
    <nav class="navbar">
     
         <a href="#" class="logo">
            <img src=""D:\JFSD\SpringBoot\SDPBackend\src\main\webapp\Screenshot 2024-11-07 120338.png"" alt="Peer Collab">
        </a>
        <div>
        
            <a href="about.jsp">About</a>
            <a href="contact.jsp">Contact</a>
            <a href="overalllogins">Login</a>
          
        </div>
    </nav>

    <div class="content">
    <h1>"Collaborate, Review, Grow: Where every idea, feedback, and insight shapes the future."</h1>
    <p>Welcome to PeerHub, a collaborative platform where students and mentors come together to review, share, and improve learning experiences.</p>
</div>

<div class="section">
    <img src="https://th.bing.com/th/id/OIP.iYBXD0Mvk-vTgbmWcsTnLwHaEK?rs=1&pid=ImgDetMain" alt="Collaborative Learning">
    <div class="text-content">
        <h2>Peer Reviews</h2>
        <p>"Feedback fuels improvement—where peer reviews help you sharpen your skills and broaden your perspectives."</p>
    </div>
</div>

<div class="section">
    <img src="https://gp1.com/wp-content/uploads/2018/08/Coach.jpg" alt="Mentorship">
    <div class="text-content">
        <h2>Mentorship & Guidance</h2>
        <p>Connect with experienced mentors who provide constructive feedback, offering invaluable insights to enhance your academic journey.</p>
        <p>"Mentors guide, inspire, and challenge you to achieve excellence, driving growth through every feedback loop."</p>
    </div>
</div>

<div class="section">
    <img src="https://th.bing.com/th/id/OIP.iYBXD0Mvk-vTgbmWcsTnLwHaEK?rs=1&pid=ImgDetMain" alt="Educational Resources">
    <div class="text-content">
        <h2>Comprehensive Learning Resources</h2>
        <p>Explore a wide range of resources tailored to help you review and improve your work, enhancing your learning experience.</p>
        <p>"Access the best tools and materials to support your academic growth, from writing guides to evaluation templates."</p>
    </div>
</div>

<div class="section">
    <img src="https://vtmnsscollege.ac.in/wp-content/uploads/2017/11/Student-club-activities.jpg" alt="Student Activities">
    <div class="text-content">
        <h2>Student Collaboration Hub</h2>
        <p>Join vibrant student groups where you can share feedback, collaborate on projects, and build a community of learners.</p>
        <p>"Collaborative learning thrives when students exchange ideas, review each other's work, and inspire improvement."</p>
    </div>
</div>


    <div class="footer">
        <div class="footer-links">
            <a href="about.jsp">About</a>
            <a href="contact.jsp">Contact</a>
            <a href="feedback.jsp">Feedback</a>
            <a href="mailto:eswarsai1668@gmail.com">Chat with Us</a>
        </div>
        <p>&copy; 2024 KL Hub. All rights reserved. | KL Hub: Inspiring growth and innovation in every learner.</p>
    </div>
</body>
</html>
