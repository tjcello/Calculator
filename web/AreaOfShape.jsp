<%-- 
    Document   : Work
    Created on : Feb 1, 2016, 12:18:59 PM
    Author     : Thomas
--%>

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
    <center><img src="rectangle.gif"/></center>
    <p>
        <%
            Object responseObj1 = request.getAttribute("myMsg1");
            Object errObj1 = request.getAttribute("errorMsg");

            if (responseObj1 != null) {
                out.println(responseObj1.toString());
            }

            if (errObj1 != null) {
                out.println(errObj1.toString());
            }
        %>
    </p>
    <center><h1>Area of Circle</h1></center>
    <form id="circle" method="POST" action="ActionGenerator?calculator=areaOfCircle">
        <label>Enter Radius</label>
        <input type="number" name="radius" value=""/><br>

        <input type="submit" name="submit" value="Calculate"/>
    </form>
    <center><img src="circle.jpg"/></center>
    <p>
        <%
            Object responseObj2 = request.getAttribute("myMsg2");
            Object errObj2 = request.getAttribute("errorMsg");

            if (responseObj2 != null) {
                out.println(responseObj2.toString());
            }

            if (errObj2 != null) {
                out.println(errObj2.toString());
            }
        %>
    </p>
    <center><h1>Area of Triangle</h1></center>
    <form id ="triangle" method="POST" action="ActionGenerator?calculator=areaOfTriangle">
        <label>Enter Base</label>
        <input type="number" name="base" value=""/><br>
        <label>Enter Height</label>
        <input type="number" name="height" value=""/><br>
        <input type="submit" name="submit" value="Calculate"/>
    </form>
    <center><img src="triangle (1).jpg"/></center>
    <p>
        <%
            Object responseObj3 = request.getAttribute("myMsg3");
            Object errObj3 = request.getAttribute("errorMsg");

            if (responseObj3 != null) {
                out.println(responseObj3.toString());
            }

            if (errObj3 != null) {
                out.println(errObj3.toString());
            }
        %>
    </p>
</body>
</html>
