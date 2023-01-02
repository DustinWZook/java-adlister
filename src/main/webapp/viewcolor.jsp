<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="partials/head.jsp"/>
    <title>Favorite Color</title>
</head>
<body style="background-color: ${favoriteColor}">
  <jsp:include page="partials/navbar.jsp"/>
<h1>${favoriteColor} is your favorite color</h1>
</body>
</html>
