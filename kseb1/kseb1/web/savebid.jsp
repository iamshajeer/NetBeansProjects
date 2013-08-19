
<%@page import="db.Bidder"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="db.Vendor"%>
<%@page import="db.Addtender"%>
<%


    int tid=Integer.parseInt(request.getParameter("tender"));
    String username=session.getAttribute("vendor").toString();
   
   double bidprice=Double.parseDouble(request.getParameter("bidprice"));
     int yofex=Integer.parseInt(request.getParameter("yoe"));
   String nameofbank=request.getParameter("bank");
   String acN=request.getParameter("acct");
    SessionFactory sf=new Configuration().configure().buildSessionFactory();
       Session s=sf.openSession();
        
        Transaction tr=s.beginTransaction();
          Addtender a1=null;
         String query1="From Addtender";
        List list1=s.createQuery(query1).list();
        Iterator iterator1= list1.iterator();
         while(iterator1.hasNext())
         {
             Addtender a2 = (Addtender) iterator1.next();
             if(a2.getTenderId()==tid)
             a1=a2;
             
          
            }
         Vendor v1=null;
         String query2="From Vendor";
        List list2=s.createQuery(query2).list();
       Iterator iterator2=list2.iterator();
         while(iterator2.hasNext())
         {
             Vendor v2 = (Vendor)iterator2.next();
             if(v2.getUserName().equals(username))
             v1=v2;
             
          
            }
       
       Bidder b=new Bidder(a1,v1, bidprice, yofex, nameofbank, acN);
       
        s.save(b);
             tr.commit();
             s.close();
           request.getRequestDispatcher("vendorhome.jsp").forward(request, response);

%>