<%-- 
    Document   : newjsp
    Created on : Mar 2, 2013, 9:16:40 PM
    Author     : Shajeer
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="db.createTable.*;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            int pincode, rollnum;
            long phone;
            String stdid, stdname, address, place, email, photourl, dob, doj, batch;
            stdid = request.getParameter("u_id");
            stdname = request.getParameter("u_name");
            out.println("hiii");
            JOptionPane.showMessageDialog(null, "hiii");
            address = request.getParameter("address");
            place = request.getParameter("place");
            email = request.getParameter("email");
            pincode = Integer.parseInt(request.getParameter("pincode"));
            phone = Integer.parseInt(request.getParameter("phone"));
            rollnum = Integer.parseInt(request.getParameter("rollnum"));
            photourl = request.getParameter("image");
            dob = request.getParameter("dob");
            doj = request.getParameter("doj");
            batch = request.getParameter("batch");
            dbCon db = new dbCon();
            db.stmt.executeQuery("insert into student_register values(" + stdid + ","
                    + stdname + ","
                    + dob + ","
                    + address + ","
                    + place + ","
                    + new Integer(pincode) + ","
                    + new Long(phone) + ","
                    + email + ","
                    + doj + ","
                    + batch + ","
                    + photourl + ","
                    + new Integer(rollnum)
                    + ")";
            out.println("ok ");
        %>

        <h1>Hello World!</h1>
    </body>
</html>
