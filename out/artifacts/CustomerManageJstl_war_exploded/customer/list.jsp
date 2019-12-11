<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/12/2019
  Time: 12:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Customer List</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <h1 class="main-content">Customers</h1>
    <p><a href="/customer?action=create">Create new customer</a></p>
    <table border="1">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Address</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach items="${requestScope['customers']}" var="cus">
            <tr>
                <td>${cus.getId()}</td>
                <td><a href="/customer?action=view&id=${cus.getId()}">${cus.getName()}</a></td>
                <td>${cus.getEmail()}</td>
                <td>${cus.getAddress()}</td>
                <td><a href="/customer?action=edit&id=${cus.getId()}">Sửa</a></td>
                <td><a href="/customer?action=delete&id=${cus.getId()}">Xóa</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
