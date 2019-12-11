<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/12/2019
  Time: 1:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Edit customer</title>
</head>
<body>
    <h1>Edit customer</h1>
    <p>
        <c:if test="${requestScope['message']!=null}">
            <span class="message">${requestScope['message']}</span>
        </c:if>
    </p>
    <p>
        <a href="/customer">Back to customer list</a>
    </p>
    <form action="/customer?action=edit&id=${requestScope['customer'].getId()}" method="post">
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" value='${requestScope["customer"].getName()}'></td>
            </tr>
            <tr>
                <td>Email: </td>
                <td><input type="text" name="email" value='${requestScope["customer"].getEmail()}'></td>
            </tr>
            <tr>
                <td>Address: </td>
                <td><input type="text" name="address" value='${requestScope["customer"].getAddress()}'></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update customer"></td>
            </tr>
        </table>
    </form>
</body>
</html>
