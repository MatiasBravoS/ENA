<%-- 
    Document   : menu
    Created on : 15-jun-2018, 20:55:16
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
       <h1>Menú Principal</h1>
        <form method="POST" action="ingresar.jsp">
            <p><input name="btnIngresarRequerimientos" type="submit" value="Ingresar Requerimiento"</p>
        </form>
        <form method="POST" action="consultar.jsp">
            <p><input name="btnConsultarRequerimientos" type="submit" value="Consultar Requerimientos"</p>
        </form>
        <form method="POST" action="cerrar.jsp">
            <p><input name="btnCerrarRequerimientos" type="submit" value="Cerrar Requerimiento"</p>
        </form>
    </body>
</html>
