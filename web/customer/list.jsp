<%--
  Created by IntelliJ IDEA.
  User: vietngatran
  Date: 06/11/2019
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List customer</title>
</head>
<body>
<h1>Customer</h1>
<p>
    <a href="/customers?action=create">Create new customer</a>
</p>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Email</td>
        <td>Adress</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["customers"]}' var="customer">
       <tr>
           <td><a href="/customers?action=view&id=${customer.getId()}">${customer.getName()}</a></td>
           <td>${customer.getEmail()}</td>
           <td>${customer.getAddress()}</td>
           <td><a href="/customers?action=edit&id=${customer.getId()}">edit</a></td>
           <td><a href="/customers?action=edit&id=${customer.getId()}">delete</a></td>
       </tr>
    </c:forEach>
</table>
</body>
</html>
