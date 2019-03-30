 <%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="activos.logic.Usuario"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <%@ include file="/presentacion/Header.jsp" %>

    <%@ include file="/Head.jsp"%>
</head>

<body>


<center>
        <div class="login">
              <form >
                  <input class="inputForm" type="text" placeholder="id"/>
                <br>
                <input class="inputForm" type="password" placeholder="contrseña"/>
                <br>
                <input class="submitButton" type="submit" name="login" value="login" >
              </form>
        </div>
</center>

</body>
</html>
<%--<%!
    private String validity(String field, Map<String,String> errors){
      if ( (errors!=null) && (errors.get(field)!=null) )
        return "is-invalid";
      else
        return "";
    }

    private String value(String field, Map<String,String[]> values){
        return values.get(field)[0];
    }

    private Map<String,String[]> getValues(Usuario model){
       Map<String,String[]> values = new HashMap<>();
       values.put("id", new String[]{""+model.getId()});
       values.put("clave", new String[]{model.getPassword()});
       return values;
    } 

   %>--%>