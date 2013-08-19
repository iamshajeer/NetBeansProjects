<%-- 
    Document   : valid
    Created on : Feb 1, 2013, 8:04:26 PM
    Author     : Shajeer
--%>

<%@page import="dbcon.Dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dbconect.dbc"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Dbcon d = new Dbcon();
        %>
        <%
            d.connect();
        %>

    </body>
</html>
