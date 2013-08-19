<%-- 
    Document   : student_registration
    Created on : Mar 2, 2013, 7:40:48 PM
    Author     : Shajeer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Untitled Document</title>
        <style type="text/css">
            #form1 table tr td table tr td label {
                font-size: 14px;
            }
            #form1 table tr td {
                text-align: center;
                font-family: "Times New Roman", Times, serif;
                font-weight: bold;
                font-size: 16px;
            }
            #form1 center table tr td table {
                text-align: right;
            }
            #form1 center table tr td table tr td {
                text-align: left;
            }
        </style>
        <link rel="stylesheet" href="newstyle.css" type="text/css" />
    </head>

    <body>
        <form id="form1" name="form1" method="post" action="stud_reg.jsp">
            <center>
                <table width="45%" height="791" border="1" cellpadding="10" cellspacing="3" class="outertable">
                    <tr>
                        <td>STUDENT REGISTRATION</td>
                    </tr>
                    <tr>
                        <td><table width="100%" border="0" cellpadding="15" cellspacing="5" class="innertable">
                                <tr>
                                    <td>Student ID :</td>
                                    <td><label for="u_id"></label>
                                        <div align="center">
                                            <input name="u_id" type="text" class="textbox" id="u_id" />
                                        </div></td>
                                </tr>
                                <tr>
                                    <td>Student name :</td>
                                    <td><div align="center">
                                            <input name="u_name" type="text" class="textbox" id="u_name" />
                                        </div></td>
                                </tr>
                                <tr>
                                    <td>Address :</td>
                                    <td><label for="address"></label>
                                        <div align="center">
                                            <textarea name="address" cols="28" rows="5" id="address"></textarea>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td>Place :</td>
                                    <td><div align="center">
                                            <input name="place" type="text" class="textbox" id="place" />
                                        </div></td>
                                </tr>
                                <tr>
                                    <td>Pincode :</td>
                                    <td><div align="center">
                                            <input name="pincode" type="text" class="textbox" id="pincode" />
                                        </div></td>
                                </tr>
                                <tr>
                                    <td>D.O.B :</td>
                                    <td><div align="center">
                                            <input name="dob" type="text" class="textbox" id="dob" />
                                        </div></td>
                                </tr>
                                <tr>
                                    <td>Phone :</td>
                                    <td><div align="center">
                                            <input name="phone" type="text" class="textbox" id="phone" />
                                        </div></td>
                                </tr>
                                <tr>
                                    <td>e-mail :</td>
                                    <td><div align="center">
                                            <input name="email" type="text" class="textbox" id="email" />
                                        </div></td>
                                </tr>
                                <tr>
                                    <td>Roll number :</td>
                                    <td><div align="center">
                                            <input name="rollnum" type="text" class="textbox" id="rollnum" />
                                        </div></td>
                                </tr>
                                <tr>
                                    <td>Batch :</td>
                                    <td><label for="batch"></label>
                                        <div align="center">
                                            <select name="batch" class="textbox" id="batch">
                                            </select>
                                        </div></td>
                                </tr>
                                <tr>
                                    <td>Date of joining :</td>
                                    <td><div align="center">
                                            <input name="doj" type="text" class="textbox" id="doj" />
                                        </div></td>
                                </tr>
                                <tr>
                                    <td>Photo :</td>
                                    <td><label for="image"></label>
                                        <input name="image" type="file" class="textbox" id="image" /></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td><div align="center">
                                            <input name="Submit" type="submit" class="submit" id="submit" value="Submit" />
                                        </div></td>
                                </tr>
                            </table></td>
                    </tr>
                </table>
            </center>
            <p>&nbsp;</p>
        </form>
    </body>
</html>
