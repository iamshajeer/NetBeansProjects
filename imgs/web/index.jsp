<%-- 
    Document   : index
    Created on : May 26, 2013, 6:26:37 PM
    Author     : Shajeer
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="me.show.Mcapatron"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%try{
            response.setContentType("image");
            SessionFactory sf = new Configuration().configure().buildSessionFactory();
            Session s = sf.openSession();
            Transaction t = s.beginTransaction();
            String hql = "from Mcapatron where uid=:uid";
            List l = s.createQuery(hql).setString("uid", "shaj").list();
            Iterator it = l.iterator();
            while (it.hasNext()) {
                Mcapatron m = (Mcapatron) it.next();
                ServletOutputStream os = response.getOutputStream();
                os.write(m.getImage());
                os.close();
            }
                       }catch(Exception e){out.println(e.getMessage());}
        %>
    </body>
</html>
