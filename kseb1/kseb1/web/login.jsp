<%@page import="db.Vendor"%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<% boolean flag=false;
        String userName=request.getParameter("name");
        String passWord=request.getParameter("password");
        
         SessionFactory sf=new Configuration().configure().buildSessionFactory();
        Session s=sf.openSession();
        Transaction tr=s.beginTransaction();
        String query="From Vendor";
        List list=s.createQuery(query).list();
        Iterator i=list.iterator();
        while(i.hasNext())
        {
           Vendor obj=(Vendor)i.next();
            if(userName.equals(obj.getUserName())){
            if(passWord.equals(obj.getPass()))
                flag=true;
            }
           
            
        }
        if(flag)
        {
               
           
           session.setAttribute("vendor",userName);
           //out.println("hai");
          request.getRequestDispatcher("vendorhome.jsp?username="+userName).forward(request, response);
        }
        else
     request.getRequestDispatcher("loginform.jsp").forward(request, response);
        tr.commit();
        s.close();
        %>
       