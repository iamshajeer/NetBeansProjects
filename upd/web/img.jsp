<%-- 
    Document   : img
    Created on : May 22, 2013, 9:41:53 PM
    Author     : Shajeer
--%>

<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.AALOAD"%>
<%@page import="my.upload.Photo"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%@page import="java.io.DataInputStream"%>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        SessionFactory sf=new Configuration().configure().buildSessionFactory();
        Session se=sf.openSession();
        Transaction tr=se.beginTransaction();
            String path = "C:/Users/Shajeer/Documents/NetBeansProjects/upd/uploaded/";
           MultipartRequest mr = new MultipartRequest(request, path);
         //  MultipartFormDataRequest mre=new MultipartFormDataRequest(request);
           String name=mr.getOriginalFileName("img"); 
           out.println("success");
          //  se.createQuery("set glbal max_allowed_packet=1024*1024*14").executeUpdate();
            File f = new File(path+name);
            byte[] b=new byte[(int)f.length()];
            FileInputStream fileInputStream=new FileInputStream(f);
            fileInputStream.read(b);
            fileInputStream.close();
            Photo p=new Photo();
            p.setImg(b);
            se.save(p);
            tr.commit();
                   
            
//            DataInputStream inputStream = new DataInputStream(request.getInputStream());
            //          int l = request.getContentLength();
            //        byte[] bs = new byte[l];

        %>
    </body>
</html>
