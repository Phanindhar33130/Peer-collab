<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Employees</title>
</head>
<body>
    <h3>View All Employees</h3> <!-- Styled heading -->
    <table>
        <tr>
            <th>ID</th>
            <th>EVENTNAME</th>
            <th>DATE OF THE EVENT</th>
            <th>DOMAIN</th>
            <th>LOCATION</th>
            <th>POINTS</th>
            
        </tr>
        <c:forEach items="${eventlist}" var="event">
            <tr>
                <td><c:out value="${event.id}"/></td>
                <td><c:out value="${event.EventName}"/></td>
                <td><c:out value="${event.Date}"/></td>
                <td><c:out value="${event.Points}"/></td>
                <td><c:out value="${event.Domain}"/></td>
                <td><c:out value="${event.Location}"/></td>
            </tr>
        </c:forEach>
    </table>
    
    
</body>
</html>