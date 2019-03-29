<%-- 
    Document   : NuevaSolicitud
    Created on : 26/03/2019, 10:07:09 PM
    Author     : grave
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@ include file="../../Head.jsp" %>
    </head>
    <body id="soli">
        <div class="bodySoli">
            <div class="div1Soli">
                <a href="principal.html">Principal</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="index.html">Login</a>
            </div>
            <div class="div2Soli">
                <h3>SOLICITUD</h3>
                <center>
                <input class=" col-md-6 form-control" type="text"  name="ncomprobante" placeholder="Numero Comprobante"></br>
                <input class=" col-md-6 form-control" type="text" name="fecha" placeholder="dia/mes/año"></br>
                <div class="col-md-6">
                    <select class="form-control">
                        <option value="compra">Compra</option>
                        <option value="Donacion">Donacion</option>
                    </select>
                </div></br>
                <input type="submit" name="" value="Agregar">
                </center>
            </div>
            <div>
                <hr class="linea" id="linea"/>
            </div>
            <div class="divBienes">
                <center><h4 class="col-md-4">BIENES</h4></center>
                
                <table>
                    <thead>
                        <tr>
                        <th>Descripcion</th>
                        <th>Marca</th>
                        <th>Modelo</th>
                        <th>Precio&nbsp;Unitario</th>
                        <th>Cantidad</th>
                        </th>
                        </tr>
                    </thead>
                    <tbody>
                        <td> <input class="form-control" type="text"> </td>
                        <td> <input class="form-control" type="text"> </td>
                        <td> <input class="form-control" type="text"> </td>
                        <td> <input class="form-control" type="text"> </td>
                        <td> <input class="form-control" type="text"> </td>
                    </tbody>
                </table>
                <center>
                    <button class="success">Agregar</button>
                </center>
            </div>
            <div>
                <hr class="linea" id="linea"/>
            </div>
            <div class="contenttablaPresentaBienes">
                <center>
                <table>
                    <thead>
                        <tr>
                    <th>Descripcion</th> 
                    <th>Marca</th>
                    <th>Modelo</th>
                    <th>Precio&nbsp;Unitario</th>
                    <th>Cantidad</th>
                        </tr>
                    </thead>
                </table>
                </center>
            </div>
        </div>
    </body>
</html>
