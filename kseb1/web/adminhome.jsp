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
     background-image:url("images/kseb.jpg");
     background-repeat: no-repeat;
   background-size:100% 550px;
      margin-left:-8px; 
       margin-right:-8px; 
       
}
        </style>
    </head>
    <body>
         <% 
     // if(session.getAttribute("admin")==null)
//response.sendRedirect("index.jsp");
%>
        
       
        <div class="head_main">
            <div class="head_header" >
            <span class="head_logo"><b><a href="adminhome"><img src="images/1.jpg" width="80">
WELCOME TO E PROCUREMENT FOR KSEB</a>
</span>
 <span>ADMIN</span>
 <a href="logout.jsp">logout</a>
        </div>
            <div style="height:400px;">
<ul >
                    <li><a href="tenderregistration.jsp?ret=false&success=false">New Tender Registration</a></li>
                     <li><a href="tenderregistration.jsp?ret=true&success=false">Re tender</a></li>
               	  	<li> <a href="Bidders.jsp?tid=">Bidders</a></li>
                         <li><a href="finalbidders.jsp?tid=">Finalized Bidders</a></li>
                              <li><a href="#">Banned companies</a></li>
                  
                </ul> 
            </div>
<div class="head_header">
           
    

       	Copyright © 2013 <a href="#">KSEB</a> | <a href="h" target="_parent"></a> by Afithaali and Sandria  
    
    </div>