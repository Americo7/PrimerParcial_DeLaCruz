
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Estudiante"%>

<%
    if (session.getAttribute("listaest") == null) {
        ArrayList<Estudiante> lisaux = new ArrayList<Estudiante>();
        session.setAttribute("listaest", lisaux);
    }
    ArrayList<Estudiante> lista = (ArrayList<Estudiante>) session.getAttribute("listaest");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 50px;
        }
        .datos-personales {
            margin-bottom: 20px;
            text-align: center;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
            padding: 20px;
            max-width: 300px;
            margin: 0 auto;
        }
        form {
            margin: auto;
            width: 300px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="number"] {
            width: calc(100% - 20px);
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="datos-personales">
        <p>Primer Parcial TEM-742</p>
        <p>Nombre: Rodrigo Americo De La Cruz</p>
        <p>Carnet: 13854969</p>
    </div>
</head>

   
    <body>
        <h1>Registro de calificaciones</h1>
        <a href="MainServlet?op=nuevo">Nuevo Registro</a>
        <table border = "1">
            <tr>
                <th>ID</th>
                <th>NOMBRE</th>
                <th>P1(30)</th>
                <th>P2(30)</th>
                <th>EF(40)</th>
                <th>Nota</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if(lista != null){
                    for(Estudiante item: lista){
                %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getNombre()%></td>
                <td><%= item.getP1()%></td>
                <td><%= item.getP2()%></td>
                <td><%= item.getEf()%></td>
                <td><%= item.getNota()%></td>
                <td>
                    <a href="MainServlet?op=editar&id=<%= item.getId()%>">Editar</a>
                </td>
                <td>
                    <a href="MainServlet?op=eliminar&id=<%= item.getId()%>"
                       onclick="return(confirm('Esta seguro de Eliminar??'))"
                       >Eliminar</a>
                </td>
            </tr>
            <%
                }
                }
                %>
                 </table>
               
    </body>
</html>
