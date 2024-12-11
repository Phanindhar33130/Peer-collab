<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Assignments</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 20px;
    }

    h1 {
        text-align: center;
        color: #333;
        margin-bottom: 20px;
        font-size: 24px;
    }

    .card-container {
        display: flex;
        flex-wrap: wrap;
        gap: 15px;
        justify-content: center;
    }

    .card {
        background-color: #ffffff;
        border: 1px solid #ddd;
        border-radius: 8px;
        padding: 15px;
        width: 280px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        transition: transform 0.2s ease;
    }

    .card:hover {
        transform: scale(1.03);
    }

    .card h3 {
        color: #007bff;
        margin-bottom: 10px;
        font-size: 18px;
    }

    .card p {
        color: #555;
        margin: 5px 0;
        font-size: 14px;
    }
</style>
</head>
<body>
    <%@include file="adminnavbar.jsp"%>

    <h1>View Assignments</h1>
    <div class="card-container">
        <c:forEach items="${eventlist}" var="event">
            <div class="card">
                <h3><c:out value="${event.ename}" /></h3>
                <p><strong>ID:</strong> <c:out value="${event.eid}" /></p>
                <p><strong>Description:</strong> <c:out value="${event.elocation}" /></p>
                <p><strong>Marks:</strong> <c:out value="${event.epoints}" /></p>
                <p><strong>Subject:</strong> <c:out value="${event.ecategory}" /></p>
                <p><strong>Mentor:</strong> <c:out value="${event.eincharge}" /></p>
            </div>
        </c:forEach>
    </div>
</body>
</html>