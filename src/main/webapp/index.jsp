<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "some title" %></title>
</head>
<body>
    <c:if test="true">
        <h1><a href="login.jsp">login page</a></h1>
        <h1><a href="profile.jsp">profile page</a></h1>
    </c:if>
    <c:if test="false">
        <h1><a href="profile.jsp">profile page</a></h1>
    </c:if>
</body>
</html>
