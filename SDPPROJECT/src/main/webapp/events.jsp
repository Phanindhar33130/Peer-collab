<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Sphere - Events</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            margin: 0;
            padding: 20px;
            background-color: #f9f9f9;
        }
        h1 {
            width: 100%;
            text-align: center;
            font-size: 36px;
            margin-bottom: 20px;
        }
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            width: 100%;
            max-width: 1200px;
        }
        .card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            padding: 20px;
            width: 300px;
            box-sizing: border-box;
            text-align: center;
            transition: transform 0.3s ease;
        }
        .card:hover {
            transform: translateY(-5px);
        }
        .card h2 {
            font-size: 24px;
            color: #333;
        }
        .card p {
            font-size: 16px;
            color: #666;
            margin: 8px 0;
        }
        .register-btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            font-size: 16px;
            border-radius: 5px;
            text-align: center;
        }
        .register-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
   <%@include file="stunavbar.jsp" %>
    <h1>Events</h1>

    <div class="card-container">
        <!-- Event Card 1 -->
        <div class="card">
    <h2>Assignment Review Session</h2>
    <p><strong>Assignment Name:</strong> Final Year Project Report</p>
    <p><strong>Description:</strong> Review and feedback on the project documentation.</p>
    <p><strong>Marks:</strong> 50</p>
    <p><strong>Subject:</strong> Software Engineering</p>
    <p><strong>Mentor:</strong> Prof. Anitha Reddy</p>
    <form action="register.jsp" method="get">
        <input type="hidden" name="event" value="Assignment Review Session">
        <button type="submit" class="register-btn">View</button>
    </form>
</div>

<!-- Event Card 2 -->
<div class="card">
    <h2>Peer Feedback Session</h2>
    <p><strong>Assignment Name:</strong> Code Optimization</p>
    <p><strong>Description:</strong> Collaborative review of code for efficiency and clarity.</p>
    <p><strong>Marks:</strong> 30</p>
    <p><strong>Subject:</strong> Advanced Programming</p>
    <p><strong>Mentor:</strong> Prof. Vijay Kumar</p>
    <form action="register.jsp" method="get">
        <input type="hidden" name="event" value="Peer Feedback Session">
        <button type="submit" class="register-btn">View</button>
    </form>
</div>

<!-- Event Card 3 -->
<div class="card">
    <h2>Assignment Discussion Forum</h2>
    <p><strong>Assignment Name:</strong> Network Security Case Study</p>
    <p><strong>Description:</strong> Interactive forum to discuss and critique assignment solutions.</p>
    <p><strong>Marks:</strong> 40</p>
    <p><strong>Subject:</strong> Cybersecurity</p>
    <p><strong>Mentor:</strong> Dr. Priya Sharma</p>
    <form action="register.jsp" method="get">
        <input type="hidden" name="event" value="Assignment Discussion Forum">
        <button type="submit" class="register-btn">View</button>
    </form>
</div>
<!-- Event Card 4 -->
<div class="card">
    <h2>Collaborative Grading Session</h2>
    <p><strong>Assignment Name:</strong> Research Paper Draft</p>
    <p><strong>Description:</strong> Joint evaluation of research drafts with peer insights.</p>
    <p><strong>Marks:</strong> 20</p>
    <p><strong>Subject:</strong> Research Methodologies</p>
    <p><strong>Mentor:</strong> Prof. Kiran Rao</p>
    <form action="register.jsp" method="get">
        <input type="hidden" name="event" value="Collaborative Grading Session">
        <button type="submit" class="register-btn">View</button>
    </form>
</div>

    </div>

</body>
</html>