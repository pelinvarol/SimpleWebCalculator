<%--
  Created by IntelliJ IDEA.
  User: varol
  Date: 7/3/2023
  Time: 11:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator Result</title>
</head>
<body>
<div align="center">
    <h1>Calculation Result</h1>
    <% String operation = request.getParameter("operation"); %>

    <% int result = 0;
    String operationName = "";
        if (operation.equals("add")) {
            result = (Integer) request.getAttribute("sum");
            operationName = "addition";
        } else if (operation.equals("sub")) {
            result = (Integer) request.getAttribute("sub");
            operationName = "subtraction";
        } else if (operation.equals("mul")) {
            result = (Integer) request.getAttribute("mul");
            operationName = "multiplication";
        } else if (operation.equals("div")) {
            result = (Integer) request.getAttribute("div");
            operationName = "division";
        }
    %>

    <h3>Result of your <%= operationName %> calculation is: <%= result %></h3>
</div>

</body>
</html>
