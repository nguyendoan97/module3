<%@ page import="calculator.Calculator" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 02/06/2020
  Time: 16:03 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ page errorPage="error.jsp" %>
<%
    float firstOperand = Integer.parseInt(request.getParameter("first-operand"));
    float secondOperand = Integer.parseInt(request.getParameter("second-operand"));
    char operator = request.getParameter("operator").charAt(0);
    float result;
        result = Calculator.calculate(firstOperand, secondOperand, operator);
%>
<h3>Result:<%=result%>
</h3>

</body>
</html>
