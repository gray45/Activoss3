<%-- 
    Document   : dependencia
    Created on : 22/03/2019, 08:02:24 PM
    Author     : grave
--%>

<%@page import="activos.logic.Dependencia"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="../../js/jquery.min.js" type="text/javascript"></script>
        <script src="../../js/bootstrap.min.js" type="text/javascript"></script>
        <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/estilo.css" rel="stylesheet" type="text/css"/>
        <title>Dependencias</title>
    </head>
    <body>
        <div>
            <h1>Dependencias</h1>
            <form action="DependenciaController">
                <h3>Nueva Dependencia</h3>
                <label>
                    Descripcion
                </label>
                <input type="text" name="descripcion" />
                <input type="text" name="action" value="agregar" style= "display: none;"/>
                <input type="submit" value="Agregar"/>
            </form>
            <% List<Dependencia> model = (List<Dependencia>) request.getAttribute("dependencias");%>
            <table class="table-hover">
                <tr>
                    <th>Id</th><th>Dependencia</th>
                </tr>
                <% for (Dependencia dependencia : model) {%>
                <tr>
                    <td><%=dependencia.getId()%></td>
                    <td><%=dependencia.getDescripcion()%></td>
                </tr>
                <% }%>

            </table>

        </div>

    </body>
</html>
