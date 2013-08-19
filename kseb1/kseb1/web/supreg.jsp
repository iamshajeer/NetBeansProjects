<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
  margin-left:-8px; 
       margin-right:-8px; 
      background-image:url("images/kseb.jpg");
     background-repeat: no-repeat;
   background-size:100% 1050px;
   height:950px;
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
</span>>
        </div>




    <form action="Registration.jsp" id="formID" class="formular">
        <h2>    VENDOR REGISTRATION FORM</h2>
        <fieldset>


COMPANY_NAME<input type="text" name="c_name" class="validate[required,length[0,20]] text-input" id="c"/>

USERNAME<input type="text" name="uname"/>

PASSWORD<input type="password" name="pass" class="validate[required,length[6,11]] text-input" id="p"/>
 
 CONFIRM PASSWORD<input type="password" name="cpass"  id="p"/>
  
E_MAIL<input type="text" name="mail" class="validate[required,custom[email]] text-input" id="e"/>
 
WEBSITE<input type="text" name="web" class="validate[required,custom[url]] text-input" id="u"/>
 
ADDRESS<textarea class="validate[required] text-input" id="a" name="address"> </textarea>

PHONE_NO(Land line)<input type="text" name="pnoland" class="validate[required,custom[telephone]] text-input" id="t"/>
 
PHONE_NO(mobile)<input type="text"name="pnomob" class="validate[required,custom[telephone]] text-input" id="t"/>

        </fieldset>
<input type="submit" value="submit"/>
    </form>
    <div class="head_header">
           	Copyright © 2013 <a href="#">KSEB</a> | <a href="h" target="_parent"></a> by Afithaali and Sandria  

    </div>
</body>
</html>
