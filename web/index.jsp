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
        <title>JSP Page</title>
    </head>
    <body>
        <form method="POST" action="enviarDatos.jsp">
            <h1>Autentificación</h1>
            <p>Usuario: <input name="txtUsuario" type="text"></p>
            <p>Password: <input name="txtPass" type="password"></p>
            <p><input type="checkbox" name="recordar" value="Recordar"> Recordar</p>
            <p><input name="btnIngresar" type="submit" value="Ingresar"</p>
            
        </form>
    </body>
</html>
