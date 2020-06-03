<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="pack.custom" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <style>
      td{
        border: 1px solid;
      }
    </style>
  </head>
  <body>
  <%
    List<custom> list= new ArrayList<>();
    list.add(new custom("Đông","23","Nam Định"));
    list.add(new custom("Đăng","27","Nam Định"));
    list.add(new custom("Long","27","Vĩnh Phúc"));
  %>

  <table style="border: 1px solid ;border-collapse: collapse;">
    <tr>
      <td>
        Tên
      </td>
      <td>
        Ngày Sinh
      </td>
      <td>
        Địa chỉ
      </td>
    </tr>
    <% for (int i  = 0;i < list.size(); i ++) { %>
    <tr>
     <td>
       <%= list.get(i).getName()%>
     </td>
    <td>
       <%= list.get(i).getYear()%>
     </td>
    <td>
       <%= list.get(i).getAddress()%>
     </td>
    </tr>
    <% }
    %>

  </table>
  </body>
</html>
