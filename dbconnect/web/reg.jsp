<%-- 
    Document   : reg
    Created on : Mar 2, 2013, 12:13:45 PM
    Author     : Shajeer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="db.createTable.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     
        <%
String deptname=request.getParameter("t1");            
            dbCon d=new dbCon();
            d.create_db(deptname);
                    
%>
        <%
        out.println("created "+deptname+" database !");
        %>
    </body>
</html>
