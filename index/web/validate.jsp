<%-- 
    Document   : validation
    Created on : Jan 20, 2013, 10:41:24 AM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dbconect.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>validating</title>
    <link rel="stylesheet" href="newstyle.css">
    </head>
    <body style="color: white">
        <table name="border" id="border" width="100%">
            
            <tr ><td align="right">&nbsp;&nbsp;&nbsp;&nbsp;<a id="set" href="index.jsp">&nbsp;&nbsp;Back&nbsp;&nbsp;&nbsp;&nbsp;</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="settings.jsp">&nbsp;&nbsp;Setting&nbsp;&nbsp;</a>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
        </table>
        <%
        
        new dbconect.dbc().connect();      %>
        
        
        <%
            out.print("hi");
             String user="shajeerkp";
        String pas="sha123";
        String usr=request.getParameter("t1").trim();
        String password=request.getParameter("p1");
        if(usr.equals(user)&&password.equals(pas)){
            out.println("<p><b>Welcome "+usr+"</p></b>");
        
            out.println("Your date of birth is :: "+request.getParameter("date")+":"+request.getParameter("month")+":"+request.getParameter("year"));
        }
               else out.println("<b>User Id or password not match !</b>");
             
        %>
     
    </body>
</html>
