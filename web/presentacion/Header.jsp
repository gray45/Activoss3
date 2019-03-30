<%-- 
    Document   : Header
    Created on : Mar 18, 2019, 7:49:10 PM
    Author     : Anthony


debe de ir alguna variable en este jsp para que cambie el nombre en el menu o header
--%>

<%@page import="activos.logic.Usuario"%>
<% Usuario logged= (Usuario) session.getAttribute("logged");%>   
<link href="css/estilo.css" rel="stylesheet" type="text/css"/>
   <!-- menu  -->
   <div class="head">
        
        <div class="head">
            <a  href="#"> <img id="logoSistema"> Activos </a>
        </div>
        
       <div class="head">    
            <ul>
               <% if(logged!=null){ %>
        <% if(logged.getRol().equals("ADM")){ %>        
             <li> <a href="presentation/personas/create/View.jsp">Registro</a> </li>    
        <% } %>
             
        <% if(logged.getRol().equals("ADM") || logged.getRol().equals("CLI")){ %>         
            <li> <a href="presentation/personas/list">Listado</a> </li>
        <% } %>             

        <li class="submenu"> <a href="#"> <%=logged.getNombre()%> </a> 
            <ul>
                <li> <a href="presentation/usuarios/login/logout">Log out</a> </li> 
           </ul>             
        </li>
    <% } %>
    
    <% if(logged==null){ %>
        <li> <a href="Controller/UsuarioController?actio=prepareLogin">Ingresar</a> </li>
        <li> <a href="Controller/">Registrarse</a> </li>
    <% } %>  
            </ul>
        </div>
        
    </div>