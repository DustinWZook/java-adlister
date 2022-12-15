
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String userName = request.getParameter("username");
    String userPassword = request.getParameter("password");
    if (request.getMethod().equalsIgnoreCase("POST")){
        if (userName.equals("admin") && userPassword.equals("password")){
            response.sendRedirect("/profile.jsp");
        }else {
            response.sendRedirect("/login.jsp");
        }
    }


%>

<html>
<head>
    <title>Login></title>
</head>
<body>
    <jsp:include page="partials/navbar.jsp"/>
  <h1>Login</h1>
    <form action="/login.jsp" method="post">
        <label for="username">Username</label>
        <input id="username" name="username" type="text">
        <br>

        <label for="password">password</label>
        <input id="password" name="password" type="password">
        <br>
        <input type="submit">
    </form>

</body>
</html>
