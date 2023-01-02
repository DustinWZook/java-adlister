<jsp:useBean id="favoriteColor" scope="request" type="PickAColorServlet"/>
<%--
  Created by IntelliJ IDEA.
  User: dustinzook
  Date: 1/2/23
  Time: 9:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="partials/head.jsp"/>
    <title>Favorite Color</title>
</head>
<body>
  <jsp:include page="partials/navbar.jsp"/>
<h1>${favoriteColor} is your favorite color</h1>
</body>
</html>
