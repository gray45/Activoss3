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
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<title>Dependencias</title>
        <link href="../../css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div  class="container-fluid">
            <h1 id="blue" >Dependencias</h1>
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4">
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
            <table class="table table-striped">
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
                <div class="col-4"></div>
</div>
        </div>

    </body>
</html>
