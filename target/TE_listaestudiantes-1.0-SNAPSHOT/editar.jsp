


<%@page import="com.emergentes.modelo.Estudiante"%>
<%
    Estudiante reg =(Estudiante) request.getAttribute("miobjest");
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de Estudiante</h1>
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%= reg.getId()%>" size="2" readonly></td>
                </tr>
                <tr>
                    <td>Nombre del Estudiante</td>
                    <td><input type="text" name="nombre" value="<%= reg.getNombre()%>"></td>
                </tr>
                <tr>
                    <td>Primer Parcial(sobre 30pts)</td>
                    <td><input type="text" name="P1" value="<%= reg.getP1()  %>"></td>
                </tr>
                <tr>
                    <td>Segundo Parcial(sobre 30pts)</td>
                    <td><input type="text" name="P2" value="<%= reg.getP2()%>"></td>
                </tr>
                <tr>
                    <td>Tercer Parcial(sobre 40pts)</td>
                    <td><input type="text" name="Ef" value="<%= reg.getEf()%>"></td>
                </tr><tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
           
        </form>
    </body>
</html>
