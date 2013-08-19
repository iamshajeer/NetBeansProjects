<%-- 
    Document   : asd
    Created on : Jun 13, 2013, 3:08:16 PM
    Author     : Shajeer
--%>
<%@page import="java.io.IOException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
        public void add(JspWriter out)throws IOException{
             out.println("hello world");
}
%>
        <%
        add(out);
        %>
    </body>
</html>
