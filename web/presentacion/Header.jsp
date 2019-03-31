<%-- 
    Document   : Header
    Created on : Mar 18, 2019, 7:49:10 PM
    Author     : Anthony


debe de ir alguna variable en este jsp para que cambie el nombre en el menu o header
--%>

<%@page import="activos.logic.Usuario"%>
<% Usuario logged= (Usuario) session.getAttribute("logged");%>   
<link href="css/estiloMenu.css" rel="stylesheet" type="text/css"/>
   <!-- menu  -->
   
   <nav class="head navbar">
        
        <div>
            <a  href="#"> <img id="logoSistema"> Activos </a>
        </div>
        
       
       <div>    
            <ul>
                <% if(logged!=null){ %>
                
                <% if(!logged.getRol().equals("Admistrador")){ %>        
                <li> <a href="Controller/SolicitudController?action=nuevaSolicitud">Nueva Solicitud</a> </li>    
                <li> <a href="Controller/SolicitudController?action=Buscar">Buscar Solicitud</a> </li>  
                <li> <a href="Controller/FuncionarioController">Funcionarios</a> </li>    
                <li> <a href="Controller/DependenciaController">Dependencias</a> </li>  
                   
                <% } %>
                <% if(logged.getRol().equals("ADM")){ %>        
                <li> <a href="Controller/LoginController?action=buscarSolicitud">Buscar Solicitud</a> </li>    
                <% } %>
                <li class="submenu"> <a href="#"> <%=logged.getNombre()%> </a> 
                    <ul>
                        <li> <a href="presentation/usuarios/login/logout">Log out</a> </li> 
                    </ul>             
                </li>
                <% } %> 
                <% if(logged==null){ %>
                <li> <a href="Controller/LoginController?action=prepareLogin">Ingresar</a> </li>
                <li> <a href="Controller/UsuarioController">Registrarse</a> </li>    
                
                
                
                <% } %>  
            </ul>
       </div>
   </nav>