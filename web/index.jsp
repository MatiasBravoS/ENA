<%-- 
    Document   : index
    Created on : 15-jun-2018, 20:51:21
    Author     : Jibun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/style.css">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <div class="index">
        <form method="POST" action="enviarDatos.jsp">
            <h1>Autentificación</h1>
            <p>Usuario: <input name="txtUsuario" type="text"></p>
            <p>Password: <input name="txtPass" type="password"></p>
            <p><input type="checkbox" name="recordar" value="Recordar"> Recordar</p>
            <p><input name="btnIngresar" type="submit" value="Ingresar"</p>
            
        </form>
           
        <%
            try{
                int numero=Integer.parseInt(request.getParameter("n"));
                switch(numero){
                    case 1:
                        out.println("Ingrese un usuario y una contraseña");
                        break;
                         case 2:
                        out.println("Ingrese un usuario");
                        break;
                         case 3:
                        out.println("Ingrese una contraseña");
                        break;
                        case 4:
                        out.println("Datos Incorrectos");
                        break;
                }
             
            }
            catch(Exception e){
                
            }

 
        %>
         </div>
    </center>
    </body>
</html>
