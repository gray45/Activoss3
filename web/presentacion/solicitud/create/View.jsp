<%-- 
    Document   : view
    Created on : Mar 17, 2019, 10:56:27 PM
    Author     : Anthony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva Solicitud</title>        
        <base href="http://localhost:8080/Activos/" >
        <script>
            
            function agregarBienes(){
                
                //se debe de imprimir una pantalla que imprima los bienes uno a uno 
                
                //debe retornar todo un array con los bienes solicitados
            }
            
            
        </script>
            
    </head>
    <body>
       <%@ include file="/presentacion/Header.jsp" %>
    
    <!-- formulario para agregar el bien-->
    <span> </span>

   
    <div class= "pantallaPrincipal" style="display: block; border: 2px solid blue; height:400px; width:96%; margin: 25px; alignment-adjust: central">
        <h1>Solicitud</h1>
        <form>       
           <!--aqui va una tabla que se debe actualizar cada ves que se ingresa un nuevo bien a la solicitud-->
          
           tipo de adquisición:
           <Select name="tipoAdquisicion" id="tipoAdqui">
               <Option Selected value="compra">compra</Option>
               <Option Selected value="alquiler">alquiler</Option>
               <Option Selected value="donacion">donacion</Option>
           </Select>
           
           
        </form> 
        
        <br>
        <button onclick="agregarBienes()">Agregar un bien</button> 
        
        
        <div><h1>Pagina Principal</h1>
            <button onclick ="
                document.getElementById('o').style.display='block';
                document.getElementById('p').style.display='block';">Popup            
            </button>   
        </div>
        
        <div id="o" class="overlay">
            
        </div>
        
        <div id="p" class="popup">
            <h2>Esto es un pop-up</h2>            
            <button onclick ="document.getElementById('o').style.display='none';document.getElementById('p').style.display='none';">
                Regresar
            </button> 
        </div>
    
    </div>
  
    
    </body>
</html>
 