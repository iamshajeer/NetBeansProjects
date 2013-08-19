<%-- 
    Document   : index
    Created on : Apr 5, 2013, 3:12:00 PM
    Author     : Shajeer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="phupl" method="post">
            <input type="file" name="image" size="50" />
            <input type="submit"  value="submit" onclick="check();"/>
        </form>
    </body>
    <script>function check(){
        alert("hi");
        
    }</script>
</html>
