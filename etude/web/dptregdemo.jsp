<%-- 
    Document   : dptregdemo
    Created on : Mar 15, 2013, 12:00:15 AM
    Author     : Shajeer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="icon" href="images/ico.ico"  />
        <link rel="stylesheet" href="newstyleforfr.css" type="text/css"/>
        
    </head>

    <body onload="dptid.focus()">
        <form id="form1" name="form1" method="post" action="">
            <table width="500" cellpadding="10" cellspacing="3" class="outertable">
                <tr>
                    <td id="tabhead"> <div align="center">DEPARTMENT REGISTRATION</div></td>
                </tr>
                <tr>
                    <td><table width="100%" border="0" cellpadding="15" cellspacing="5" class="innertable">
                            <tr>
                                <td>Dept Id :</td>
                                <td><label for="dptid"></label>
                                    <div align="center">
                                        <input name="dptid" type="text" class="textbox" id="dptid" />
                                    </div></td>
                            </tr>
                            <tr>
                                <td>Dept Name :</td>
                                <td><label for="dptname"></label>
                                    <div align="center">
                                        <input name="dptname" type="text" class="textbox" id="dptname" />
                                    </div></td>
                            </tr>
                            <tr>
                                <td>Librarian User Name :</td>
                                <td><label for="dptid3"></label>
                                    <div align="center">
                                        <input name="l_name" type="text" class="textbox" id="dptid3" />
                                    </div></td>
                            </tr>
                            <tr>
                                <td>Librarian Id :</td>
                                <td><label for="dptid4"></label>
                                    <div align="center">
                                        <input name="luname" type="text" class="textbox" id="dptid4" />
                                    </div></td>
                            </tr>
                            <tr>
                                <td>Librarian Password :</td>
                                <td><label for="dptid5"></label>
                                    <div align="center">
                                        <input name="lid" type="password" class="textbox" id="dptid5" />
                                    </div></td>
                            </tr>
                            <tr>
                                <td>Confirm Password :</td>
                                <td><label for="dptid6"></label>
                                    <div align="center">
                                        <input name="lpwd" type="password" class="textbox" id="dptid6" />
                                    </div></td>
                            </tr>
                            <tr>
                                <td>Librarian Name :</td>
                                <td><div align="center">
                                        <input name="lname" type="text" class="textbox" id="lname" />
                                    </div></td>
                            </tr>
                            <tr>
                                <td>Address :</td>
                                <td><label for="laddress"></label>
                                    <div align="center">
                                        <textarea name="laddress" cols="28" rows="5" id="laddress"></textarea>
                                    </div></td>
                            </tr>
                            <tr>
                                <td>Place :</td>
                                <td><div align="center">
                                        <input name="lplace" type="text" class="textbox" id="lplace" />
                                    </div></td>
                            </tr>
                            <tr>
                                <td>Pincode :</td>
                                <td><div align="center">
                                        <input name="lpin" type="text" class="textbox" id="lpin" />
                                    </div></td>
                            </tr>
                            <tr>
                                <td>e-mail :</td>
                                <td><div align="center">
                                        <input name="lmail" type="text" class="textbox" id="lmail" />
                                    </div></td>
                            </tr>
                            <tr>
                                <td>Phone Number :</td>
                                <td><div align="center">
                                        <input name="lphone" type="text" class="textbox" id="lphone" />
                                    </div></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td><div align="center">
                                        <input name="button" type="submit" class="submit" id="button" value="Submit" />
                                    </div></td>
                            </tr>
                        </table></td>
                </tr>
            </table>
            </div>
        </form>
    </body>
</html>