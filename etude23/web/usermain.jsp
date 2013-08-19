<%-- 
    Document   : usermain
    Created on : Apr 3, 2013, 11:43:34 AM
    Author     : Shajeer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>user data</title>
        <link rel="stylesheet" href="styleforuser.css" type="text/css" />
            </head>

    <body>
        <br/>
        <br/>
        <br/>
        <div id="table">
            <table width="100%" height="100%" cellpadding="7" cellspacing="0" id="outer" border="1px">
                <tr>
                    <th width="15px">
                        Sl Num.
                    </th>
                    <th>
                        Book ID
                    </th>
                    <th>
                        Title
                    </th>
                    <th>
                        Author
                    </th>
                    <th>
                        Issue Date
                    </th>
                    <th>
                        Renewal Date
                    </th>
                </tr>
                <%
                    for (int i = 0; i < 10; i++) {

                        if ((i % 2) == 0) {

                %>
                <tr id="col1">
                    <%                        }
                                  else {
                    %>
                    <tr id="col2">

                    </tr>                        

                    <%
                                  }
                        for (int j = 0; j < 6; j++) {
                           
                        
                    %>
                                      <td>
                                          <% if(j==0){
                                          out.print(i+1);
}%>
                    </td>
                    <%            
                        }
                    %>
                </tr>
                <%
                        }
                   

                %>


            </table>

        </div>

    </body>
</html>