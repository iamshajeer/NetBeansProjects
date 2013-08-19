<%-- 
    Document   : logincr
    Created on : Jan 20, 2013, 9:33:12 PM
    Author     : Shajeer
--%>
<%@page import="java.util.Calendar"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body  onload="t1.focus()">
        <table name="border" id="border" width="100%">
            
            <tr ><td align="right"><a id="set" href="settings.jsp">&nbsp;&nbsp;Setting&nbsp;&nbsp;</a>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
        </table>
        <form name="login" action="validate.jsp">
        <h1>&nbsp;</h1>
        <h1>&nbsp;</h1>
        <h1>&nbsp;</h1>
    <center>

        <table bgcolor="#663366" id="table1" >
            <tr>
                <th style="color:#FFFFFF" align="left" height="35px">&nbsp;&nbsp;&nbsp;&nbsp;Login</th>
            </tr>
            <tr>
                <td>
                    <table bgcolor="#ffffff" cellspacing="20" id="table2">
                        <tr>
                            <td>
                                User ID:
                            </td>
                            <td>
                                <input type="text"  name="t1" id="t1" class="text" onclick="this.select()"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Password:
                            </td>
                            <td>
                                <input type="password"  name="p1" id= "p1" class="text" onclick="this.select()"/>
                            </td>
                        </tr>
                        <%--
                        D.O.B section starts here 
                        --%>
                        <tr><td>D.O.B:</td><td>
                                <select name="date">
                                   <%
                for (int i = 1; i < 32; i++) {%>
                                    <option><%= i%> </option>
                                    <%
                                        }
                                    %>

                                </select>
                                <select name="month">
                                    <%
                                    String[] month=new java.text.DateFormatSymbols().getMonths();
                                    for(int i=0;i<12;i++){%>
                                    <option>
                                    <%=
                                    month[i]
        %><%
                                    }
%>
                                    </option>
                                </select>
                                <select name="year">
                                        <%
                    for (int i = 1940; i < Calendar.getInstance().get(Calendar.YEAR); i++) {%>     
                    <option> <%=i%></option><%
                }%>


                                </select>

                            </td>
                        </tr
                        <%--
                        D.O.B section ends here
                        --%>
                        <tr>
                            <td>
                                <input type="submit" value="Login" id="b1" onclick="valid()"/>
                            </td>
                        </tr>
                        <tr>Incorrect info</tr>
                    </table>
                     
        </table>
    </center>

        </form>
</body>
</html>
