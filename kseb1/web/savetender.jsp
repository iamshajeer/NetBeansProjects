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
       
      String tenderName=request.getParameter("tname");
      String productName=request.getParameter("pdtname");
     int quantity=Integer.parseInt(request.getParameter("qnty"));
     
      double price=Double.parseDouble(request.getParameter("price"));
      String status="running";
      String startDate=request.getParameter("startdate");;
      String endDate=request.getParameter("closedate");;
      String tenderDetails=request.getParameter("description");

       SessionFactory sf=new Configuration().configure().buildSessionFactory();
       Session s=sf.openSession();
        
        Transaction tr=s.beginTransaction();
        Addtender r=new Addtender(tenderName, productName, quantity, price, status, startDate, endDate, tenderDetails,null);
       
       s.save(r);
             tr.commit();
             s.close();
             
     %>
     <% request.getRequestDispatcher("tenderregistration.jsp?success=true").forward(request, response);
     %>
     <script>
           alert("suceesfully registred");
     </script>
     