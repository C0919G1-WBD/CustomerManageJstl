<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/12/2019
  Time: 12:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Customer view</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <h1 class="main-content">Customer view</h1>
    <p><a href="/customer">Back to customer list</a></p>
    <table>
        <tr>
            <td>Name: </td>
            <td>${customer.getName()}</td>
        </tr>
        <tr>
            <td>Email: </td>
            <td>${customer.getEmail()}</td>
        </tr>
        <tr>
            <td>Address: </td>
            <td>${customer.getAddress()}</td>
        </tr>
    </table>
</body>
</html>
