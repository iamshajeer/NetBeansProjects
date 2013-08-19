<%-- 
    Document   : index
    Created on : May 27, 2013, 6:11:20 PM
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
        <form action="asd">
            <%
            String flag = (String)request.getSession().getAttribute("flag");
                                
            %>
            username      :<input type="text" name="uid"/><br/>
            password      :<input type="password" name="pass"/><br/>
            <%          
          if (flag != null)
            if (flag.equals("invalid")) {%>
            Invalid login attempt<br/>
            <%                  
                        
                    }
request.getSession().invalidate();                   
            %>
            <input type="submit" value="submit"/>
        </form> 
    </body>
</html>
