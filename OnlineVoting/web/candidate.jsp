<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : FronzenAge
Description: A two-column, fixed-width template suitable for business sites and blogs.
Version    : 1.0
Released   : 20071108

-->
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>eBallot : Your Voice, Your Vote !</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="style.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
            #page #sidebar #login #form1 #logintab tr td label strong {
                text-align: left;
            }
        </style>
        <!--[if IE]>
        <style type="text/css">
        #sidebar #calendar 
                background-position: 0px 20px;
        }
        </style>
        <![endif]-->
    </head>
    <body>
<div id="logo">
            <h1><a href="index.html"><img src="images/vote (2).jpg" width="49" height="45" />eBallot</a></h1>
            <h2>Your Voice, Your Vote!</h2>
        </div>
        <div id="menu">
            <ul>
                <li class="first"><a href="index.html" accesskey="1" title="">Home</a></li>
                <li><a href="aboutushom.html" accesskey="4" title="">About Us</a></li>
                <li><a href="contactushom.html" accesskey="5" title="">Contact Us</a></li>

            </ul>
            <div id="search">
                <form method="get" action="">
                    <fieldset>
                        <input id="s" type="text" name="s" value="" />
                        <input id="x" type="image" name="imageField" src="images/img10.jpg" />
                    </fieldset>
                </form>
            </div>
        </div>
        <hr />
        
        </br></br><center><b>CANDIDATE REGISTRACTION</b></center></br><center><form action="CandidateRegSubServ" method="post"><table width="436" border="0" align="center" cellpadding="100" cellspacing="30">
  <tr>
    <td><div align="left">NAME:</div></td>
    <td><input type="text" name="name" id="userid" class="crcls"/></td>
  </tr>
  <tr>
    <td>PASSWORD:</td>
    <td><input type="text" name="password" id="name" class="crcls" /></td>
  </tr>
  <tr>
    <td>DEPARTMENT:</td>
    <td><input type="text" name="dept" id="dept" class="crcls"/></td>
  </tr>
    <tr>
    <td>Party</td>
    <td><select name="party" id="pname" class="crcls">
            <option>Select a party</option>
            <% String[] party = (String[])request.getAttribute("party"); 
            int i = 0;
            while(party[i]!=null){
            %>
            <option value="<%= party[i] %>"> <%= party[i] %> </option> <% i++; }%>
        </select></td>
  </tr>
 
  <tr>
    <td>Nominee</td>
    <td><input type="text" name="nominee" id="nominee" class="crcls" /></td>
  </tr>
 
  <tr><td><td>
    <div align="right">
      <input type="submit" name="register" value="Register" id="register"/>
    </div>
  </td></td></tr>
</table>   </form> </center> 
        
    </body>
</html>
