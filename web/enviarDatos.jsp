<%-- 
    Document   : enviarDatos
    Created on : 15-jun-2018, 20:53:55
    Author     : Jibun
--%>
<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String u=request.getParameter("txtUsuario");
       String p=request.getParameter("txtPass");
            HttpSession ses = request.getSession();
            ses.setAttribute("User", u);
            ses.setAttribute("Pass", p);
            if(u.equals("") && p.equals("")){
                 getServletContext().getRequestDispatcher("/index.jsp?n=1").forward(request, response);
            }
            if(u.equals("")){
                 getServletContext().getRequestDispatcher("/index.jsp?n=2").forward(request, response);
            }
             if(p.equals("")){
                 getServletContext().getRequestDispatcher("/index.jsp?n=3").forward(request, response);
            }
             
            try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimientos","root","");
    String query="SELECT * FROM user WHERE user.user='"+u+"' and user.pass='"+p+"'";
   Statement st=conn.createStatement();
    ResultSet rs=st.executeQuery(query);
    rs.next();
    String userSql=  rs.getString("user"); 
    String passSql=  rs.getString("pass"); 
    conn.close();
        if(u.equals(userSql) && p.equals(passSql)){
                 getServletContext().getRequestDispatcher("/menu.jsp").forward(request, response);
                  
           }
                getServletContext().getRequestDispatcher("/index.jsp?n=4").forward(request, response);
                
}   catch(SQLException ex){
    throw new SQLException(ex);
}  
        %>
    </body>
</html>
