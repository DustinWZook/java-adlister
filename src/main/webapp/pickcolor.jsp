<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp"/>
    <title>Pick a color</title>
</head>
<body>
    <jsp:include page="partials/navbar.jsp"/>
    <div class="container">
        <h1>Pick a color</h1>
        <form action="/pickcolor" method="POST">
            <div class="form-group">
                <label for="pickAColor">Favorite Color</label>
                <br>

                <input id="pickAColor" name="pickAColor" class="form-control" type="text">
            </div>
            <input type="submit" class="btn btn-primary btn-block" value="Submit">
        </form>
    </div>
</body>
</html>
