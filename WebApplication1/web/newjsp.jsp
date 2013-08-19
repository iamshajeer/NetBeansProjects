<%-- 
    Document   : newjsp
    Created on : Apr 11, 2013, 8:55:28 AM
    Author     : Shajeer
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="javax.swing.plaf.OptionPaneUI"%>
<%@page import="javax.swing.JOptionPane"%>
<%
String s="sahjaeer";
PrintWriter ou=response.getWriter();
response.setContentType("application/pdf");
response.setHeader("shajeer", "shaje.pdf");
ou.println(s.getContentString().toString()); 
%>