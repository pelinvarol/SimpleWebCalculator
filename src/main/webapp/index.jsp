<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Calculator</title>
</head>
<body>
<div align="center">
    <h1>Web Calculator</h1>
    <form action="calculate" method="post">
        <p>First Number: <input type="number" name="firstNo" required /></p>
        <p>Second Number: <input type="number" name="secondNo" required /></p>
        <p>Select the calculation operation:</br></br>
        <input type="radio" name="operation" value="add">Addition
            <input type="radio" name="operation" value="sub">Subtraction
            <input type="radio" name="operation" value="mul">Multiplication
            <input type="radio" name="operation" value="div">Division
        </p>
        <p> <input type="submit" value="RUN" /></p>
        <p> <input type="reset" value="RESET" /></p>
    </form>
</div>
</body>
</html>