<%-- 
    Document   : Work
    Created on : Feb 1, 2016, 12:18:59 PM
    Author     : Thomas
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page Of Calculators</title>
        <link href="calculator.css" rel="stylesheet">
    </head>
    <body>
    <center><h1>Area of Rectangle</h1></center>
    <form id="rectangle" method="POST" action="ActionGenerator?calculator=areaOfRectangle">
        <label>Enter Length</label>
        <input type="number" name="length" value=""/><br>
        <label>Enter Width</label>
        <input type="number" name="width" value=""/><br>
        <input type="submit" name="submit" value="Calculate"/>
    </form>
    <p>
        <c:out value="${myRectangle}"></c:out>
    </p>
    <center><h1>Area of Circle</h1></center>
    <form id="circle" method="POST" action="ActionGenerator?calculator=areaOfCircle">
        <label>Enter Radius</label>
        <input type="number" name="radius" value=""/><br>

        <input type="submit" name="submit" value="Calculate"/>
    </form>
    <p>
    <c:out value="${myCircle}"></c:out>
    </p>
    <center><h1>Area of Triangle</h1></center>
    <form id ="triangle" method="POST" action="ActionGenerator?calculator=areaOfTriangle">
        <label>Enter Base</label>
        <input type="number" name="base" value=""/><br>
        <label>Enter Height</label>
        <input type="number" name="height" value=""/><br>
        <input type="submit" name="submit" value="Calculate"/>
    </form>
    <p>
        <c:out value="${myTriangle}"></c:out>
    </p>
</body>
</html>
