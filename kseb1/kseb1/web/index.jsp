
<!DOCTYPE html>
<html>
    <head>
       
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
               <style type="text/css">
                   li{
                       display: inline;
                   }  ul{
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
  margin-left:-8px; 
       margin-right:-8px; 
      background-image:url("images/kseb.jpg");
     background-repeat: no-repeat;
   background-size:100% 650px;
   height:550px;
}
        </style>
    
         <% 
     // if(session.getAttribute("admin")==null)
//response.sendRedirect("index.jsp");
%>
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
         
        </div>
        
           
            <div class="head_content">
         
        <ul id="Menu" class="Menu">   <li> <a href="loginform.jsp"> <p> Login </p> </a></li>
         |  <li>   <a href="supreg.jsp"> <p> Supplier reistation </p> </a></li>
         | 
            <li>   <a href="about.html"> <p> About us </p> </a></li>
        </ul>
           
    </div> 
      <div  style="width:550px;height:50px;float:left">
<table cellpadding="2" cellspacing="0" border="0" style="border: #999999 1px solid; background-color: #000000;COLOR: #FFFFFF; FONT: 13px arial, sans-serif; font-weight: bold;"><tbody><tr><td align="center">
latest tenders<br>
</td></tr><tr><td>
                <iframe id="NewsWindow" src="latestnews.jsp" width="150" height="200" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" style="border: #000000 1px solid;"></iframe>
</td></tr></tbody></table>
</div>   
   
 

    </body>
    </html>
    