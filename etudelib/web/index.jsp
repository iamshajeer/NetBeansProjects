<%-- 
    Document   : index
    Created on : Mar 19, 2013, 3:08:50 PM
    Author     : Shajeer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>etude-Centralized library management system</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
<link href="newstyle.css" type="text/css" rel="stylesheet" />
<style type="text/css">
#apDiv1 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:1;
}
</style>
</head>
<body onload="viewImage()">
<div id="content">
<!-- header begins -->
<div id="menu">
		<ul>
			<li onclick="viewImage()" id="button1"><a href="#" title="">Home</a></li>
			<li id="button2"><a href="#" title="">Stock</a></li>
			<li id="button3"><a href="#" title="">e-book</a></li>
			<li id="button4"><a href="#" title="">Settings</a></li>
			<li id="button5"><a href="#" title="">About Us</a></li>
		</ul>
	</div>
<div id="header">
  <div id="etude">
	  <h1>&nbsp;</h1>
	  <h1>&nbsp;</h1>
	  <h1>&nbsp;</h1>
  </div>
  </div> 
	
	
</div>

<!-- header ends -->
<!-- content begins -->
<div id="main"> 
  <div id="right">
<div id="righttop">
<iframe align="middle" width="100%" height="100%" scrolling="no" id="myframe" frameborder="0"><h>
browser not supports</h> 
            </iframe>
	</div>
  </div>
	<div id="left">
		<div id="lefttop">
			
			<h3>Registration</h3>
			<div id="categories">
				<ul>
					<li id="dptregdemo" onclick="changeFrame(this.id)"><a href="#">Register department</a></li>
                    <li id="stregdemo"onclick="changeFrame(this.id)"><a href="#">User Registration</a></li>
					<li id="bkregdemo"onclick="changeFrame(this.id)"><a href="#">Books Registraion</a></li>
					<li></li>
					<li><a href="#">Contact Us</a></li>
				</ul>
		  </div>
			
			<h3>Reports</h3>
			<div id="partners">
				<ul>
					<li><a href="#">Stock</a></li>
					<li><a href="#">Transaction</a></li>
					<li><a href="#">Patrons </a></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
				</ul>
			</div>
	  </div>	
	</div><div style="clear:both;"></div><div id="mainbot"></div>
</div>
	
	</div>
<!--content ends -->
<!--footer begins -->


<div id="footer">
<p>Copyright &copy; 2013</p>
<p>Design by Rashi nellimunda & Shajeer ahmed</a>
		</p>

</div>
<!-- footer ends-->
</body>
<script type="text/javascript" language="javascript">
function changeFrame(a){
	  document.getElementById('myframe').src = a+".jsp";
	  
      }
	  function viewImage(){
		  document.getElementById('myframe').src="books.jpg";
		  document.getElementById("myframe").height="300px";
		  }
</script>
</html>
