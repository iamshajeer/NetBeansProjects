
<%@page import="java.io.IOException"%>
<%@page import="java.sql.*"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Contact book</title>
</head>

<body>
	<%!
		Connection con;
		Statement st;
		ResultSet res;
	%>
	<!function for establishing database connection>
		<%!public boolean dbConnect()throws ClassNotFoundException,SQLException{
		Class.forName("sun.mysql.jdbc.Driver");
		con=DriverManager.getConnection("mysql:jdbc://localhost:8080/contact");
		st=con.createStatement();
		return true;
	}

		%>
	<!dbconnection ends here>
	<!function for adding new contacts to database>
	<%!public boolean addContact(String name,String number)throws
IOException,ClassNotFoundException,SQLException{
if(dbConnect()){
	return true;
}
return false;
         
     } 
%>
 <%
if(request.getParameter("add")!=null){
	if(addContact(request.getParameter("name"),request.getParameter("number")))
		out.println("Contact added success fully");
 }
if(request.getParameter("delete")!=null){ 
    out.println("delete");   
}
if(request.getParameter("view")!=null){    
    out.println("view"); 
}

%>


</body>
</html>