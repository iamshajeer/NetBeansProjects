
<!DOCTYPE html>
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
    
   
    background-color:#F30;
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
     background-color: #6699FF; 
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
            <span class="head_logo"><b><a href="#"><img src="images/1.jpg" width="80">
WELCOME TO E PROCUREMENT FOR KSEB</a>
</span>
 <span>ADMIN</span>
        </div>
        
           
    <div class="head_content">
         
        <ul id="Menu" class="Menu">   <li> <a href="login1.html" target="main"> <p> Login </p> </a></li>
            <li>  <a href="supreg.html" target="main"> <p> Bidder registration </p> </a></li>
            <li>  <a href="3.html" target="main"> <p> Latest tenders </p> </a></li>
            <li> <a href="bfinal.html" target="main"><p>Bidder finalization </p> </a></li>
            <li> <a href="banned.html" target="main"><p> Banned Companies </p> </a></li>
            <li>   <a href="about.html" target="main"> <p> About us </p> </a></li>
        </ul>
           
    </div> 
           
    </div>


    </body>
    </html>
    