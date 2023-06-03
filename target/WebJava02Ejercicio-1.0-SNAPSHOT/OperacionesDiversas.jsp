<%@page import="com.miempresa.OperacionesDiversas" %>
<%@page import="java.util.Date"%>
<%@page language="java" %>

<html>
<head>
    <title>Operaciones Diversas</title>
    <style>
        h1 {
            font-size: 32px;
            text-align: center;
            margin-bottom: 30px;
        }

        form {
            width: 400px;
            margin: 0 auto;
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type=number] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: none;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
        }

        input[type=submit] {
            width: 100%;
            padding: 10px;
            margin-top: 20px;
            background-color: #008CBA;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .resultados {
            width: 400px;
            margin: 0 auto;
            text-align: center;
            margin-top: 50px;
        }

        h2 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <h1>Operaciones Diversas</h1>
    <form method="post">
        <label for="numero">Número:</label>
        <input type="number" name="numero" id="numero" required><br>
        <label for="exponente">Exponente:</label>
        <input type="number" name="exponente" id="exponente"><br>
        <input type="submit" value="Calcular">
    </form>
    <div class="resultados">
        <%
            if(request.getMethod().equals("POST")) {
                OperacionesDiversas op = new OperacionesDiversas();
                double num = Double.parseDouble(request.getParameter("numero"));
                double exp = Double.parseDouble(request.getParameter("exponente"));
                out.println("<h2>Resultados:</h2>");
                out.println("<p>Raíz cuadrada: " + op.raizCuadrada(num) + "</p>");
                out.println("<p>Raíz cúbica: " + op.raizCubica(num) + "</p>");
                out.println("<p>Valor absoluto: " + op.valorAbsoluto(num) + "</p>");
                if(exp != 0) {
                    out.println("<p>Potencia: " + op.potencia(num, exp) + "</p>");
                }
            }
        %>
    </div>
</body>
</html>


