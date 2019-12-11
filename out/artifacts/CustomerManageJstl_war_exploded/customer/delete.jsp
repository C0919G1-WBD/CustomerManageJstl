<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/12/2019
  Time: 8:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Delete Customer</title>
</head>
<body>
    <h1>Do you want to delete this customer?</h1>
    <form action="/customer?action=delete&id=${requestScope['customer'].getId()}" method="post">
        <table>
            <tr>
                <td><input type="submit" value="Yes"></td>
                <td><button><a href="/customer">No</a></button></td>
            </tr>
        </table>
    </form>
</body>
</html>
