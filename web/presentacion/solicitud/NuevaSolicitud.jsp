<%-- 
    Document   : NuevaSolicitud
    Created on : 26/03/2019, 10:07:09 PM
    Author     : grave
--%>

<%@page import="activos.logic.Bien"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Nueva Solicitud</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@ include file="../../Head.jsp" %>
    </head>
    <body id="soli">

        <div class="bodySoli">
            <div class="div2Soli">
                <h3>SOLICITUD</h3>
                <center>
                    <form>
                        <input class=" col-md-6 form-control" type="text"  name="campoComprobante" placeholder="Numero Comprobante"><br>
                        <input class=" col-md-6 form-control" type="text" name="campoFecha" placeholder="dia/mes/año"><br>
                        <div class="col-md-6">
                            <select class="form-control" name="tipo">
                                <option name="tipo" value="compra">Compra</option>
                                <option name="tipo" value="donacion">Donacion</option>
                            </select>
                        </div>                     
                        <input type="submit" name="action" value="Registrar">
                    </form>
                    <br>
                </center>

                
            </div>
            <div>
                <hr class="linea" id="linea"/>
            </div>
            
            <div class="divBienes">
                <center>
                <form >
                <h4 class="col-md-4">Bienes</h4>
                <table>
                    <thead>
                        <tr>
                        <th>Descripcion</th>
                        <th>Modelo</th>
                        <th>Marca</th>
                        <th>Precio</th>
                        <th>Cantidad</th>
                        </tr>
                    </thead>
                    <tbody>
                    <td> <input class="form-control" type="text" name="Descripcion"> </td>
                    <td> <input class="form-control" type="text" name="Modelo"> </td>
                    <td> <input class="form-control" type="text" name="Marca"> </td>
                    <td> <input class="form-control" type="text" name="Precio"> </td>
                    <td> <input class="form-control" type="text" name="Cantidad"> </td>
                    </tbody>
                </table></br>
                    <input type="text" name="action" value="agregar" style= "display: none;"/>
                    <input type="submit" value="Agregar" class="btn-success"/>
               </form>
                </center>
            </div><br>
           
            <center>
            
                <div class="contenttablaPresentaBienes">

                    <% List<Bien> model = (List<Bien>) request.getAttribute("model");%>

                    <table class="table table-hover"> 
                        <caption>Bienes de la solicitud</caption>
                            <tr>
                                <th>Descripcion</th><th>Marca</th><th>Modelo</th><th>Precio Unitario</th><th>Cantidad</th>
                            </tr>

                            <% if(model != null){
                                for (Bien bien : model) {%>
                            <tr>
                                <td><%=bien.getDescripcion()%></td>
                                <td><%=bien.getMarca()%></td>
                                <td>modelo</td>                    
                                <td><%=bien.getPrecio()%></td>
                                <td><%=bien.getCantidad()%></td>
                            </tr>   
                            <%}%>
                            <%}%>
                    </table>
                </div>
            </center>

        </div>
    
    </body>
</html>