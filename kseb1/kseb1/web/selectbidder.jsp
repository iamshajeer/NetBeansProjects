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
       
       int tid=Integer.parseInt(request.getParameter("tid"));
     int vid=Integer.parseInt(request.getParameter("vid"));
     
    

       SessionFactory sf=new Configuration().configure().buildSessionFactory();
       Session s=sf.openSession();
        
        Transaction tr=s.beginTransaction(); 
       Selectbid r=new Selectbid(vid,tid);
       
       s.save(r);
             tr.commit();
             s.close();
             
     %>
     
     <script>
           alert("suceesfully selected");
     </script>
     