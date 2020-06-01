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
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <style type="text/css">
      .pro {
        height: 300px;
        width: 250px;
        border: 1px solid blue;
        padding-left: 15px;
      }
      button{
        border: 1px solid;
        background-color: blue;
        color: white;
        padding: 10px;
        border-radius: 5px;
      }
      input{
        height: 25px;
        width: 200px;
        padding: 10px;
        margin-bottom: 15px;
        border-radius: 7px;
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
  <form action="/action_page.php">
    <div class="form-group">
      <label for="email">Email address:</label>
      <input type="email" class="form-control" placeholder="Enter email" id="email" style="width: 250px">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" placeholder="Enter password" id="pwd" style="width: 250px">
    </div>
    <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox"> Remember me
      </label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
  </body>
</html>
