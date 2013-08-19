<%-- 
    Document   : stregdemo
    Created on : Mar 19, 2013, 3:13:18 PM
    Author     : Shajeer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="newstyleforfr.css" type="text/css"/>
<link href="default.css" rel="stylesheet" type="text/css" />
</head>

<body onload="st_id.focus()">
<form id="form1" enctype="multipart/form-data">

<table width="600" border="0" align="center" cellpadding="10" cellspacing="3" class="outertable">
  <tr>
    <td id="tabhead"><div align="center">STAFF REGISTRATION</div></td>
  </tr>
  <tr>
    <td><div align="right">
      <table width="100%" border="0" cellpadding="15" cellspacing="5" class="innertable">
        <tr>
          <td>Staff Id <span id="mandatory"><a href="#" title="Must entert staff id">*</a></span>:</td>
          <td><label for="st_id"></label>
            <input name="st_id" type="text" class="textbox" id="st_id" /></td>
          </tr>
        <tr>
          <td>Staff Name <span id="mandatory"><a href="#" title="Must entert staff name">*</a></span>:</td>
          <td><input name="st_name" type="text" class="textbox" id="st_name" /></td>
          </tr>
        <tr>
          <td>Adress <span id="mandatory"><a href="#" title="Must entert address">*</a></span>:</td>
          <td><input name="st_address" type="text" class="textbox" id="st_address" /></td>
          </tr>
        <tr>
          <td>Place :</td>
          <td><input name="st_id4" type="text" class="textbox" id="st_id4" /></td>
          </tr>
        <tr>
          <td>Pincode <span id="mandatory"><a href="#" title="Must entert pincode">*</a></span>:</td>
          <td><input name="st_id5" type="text" class="textbox" id="st_id5" /></td>
          </tr>
        <tr>
          <td>D.O.B :</td>
          <td><input name="st_id6" type="text" class="textbox" id="st_id6" /></td>
          </tr>
        <tr>
          <td>Phone Number <span id="mandatory"><a href="#" title="Must entert phone number">*</a></span>:</td>
          <td><input name="st_id7" type="text" class="textbox" id="st_id7" /></td>
          </tr>
        <tr>
          <td>e-mail :</td>
          <td><input name="st_id8" type="text" class="textbox" id="st_id8" /></td>
          </tr>
        <tr>
          <td>Date Of Joining <span id="mandatory"><a href="#" title="Must entert date of joining">*</a></span>:</td>
          <td><input name="st_id9" type="text" class="textbox" id="st_id9" /></td>
          </tr>
        <tr>
          <td>Choose Image :</td>
          <td><label for="st_photo"></label>
            <input type="file" name="st_photo" id="st_photo" /></td>
          </tr>
        <tr>
          <td>Staff type <span id="mandatory"><a href="#" title="Must entert type of staff">*</a></span> :</td>
          <td><label for="staff_type"></label>
            <select name="staff_type" class="textbox" id="staff_type">
              </select></td>
          </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div align="center">
            <input name="submit" type="submit" class="submit" id="submit"  />
            </div></td>
          </tr>
      </table>
    </div></td>
  </tr>
</table>
</div>
</form>
</body>
</html>
