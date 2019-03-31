<%-- 
    Document   : BuscarSolicitud
    Created on : Mar 30, 2019, 2:10:14 AM
    Author     : Anthony
--%>

<%@page import="activos.logic.Solicitud"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include  file ="../../Head.jsp" %>
        <title>Principal</title>
    </head>
    <body>
        <%@include  file ="../Header.jsp" %>
        <% List<Solicitud> solicitudes = (List<Solicitud>) request.getAttribute("solicitudes");%>
       <div  class="container-fluid">
            <h1 id="blue" >Solicitudes</h1>
            <div class="row">
                <div class="col-md-1 col-sm-1"></div>
                <div class="col-md-10 col-sm-10 ">
            <form action="Controller/SolicitudController">
               
                <div class="row ">
                    <div class="col-md-3"></div>
                    <div class="col-md-5 ">
                <label>
                    # Comprobante :
                </label>
                <input type="text" name="quest" />
                <input type="text" name="actionHide"  value="find" class="escondida"/>
                    </div>
                    <div class="col-md-2"> 
                        <input type="submit" value="Buscar" name="action" class="btn-success"/>
                    </div>
                    
                </div>
                    
            </form>
                    <br>
            <table class="table table-hover">
                <tr>
                    <th>Comprobante</th>
                    <th>Dependencia</th>
                    <th>Fecha</th>
                    <th>Tipo</th>
                    <th>Estado</th>
                </tr>
                <% if(solicitudes != null){
                    for (Solicitud solicitud : solicitudes) {%>
                <tr>
                    <td><%=solicitud.getComprobante()%></td>
                    <td><%=solicitud.getDependecia()%></td>
                    <td><%=solicitud.getFecha()%></td>
                    <td><%=solicitud.getTipo()%></td>
                    <td><%=solicitud.getEstado()%></td>
                </tr>
                <% }
}%>

            </table>
                </div>
                <div class="col-md-1 col-sm-1"></div>
</div>
        </div>
    </body>
</html>
