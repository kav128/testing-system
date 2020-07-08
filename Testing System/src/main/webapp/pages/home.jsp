<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="user" scope="session" type="com.epam.practice.testingsystem.data.dto.User"/>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-flat.css">
</head>
<body>
    <jsp:include page="header.jsp" />
    <h1>Hello, ${user.name}!</h1>
    <section>
        <p>Attempts:</p>
        <table class="w3-table w3-bordered">
            <tr>
                <th>Test</th>
                <th>Score</th>
                <th>Time</th>
            </tr>
            <c:forEach var="attempt" items="${requestScope.attempts}">
            <tr>
                <td>${attempt.test.name}</td>
                <td>${attempt.score}</td>
                <td>${attempt.dateTime}</td>
            </tr>
            </c:forEach>
        </table>
    </section>
</body>
</html>
