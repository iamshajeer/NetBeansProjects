<%
String username="admin";
String pas="admin";
if(request.getParameter("name").equals(username))
       {
   if(request.getParameter("password").equals(pas))
             {
        session.setAttribute("admin",username);
           //out.println("hai");
          request.getRequestDispatcher("adminhome.jsp?username="+username).forward(request, response);
}
     }
else
     request.getRequestDispatcher("loginform.jsp?username="+username).forward(request, response);

 
%>