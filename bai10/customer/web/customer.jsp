<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 03/06/2020
  Time: 9:11 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        table{
            border-collapse:collapse ;
            border: 1px solid;
            align-content: center;
        }
        th{
            font-size: 20px;
            text-align: center;
            border: 1px solid;
            padding: 10px;
        }
        td{
            text-align: center;
            border: 1px solid;
            padding:10px;
        }
    </style>
</head>
<body>
<%
    List listmy = (ArrayList)request.getAttribute("cust");
%>

<table>
    <tr>
        <th>
            Tên
        </th>
        <th>
            Ngày Sinh
        </th>
        <th>
            Địa chỉ
        </th>
    </tr>
    <c:forEach items="<%=listmy%>" var="custom">
        <tr>
            <td>
                <c:out value="${custom.getName()}"/>
            </td>
            <td>
                <c:out value="${custom.getBirthday()}"/>
            </td>
            <td>
                <c:out value="${custom.getAddress()}"/>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
