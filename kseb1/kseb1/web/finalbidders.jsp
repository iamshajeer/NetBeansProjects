

<%@page import="db.Selectbid"%>
<%@page import="db.Vendor"%>
<%@page import="db.Bidder"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<html>
    <head>
       
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
        ul{
            list-style:none;
        }
       li a{
        display: inline-block;
        color:rgb(117,117,117);
            list-style: disc;
            text-decoration: none;
            font-family:tahoma,verdana,arial,sans-serif;
font-size: 11px;

        }
       li a:hover{
    background-color:rgb(216,223,234);

}

.head_header{
  background-image:url(images/images.jpg);
   background-size:100%;  
   
    background-color:rgb(226, 222, 194);
    width:100%;
    height:80px;
    margin-top:-8px;
    padding:20px;
    margin-left:-8px; 
}
.head_logo a{
    text-decoration: none;
    height: 30px;
margin-left: 176px;
color:white;
margin-top:20px;
font-size: 25px;
padding:5px;
}
.head_logo a:hover{
    background-color:#F93;

}
.head_left{
    width:230px;
    height:1000px;
    border-right:solid 1px;
    float: left;
    border-color:#F30;
    clear: both;
   


}
.head_ad{
    color:green;
}
.head_frame{
    border: none;
width:100%;
    height:100%;

}
.head_middle{
    width:1000px;
    height:1000px;
    border-right:solid 1px;
    float: left;
    border-color:#F30;

}
.head_list{
    width:100px;
    height: 100px;
}
.head_content{
   background-color: #6699FF; 
}
.head_main{
     
     margin-left:-8px; 
       margin-right:-8px; 
      background-image:url("images/kseb.jpg");
     background-repeat: no-repeat;
   background-size:100% 650px;
}
        </style>
    </head>
    <body>
         <% 
     // if(session.getAttribute("admin")==null)
//response.sendRedirect("index.jsp");
%>
        
       
        <div class="head_main">
        <div class="head_header">
            <span class="head_logo"><b><a href="adminhome.jsp"><img src="images/1.jpg" width="80">
WELCOME TO E PROCUREMENT FOR KSEB</a>
</span>
 <span>ADMIN</span>
 <a href="logout.jsp">logout</a>
        </div>
<fieldset>
    <form action="finalbidders.jsp">
        Tender id<input type="text" name="tid"/>
       <input type="submit" value="View finalized Bidders"/>
    </form>
    <%
    if(!request.getParameter("tid").equals(""))
          {
        SessionFactory sf=new Configuration().configure().buildSessionFactory();
        Session s=sf.openSession();
       int yeox=0;
       int vid=0;
       int v1=0;
       String nameofbidder="";
       Double bidprice=0.0;
       String nameofbank="";
       String n="";
       String ac="";
       
        Transaction tr=s.beginTransaction();
        
        String query="From Selectbid"; 
        List list=s.createQuery(query).list();
        Iterator i=list.iterator();
        
        %>
        
        <div  style="height:400px">
            
<table border="1">
    Selected company for tender id<%=request.getParameter("tid")%>
<tr>
    
<th>
Vendor id
</th>
<th>
    name of selected bidder
</th>
<th>
    
</th>
</tr>
<tr>
     <%  while(i.hasNext())
        { 
         Selectbid obj=(Selectbid)i.next();
         v1=obj.getVid();
         String query1="From Vendor"; 
        List list1=s.createQuery(query1).list();
        Iterator i1=list1.iterator();
        while(i1.hasNext())
        { 
         Vendor obj1=(Vendor)i1.next();
         if(v1==obj1.getSiNo())
                         {
           n=obj1.getCompanyName();
         vid=obj1.getSiNo();
         nameofbidder=obj1.getCompanyName();
                 }
                   }
           
           
         
          
                 
%>

<td><%=vid%></td>
<td><%=nameofbidder%></td>
</tr>
<%}%>
    

</table>
        </div>
<%}%>
</fieldset>
<div class="head_header">
           
    

       	Copyright � 2013 <a href="#">KSEB</a> | <a href="h" target="_parent"></a> by Afithaali and Sandria  
    
    </div>
</html>