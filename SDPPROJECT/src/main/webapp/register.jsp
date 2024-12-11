<%@ page import="com.klef.jfsd.springboot.model.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Student s = (Student) session.getAttribute("student");
    if(s == null) {
        response.sendRedirect("stusessionfail");
        return; // if executed, it will not proceed further
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Register for Event</title>
    <style>
        /* Body styling for full-page layout */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
            background: linear-gradient(135deg, #f0f8ff, #e0e7ff);
        }

        /* Vertical navbar */
        .navbar {
            width: 200px;
            background-color: #3b82f6;
            color: white;
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            padding-top: 30px;
            padding-left: 20px;
            box-sizing: border-box;
        }

        .navbar a {
            display: block;
            color: white;
            padding: 12px 0;
            text-decoration: none;
            margin-bottom: 10px;
            font-size: 18px;
        }

        .navbar a:hover {
            background-color: #2563eb;
            border-radius: 5px;
        }

        /* Main content area (form and file upload) */
        .main-content {
            margin-left: 200px; /* Offset by navbar width */
            padding: 20px;
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            gap: 30px;
            flex-wrap: wrap; /* To wrap content on smaller screens */
        }

        /* Peer Review Form */
        .peer-review-form {
            width: 45%;
            background: #ffffff;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border: 1px solid #ddd;
        }

        .peer-review-form h2 {
            text-align: center;
            color: #3b82f6;
            margin-bottom: 20px;
        }

        .peer-review-form label {
            font-weight: bold;
        }

        .peer-review-form input,
        .peer-review-form textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .peer-review-form button {
            background-color: #3b82f6;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            width: 100%;
        }

        .peer-review-form button:hover {
            background-color: #2563eb;
        }

        /* Student File Upload Section */
        .file-upload-section {
            width: 45%;
            background: #ffffff;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border: 1px solid #ddd;
        }

        .file-upload-section h2 {
            text-align: center;
            color: #3b82f6;
            margin-bottom: 20px;
        }

        .file-upload-section label {
            font-weight: bold;
        }

        .file-upload-section input[type="file"] {
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .file-upload-section button {
            background-color: #3b82f6;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            width: 100%;
        }

        .file-upload-section button:hover {
            background-color: #2563eb;
        }
        /* Responsive design for smaller screens */
        @media (max-width: 768px) {
            .main-content {
                flex-direction: column;
                align-items: center;
                gap: 20px;
            }

            .peer-review-form,
            .file-upload-section {
                width: 100%; /* Full width on smaller screens */
            }
        }
    </style>
</head>
<body>
    <%@ include file="stunavbar.jsp" %>

    <!-- Main content (form and file upload) -->
    <div class="main-content">
        <!-- Peer Review Form -->
        <div class="peer-review-form">
            <h2>Peer Review</h2>
            <form action="/registerPeerReview" method="post">
                <label for="reviewer">Your Name (Reviewer):</label>
                <input type="text" value="<%= s.getName() %>" id="reviewer" name="reviewer" required>
              
                <label for="assignmentName">Assignment/Review Name:</label>
                <input type="text" value="<%= request.getParameter("assignment") %>" id="assignmentName" name="assignmentName" required>

                <label for="reviewee">Peer's Name (Reviewee):</label>
                <input type="text" id="reviewee" name="reviewee" required>

                <label for="email">Your Email:</label>
                <input type="email" value="<%= s.getEmail() %>" id="email" name="email" required>

                <label for="reviewComments">Review Comments:</label>
                <textarea id="reviewComments" name="reviewComments" rows="4" required></textarea>

                <label for="rating">Rating (out of 5):</label>
                <input type="number" id="rating" name="rating" min="1" max="5" required>

                <button type="submit" class="submit-btn">Submit Review</button>
            </form>
        </div>

        <!-- Student File Upload Section -->
        <div class="file-upload-section">
            <h2>Upload Student File</h2>
            <p>Upload an Excel file (.xlsx) for bulk student entry.</p>
            <form action="addStudentfile" method="post" enctype="multipart/form-data">
                <label for="studentFile">Add Students:</label>
                <input type="file" id="studentFile" name="studentFile" accept=".xlsx" required>
                <button type="submit" class="submit-btn">Add File</button>
            </form>
        </div>
    </div>

</body>
</html>