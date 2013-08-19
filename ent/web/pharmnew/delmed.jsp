<%-- 
    Document   : delmed
    Created on : Jul 2, 2013, 9:58:13 PM
    Author     : Shajeer
--%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
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
            String name = request.getParameter("medname").trim();
            SessionFactory sf = new Configuration().configure().buildSessionFactory();
            Session s = sf.openSession();
            Transaction t=s.beginTransaction();
            Medicine m = null;
            if (!name.equals("Select")) {
                String q = "from Medicine where name=:name";
//                s.createQuery(q).setString("name",name).executeUpdate();
  //                  Query qe=s.createQuery(q).setString("name", name);
                   List l=s.createQuery(q).setString("name",name).list();
                 Iterator i = l.iterator();
                 while (i.hasNext()) {
                 m = (Medicine) i.next();
                 out.println(m.getName());
                 break;
                 }
                 s.delete(m);
                 t.commit();
                out.println(name + " deleted");
                s.close();
                response.setHeader("Refresh", "3;url=../addmedicine.jsp");
            } else {
                out.println("Choose a Medicine,<br/>this page will automatically redirect in 3 seconds");
                response.setHeader("Refresh", "3;url=../addmedicine.jsp");
            }
        %>
    </body>
</html>
