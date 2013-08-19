 
<%@page import="db.Addtender"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%
        SessionFactory sf=new Configuration().configure().buildSessionFactory();
        Session s=sf.openSession();
       int tid=0;
       String t="";
        Transaction tr=s.beginTransaction();
        
        String query="From Addtender"; 
        List list=s.createQuery(query).list();
        Iterator i=list.iterator();
        
        %>
       <html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
 <link rel="stylesheet" href="css/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
		<link rel="stylesheet" href="css/template.css" type="text/css" media="screen" title="no title" charset="utf-8" />
		<script src="js/jquery-1.4.min.js" type="text/javascript"></script>
		<script src="js/jquery.validationEngine-en.js" type="text/javascript"></script>
		<script src="js/jquery.validationEngine.js" type="text/javascript"></script>
 <script>	
		$(document).ready(function() {
			// SUCCESS AJAX CALL, replace "success: false," by:     success : function() { callSuccessFunction() }, 
			
			$("#formID").validationEngine()
			
			
			//$.validationEngine.loadValidation("#date")
			//alert($("#formID").validationEngine({returnIsValid:true}))
			//$.validationEngine.buildPrompt("#date","This is an example","error")	 		 // Exterior prompt build example								 // input prompt close example
			//$.validationEngine.closePrompt(".formError",true) 							// CLOSE ALL OPEN PROMPTS
		});
		
		// JUST AN EXAMPLE OF VALIDATIN CUSTOM FUNCTIONS : funcCall[validate2fields]
		function validate2fields(){
			if($("#firstname").val() =="" || $("#lastname").val() == ""){
				return true;
			}else{
				return false;
			}
		}
	</script>
<style type="text/css">

</style>
      
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
    background-color: rgb(226, 222, 194);
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
    background-color:blueviolet;
  margin-left:-8px; 
       margin-right:-8px; 
      background-image:url("images/kseb.jpg");
     background-repeat: no-repeat;
   background-size:100% 650px;
   height:1000px;
}
        </style>
    
         <% 
     // if(session.getAttribute("admin")==null)
//response.sendRedirect("index.jsp");
%>

</head>
<body>
    <div class="head_main">
        <div class="head_header">
            <span class="head_logo"><b><a href="adminhome.jsp"><img src="images/1.jpg" width="80">
WELCOME TO E PROCUREMENT FOR KSEB</a>
</span>
            <span><%=session.getAttribute("vendor")%> </span>
            <a href="logout.jsp">logout</a>
    <table border="1"> <tr> 
            <th></th><th>     TENDER_ID</th>

                                 <th>PRODUCT NAME</th>
                                 <th>QUANTITY</th>


                                 <th>PRICE</th>





                                 <th>START DATE</th>


                                 <th>CLOSE DATE</th>


                             </tr>

                   
                  
          <%  while(i.hasNext())
        { 
         Addtender obj=(Addtender)i.next();
            tid=obj.getTenderId(); 
          
          
                 
%>
                        
                         
                         
                             <tr>
                                 <td><a href="bidderregistration.jsp?tid=<%=obj.getTenderId()%>"&username=<%=request.getParameter("vendor")%>>click</a></td>
                                 <td><%=obj.getTenderId()%></td>
                                 <td><%=obj.getProductName()%></td>
                                 <td><%=obj.getQuantity()%></td>
                                     <td><%= obj.getPrice()%></td>
                                     <td><%= obj.getStartDate()%></td>
                                          <td><%=obj.getEndDate()%></td>
                             
                             </tr>
                             <%}%>
                        </table>
        </div>
    </div>
                        <div class="head_header">
           	Copyright © 2013 <a href="#">KSEB</a> | <a href="h" target="_parent"></a> by Afithaali and Sandria  

    </div>
</body>
       </html>
