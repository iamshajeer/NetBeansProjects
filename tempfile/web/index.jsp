<%-- 
    Document   : index
    Created on : Jun 11, 2013, 4:02:27 PM
    Author     : Shajeer
--%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
File tempDir = (File) getServletContext().
        getAttribute( "javax.servlet.context.tempdir" );
    // create a temporary file in that directory
    File tempFile = File.createTempFile( getServletName(), ".tmp", tempDir );    
    // write to file
    FileWriter fw = new FileWriter( tempFile );
    try {
      fw.write( "hi, I am Shajeer kp Ahamed" );
    }
    finally {
      fw.close();
         }
    // tell servlet client where to look for file
    response.getWriter().println( "check file: " + tempFile.getAbsolutePath() );

%>