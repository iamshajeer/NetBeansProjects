<%-- 
    Document   : regdpt
    Created on : Mar 19, 2013, 4:09:57 PM
    Author     : Shajeer
--%>

<%@page import="db.dbCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% dbCon d=new dbCon();
                String s="mca";
                d.create_db(s);
        %>
    </body>
</html>
