<%--
  Created by IntelliJ IDEA.
  User: dustinzook
  Date: 12/16/22
  Time: 12:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp"/>
    <title>Pizza Order</title>
</head>
<body>
    <jsp:include page="partials/navbar.jsp"/>

    <h1>Order Pizza</h1>
    <form action="/pizza-order" method="post">
        <label for="pizzaCrust">Select crust</label>
        <select id="pizzaCrust" name="pizzaCrust">
            <option value="thin">Thin crust</option>
            <option value="hand">Hand tossed</option>
            <option value="pan">Pan crust</option>
        </select>
        <br>
        <br>
        <label for="pizzaSauce">Select sauce</label>
        <select id="pizzaSauce" name="pizzaSauce">
            <option value="light">light sauce</option>
            <option value="normal">Normal sauce</option>
            <option value="extra">Extra sauce</option>
        </select>
        <br>
        <br>
        <label for="pizzaSize">Select size</label>
        <select id="pizzaSize" name="pizzaSize">
            <option value="small">small</option>
            <option value="medium">medium</option>
            <option value="large">large</option>
        </select>
        <br>
        <br>
        <label>Select toppings</label>
        <input id="pepperoni" name="pepperoni" value="pepperoni" type="checkbox">pepperoni
        <br>
        <input id="sausage" name="sausage" value="sausage" type="checkbox">sausage
        <br>
        <input id="ham" name="ham" value="ham" type="checkbox">ham
        <br>
        <br>
        <label for="address">Enter delivery address</label>
        <input id="address" type="text" name="address">
        <br>
        <button type="submit">Submit order</button>

    </form>


</body>
</html>
