<%-- 
    Document   : Registration
    Created on : May 22, 2013, 11:56:36 PM
    Author     : user
--%>

<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="db.*"%>

<%
     String cmpName=request.getParameter("c_name");
     String userName=request.getParameter("uname");
     String passWord=request.getParameter("pass");
     String pass2=request.getParameter("cpass");
     String email=request.getParameter("mail");
     String website=request.getParameter("web");
     String address=request.getParameter("address");
     String phone1=request.getParameter("pnoland");
     String phoneNo1=request.getParameter("pnomob");
       SessionFactory sf=new Configuration().configure().buildSessionFactory();
        Session s=sf.openSession();
        
        Transaction tr=s.beginTransaction();
        Vendor r=new Vendor(cmpName, userName, passWord, email, website,address,phone1,phoneNo1,null);
       
       s.save(r);
             tr.commit();
             s.close();
             response.sendRedirect("index.jsp");
     %>
