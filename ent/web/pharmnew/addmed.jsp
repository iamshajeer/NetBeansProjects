<%-- 
    Document   : addmed
    Created on : Jul 2, 2013, 9:29:33 PM
    Author     : Shajeer
--%>

<%@page import="java.math.BigDecimal"%>
<%@page import="ent.Medicine"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.id.Configurable"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name = request.getParameter("mname");
            String medno=request.getParameter("medno");
            String exp=request.getParameter("edate");
            BigDecimal prize=new BigDecimal(request.getParameter("price"));
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
            Session ses=sf.openSession();
            Transaction tr=ses.beginTransaction();
            Medicine medicine=new Medicine(name, exp, prize, Integer.parseInt(medno));
            ses.save(medicine);
            tr.commit();
            out.println("<b>Medicine added</b>");
            response.setHeader("Refresh", "3;url=../addmedicine.jsp");
        %>
    </body>
</html>
