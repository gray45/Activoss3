<%-- 
    Document   : Header
    Created on : Mar 18, 2019, 7:49:10 PM
    Author     : Anthony


debe de ir alguna variable en este jsp para que cambie el nombre en el menu o header
--%>

<%@page import="activos.logic.Usuario"%>
<% Usuario logged= (Usuario) session.getAttribute("logged");%>   
   <!-- menu  -->
   
   <nav class="navbar navbar-expand-lg navbar-light bg-light ">

            <a class="navbar-brand" href="#">Navbar</a>

            <!--solo me lleva al inicio de la pagina-->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>


            <div class="collapse navbar-collapse" id="navbarSupportedContent">

                <ul class="navbar-nav mr-auto">
                    <% if (logged != null) { %>

                    <!--opciones para el administrador-->
                    <% if (!logged.getRol().equals("ADM")) {%>  

                    <!--cualquier otro en lace en el naveBar-->
                    <li class="nav-item">
                        <a  href="#"> <img id="logoSistema"> Activos </a>
                    </li>
                    

                    <!--Dropdown solicitud-->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Solicitud
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a href="Controller/SolicitudController?action=nuevaSolicitud">Nueva Solicitud</a>      
                            <div class="dropdown-divider"></div>
                            <a href="Controller/SolicitudController?action=Buscar">Buscar Solicitud</a>   
                        </div>
                    </li> 

                    <!--Dropdown otros -->
                    <li class="nav-item dropdown">

                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Otros
                        </a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a href="Controller/FuncionarioController">Funcionarios</a>     
                            <a href="Controller/DependenciaController">Dependencias</a>  
                        </div>


                    </li>

                    <!--Dropdown logout-->
                    <li class="nav-item dropdown">

                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <%=logged.getNombre()%>
                        </a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a href="Controller/LoginController?action=logout">Log out</a>      
                        </div>
                    </li>

                    <%}%>


                    <%}%>

                    <% if (logged == null) { %>

                    <!-- referencia ingresar-->
                    <li> 
                        <a class="nav-item" href="Controller/LoginController?action=prepareLogin">Ingresar</a> 
                    </li> 

                    <!-- referencia registrarse-->
                    <li> 
                        <a class="nav-item" href="Controller/UsuarioController">Registrarse</a> 
                    </li>    

                    <% }%>       
                </ul>
            </div>
        </nav>