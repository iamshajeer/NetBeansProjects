 <%@page import="com.lowagie.text.Paragraph"%>
<%@page import="db.Addtender"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="com.lowagie.text.Chunk"%>
<%@page import="com.lowagie.text.pdf.PdfPTable"%>
<%@page import="com.lowagie.text.pdf.PdfWriter"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="com.lowagie.text.Document"%>
<%      

int tid=Integer.parseInt(request.getParameter("tid"));
            int t=0;
           String name = "ksebtender.pdf" ;
           String tdetailes="";
            String pdfname = "A:/"+name;
            Document doc = new Document();
          PdfWriter.getInstance(doc, new FileOutputStream(pdfname));
        
            doc.open();
            PdfPTable pt = new PdfPTable(1);
            
            doc.addAuthor("kseb");
            doc.newPage();
         
           pt.setWidthPercentage(95);
         //  doc.add(new Paragraph("Publisher overview report."));
            Chunk underline = new Chunk("TEnder details");
      underline.setUnderline(0.1f, -2f); //0.1 thick, -2 y-location
      doc.add(underline);
          
         

        %>
<%
           
  
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
        Session s=sf.openSession();
        Transaction tr=s.beginTransaction();
        String query="From Addtender"; 
        List list=s.createQuery(query).list();
        
        Iterator i=list.iterator();
         while(i.hasNext())
        { 
         Addtender obj=(Addtender)i.next();
        if(tid==obj.getTenderId())
         tdetailes=obj.getTenderDetails();
           
       
                 }
        doc.add(new Paragraph(tdetailes));
        
        doc.add(pt);
                    doc.close();
                  
                 response.sendRedirect("latestnews.jsp");
       %>
             
<s
   