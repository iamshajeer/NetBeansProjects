<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>eBallot : Your Voice, Your Vote !</title>
        <link href="style.css" rel="stylesheet" type="text/css" />
        <link href="regstyle.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <div id="logo">
            <h1><a href="index.html"><img src="images/vote (2).jpg" width="49" height="45" />eBallot</a></h1>
            <h2>Your Voice, Your Vote!</h2>
        </div>
        <div id="menu">
            <ul>
                <li class="first"><a href="index.html" accesskey="1" title="">Home</a></li>
                <li><a href="viewcandidate.html" accesskey="2" title="">View Candidate</a></li>
				<li><a href="viewvoter.html" accesskey="3" title="">View Voter</a></li>
	  			<li><a href="viewalert.html" accesskey="4" title="">View Election</a></li>
      			<li><a href="result.html" accesskey="6" title="">Results</a></li>
            </ul>
        </div>
        <div id="party" align="center"><div id="page">
            <p>&nbsp;</p>
            <p><strong><font size="+2" >Add Party</font></strong><br /><br />
            </p></div>
        </div>
        <form  method="post" name="form1" id="form1" action="AddPartyServ" >
            <div align="center">
                <table width="200" border="0" cellspacing="30" cellpadding="100">
                    <tr>
                        <td>Party&nbsp;ID</td>
                        <td><input type="text" name="pid" id="pid" /></td>
                    </tr>
                    <tr>
                        <td>Party&nbsp;Name</td>
                        <td><input type="text" name="pname" id="pname" /></td>
                    </tr>
                   
                    <tr>
                        <td>&nbsp;</td>
                        <td><div align="center">
                                <input type="submit" name="register" id="register" value="Add" />
                            </div></td>
                    </tr>
                </table>
            </div>
        </form>

    </body>
</html>