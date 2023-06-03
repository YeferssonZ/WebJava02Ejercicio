<%@page import="com.miempresa.OperacionesBasicas" %>
<%@page import="java.util.Date"%>
<%@page language="java" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Operaciones Básicas</title>
<style>
    body {
        background-color: #f5f5f5;
    }
    form {
        margin: auto;
        width: 50%;
        padding: 20px;
        background-color: #ffffff;
        border: 1px solid #dddddd;
        border-radius: 5px;
    }
    label {
        display: inline-block;
        width: 100px;
        text-align: right;
        margin-right: 10px;
    }
    input[type="number"] {
        width: 150px;
        padding: 5px;
        border-radius: 3px;
        border: 1px solid #cccccc;
    }
    input[type="submit"] {
        width: 80px;
        padding: 10px;
        border-radius: 2px;
        border: none;
        background-color: #4caf50;
        color: #ffffff;
        font-weight: bold;
    }
    p {
        margin: 10px 0;
        font-size: 16px;
        font-weight: bold;
    }
    .error {
        color: #ff0000;
        font-weight: normal;
    }
</style>
</head>
<body>
    <form action="OperacionesBasicas.jsp" method="post">
        <h1>Operaciones Básicas</h1>
        <label>Primer número:</label>
        <input type="number" name="num1"><br>
        <label>Segundo número:</label>
        <input type="number" name="num2"><br>
        <input type="submit" name="sumar" value="Sumar">
        <input type="submit" name="restar" value="Restar">
        <input type="submit" name="multiplicar" value="Multiplicar">
        <input type="submit" name="dividir" value="Dividir">
    </form>
    
    <%-- Procesamiento de la solicitud --%>
    <% 
        if (request.getMethod().equalsIgnoreCase("POST")) {
            int num1 = Integer.parseInt(request.getParameter("num1"));
            int num2 = Integer.parseInt(request.getParameter("num2"));
            OperacionesBasicas ops = new OperacionesBasicas();
            
            if (request.getParameter("sumar") != null) {
                int resultado = ops.suma(num1, num2);
                out.print("<p>El resultado de la suma es: " + resultado + "</p>");
            } else if (request.getParameter("restar") != null) {
                int resultado = ops.resta(num1, num2);
                out.print("<p>El resultado de la resta es: " + resultado + "</p>");
            } else if (request.getParameter("multiplicar") != null) {
                int resultado = ops.multiplicacion(num1, num2);
                out.print("<p>El resultado de la multiplicación es: " + resultado + "</p>");
            } else if (request.getParameter("dividir") != null) {
                try {
                    double resultado = ops.division(num1, num2);
                    out.print("<p>El resultado de la división es: " + resultado + "</p>");
                } catch (IllegalArgumentException e) {
                    out.print("<p>Error: " + e.getMessage() + "</p>");
                }
            }
        }
    %>
</body>
</html>