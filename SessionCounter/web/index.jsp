<%-- 
    Document   : index
    Created on : Jun 17, 2013, 6:34:32 PM
    Author     : Shajeer
--%>
<%@page import="shajeer.mypgm.SessionListener" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>
            <%
    SessionListener counter = (SessionListener) session
            .getAttribute("counter");
    out.println("Total active user count is: <b>"+counter.getActiveSessionNumber()+"</b>");
%>
        </h3>
    </body>
</html>
