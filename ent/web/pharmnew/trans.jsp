<%-- 
    Document   : trans
    Created on : Jul 2, 2013, 10:53:35 PM
    Author     : Shajeer
--%>
<%@page import="ent.Medicine"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="ent.Trans"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.id.Configurable"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="java.math.BigDecimal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transaction</title>
    </head>
    <body>
        <%


            String name = request.getParameter("medname");
            int medno = Integer.parseInt(request.getParameter("medno"));
            BigDecimal prize = new BigDecimal(request.getParameter("price"));
            SessionFactory sf = new Configuration().configure().buildSessionFactory();
            Session ses = sf.openSession();
            Transaction tr = ses.beginTransaction();
            Trans trs = new Trans(name,medno, prize);
            ses.save(trs);
            tr.commit();
            out.println("Done !");
             response.setHeader("Refresh", "2;url=../addmedicine.jsp");
           /* Medicine m = null;
            int current_count=0;
            String qe = "from Medicine where name=:name";
            List l = ses.createQuery(qe).setString("name", name).list();
            Iterator i = l.iterator();
            while (i.hasNext()) {
                m = (Medicine) i.next();
                current_count = m.getMedcount();
            }
            String q = "update Medicine set medcount=:med"+" where name=:name";
            ses.createQuery(q).setString("name", name).setInteger("med", current_count-medno).executeUpdate();
            tr.commit();*/
        %>
    </body>
</html>
