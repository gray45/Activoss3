<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Registro Telefonico</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <base href="http://localhost:87843/Activos/" >
    </head>
    
    <body>
        <%@ include file="/presentacion/Header.jsp" %>             
    
        <label>Para crear una solicitud </label> <a href="/Activos/presentacion/solicitud/create/View.jsp"> click aqui! </a>
        <label>Para crear una dependencia </label> <a href="/Activos/presentacion/dependencia/dependencia.jsp"> click aqui! </a>
    
        <form action="/Controller/DependenciaController">
            <input type="submit" value="dependecia"/>
        </form>
    </body>
</html>

