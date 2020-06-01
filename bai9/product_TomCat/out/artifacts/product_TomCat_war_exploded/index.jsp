<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 01/06/2020
  Time: 15:42 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <style type="text/css">
      .pro {
        height: 200px;
        width: 250px;
        border: 1px solid blue;
      }
    </style>
  </head>
  <body>
  <form method="post" action="./product">
    <div class="pro">
      <h3>PRODUCT</h3>
      <input type="text" name="product" placeholder="Sản phẩm">
      <input type="number" name="price" placeholder="Giá SP">
      <input type="number" name="percent" placeholder="Chiết khấu">
      <button type="submit">Tính giá</button>
    </div>
  </form>
  </body>
</html>
