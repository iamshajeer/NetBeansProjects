<%-- 
    Document   : index
    Created on : Jun 13, 2013, 3:30:49 PM
    Author     : Shajeer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
     <title>
     	Contacts
     </title>
  </head>
  <body>
  	<h2>
  		CONTACT BOOK
  	</h2>
 	<form action="Operations.jsp" method="POST">
 		<!contact adding section>
 		<table>
 			<tr  align="left">
 				<th>
			 		NAME:
			 	</th>
			 	<td>
			 		<input type="text" name="name" size="50"/>
			 	</td>
			 </tr>
			 <tr  align="left">
			 	<th>
			 		PHONE NUMBER:
	  		    </th>
	  		    <td>
			 		<input type="text" name="number"  size="50"/>
			 	</td>
	  		</tr>
	  		<tr>
	  			<td>
	  				<input type="submit" name="add" value="Add Contact"/>
	  		    </td>
	  		    <td>
				  	<input type="submit" name="view" value="View all Contacts"/>
	  		    </td>
	  		</tr>
	  	</table>
	  	<!contact adding over here>
	  	<!Delete contact>
	  	<br/><br/>
	  		Name<input type="text" name="number"  size="50"/><input type="submit" value="Delete Contact" name="delete"/>
	  	<!delete contact over here>
	</form>
  </body>
</html>
