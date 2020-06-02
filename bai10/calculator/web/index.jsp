<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>calculator.Calculator</title>
</head>
<body>
<h1>Simple calculator.Calculator</h1>
<form method="post" action="Calculator.jsp">
  <fieldset>
    <legend>calculator.Calculator</legend>
    <table>
      <tr>
        <td>First operand: </td>
        <td><input name="first-operand" type="text"/></td>
      </tr>
      <tr>
        <td>Operator: </td>
        <td>
          <select name="operator">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">X</option>
            <option value="/">/</option>
          </select>
        </td>
      </tr>
      <tr>
        <td>Second operand: </td>
        <td><input name="second-operand" type="text"/></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Calculate"/></td>
      </tr>
    </table>
  </fieldset>
</form>
</body>
</html>