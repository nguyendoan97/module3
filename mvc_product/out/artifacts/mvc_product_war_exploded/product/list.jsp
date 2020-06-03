<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 03/06/2020
  Time: 15:20 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="./product?action=create">Create product</a>
<h1>Product List</h1>
<table style="border: 1px solid pink">
    <tr>
        <th>Name</th>
        <th>ID</th>
        <th>Price</th>
    </tr>
    <c:forEach items="${products}" var="product">
        <tr>
            <td>${product.name}</td>
            <td>${product.id}</td>
            <td>${product.price}</td>
            <td><a href="./product?action=edit&id=${product.getId()}">edit</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
