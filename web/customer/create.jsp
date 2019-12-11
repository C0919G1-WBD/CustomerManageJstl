<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/12/2019
  Time: 12:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Create new customer</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
        .message{
            color: green;
        }
    </style>
</head>
<body>
    <h1>Create new customer</h1>
    <p>
        <c:if test='${requestScope["message"] != null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>
    <p>
        <a href="/customer">Back to customer</a>
    </p>
    <form action="/customer?action=create" method="post">
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Email: </td>
                <td><input type="text" name="email" id="email"></td>
            </tr>
            <tr>
                <td>Address: </td>
                <td><input type="text" name="address" id="address"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create customer"></td>
            </tr>
        </table>
    </form>
</body>
</html>
