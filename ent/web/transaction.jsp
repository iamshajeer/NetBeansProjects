<%@page import="ent.Medicine"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>design</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />

        <style type="text/css">
            <!--
            .style1 {	color: #0000FF;
                      font-weight: bold;
            }
            .style2 {
                font-size: 12px;
                font-weight: bold;
            }
            .style3 {
                font-size: 12px;
                color: #FFFFFF;
            }
            .style4 {
                font-size: 36px;
                font-weight: bold;
            }
            .style5 {font-size: 36px}
            p {
                font-size: 24px;
                font-family: "Times New Roman", Times, serif;
            }
            -->
        </style>
    </head>
    <body>
        <div id="content">
            <div id="back">
                <!-- header begins -->
                <div id="header"> 
                    <div id="logo">
                        <h1 class="style4"><a href="#" class="style5" >SINUS ENT HOSPITAL </a></h1>
                    </div>
                    <div id="menu">
                        <ul>
                            <li id="button1"> <a href="#"  title="">Home</a></li>

                            <li id="button4"><a href="#" title="">About</a></li>
                            <li id="button5"><a href="#" title="">Contact</a></li>
                        </ul>
                    </div>
                </div>

                <!-- header ends -->
                <!-- content begins -->
                <div id="main">
                    <div id="right">	

                        <h3>select me...</h3>
                        <div class="title_back">

                            <p class="style2">
                                <ul>
                                    <li><a href="addmedicine.jsp" >Add Medicine</a></li>
                                    <li><a href="deletemedicine.jsp">Delete Medicine</a></li>
                                    <li><a href="stock.jsp">Stock</a></li>
                                    <li><a  href="transaction.jsp">Transaction</a></li>
                                    <li><a href="prescriptonphar.jsp">Prescription</a></li>
                                    <li><a  href="balancesheet.jsp" >Balance sheet</a></li>
                                    <li><a href="bill.jsp" >Bill</a></li>
                                </ul>&nbsp;</p>
                            <h2>&nbsp;</h2>
                            <ul>
                                <h3>information..</h3>
                                <li id="about"><a href="" title="">About SINUS </a></li>

                                <li id="enquiry"><a href="enquiry.jsp" title="">Enquiry</a></li>

                                <li id="doctor"><a href="doctor.jsp" title="">Doctors Panel</a></li>
                                <li id="facility"><a href="" title="">Facilities</a></li>

                                <li id="health"><a href="health.jsp" title="">Health Care Packeges</a></li>
                                <li id="inf"><a href="infomation.jsp" title="">Information Desk</a></li>

                            </ul>	
                        </div>

                        <h3>Calendar</h3>
                        <div class="title_back">
                            <div id="calendar">
                                <table id="calendar2" summary="Calendar">
                                    <caption>
                                        January 2008
                                    </caption>
                                    <thead>
                                        <tr>
                                            <th abbr="Monday" scope="col" title="Monday">M</th>
                                            <th abbr="Tuesday" scope="col" title="Tuesday">T</th>
                                            <th abbr="Wednesday" scope="col" title="Wednesday">W</th>
                                            <th abbr="Thursday" scope="col" title="Thursday">T</th>
                                            <th abbr="Friday" scope="col" title="Friday">F</th>
                                            <th abbr="Saturday" scope="col" title="Saturday">S</th>
                                            <th abbr="Sunday" scope="col" title="Sunday">S</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <td abbr="Des" colspan="3" id="prev"><a href="#">&laquo; Des</a></td>
                                            <td class="pad">&nbsp;</td>
                                            <td abbr="Feb" colspan="3" id="next" class="pad"><a href="#">Feb &raquo;</a></td>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td colspan="2" class="pad">&nbsp;</td>
                                            <td>1</td>
                                            <td>2</td>
                                            <td>3</td>
                                            <td>4</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>7</td>
                                            <td>8</td>
                                            <td>9</td>
                                            <td>10</td>
                                            <td>11</td>
                                            <td>12</td>
                                        </tr>
                                        <tr>
                                            <td>13</td>
                                            <td>14</td>
                                            <td>15</td>
                                            <td>16</td>
                                            <td>17</td>
                                            <td>18</td>
                                            <td>19</td>
                                        </tr>
                                        <tr>
                                            <td>20</td>
                                            <td id="now">21</td>
                                            <td>22</td>
                                            <td>23</td>
                                            <td>24</td>
                                            <td>25</td>
                                            <td>26</td>
                                        </tr>
                                        <tr>
                                            <td>27</td>
                                            <td>28</td>
                                            <td>29</td>
                                            <td>30</td>
                                            <td>31</td>
                                            <td class="pad" colspan="2">&nbsp;</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                    <div id="left">		
                        <div class="left_box">
                            <h1>HOSPITAL THAT SERVES HUMAN....................... </h1>
                            <h2>&nbsp;</h2>

                            <form  action="pharmnew/trans.jsp">

                                <p>&nbsp;</p>
                                <p>Transaction</p>
                                <p>&nbsp;</p>
                                <table width="399" height="158" cellpadding="1">
                                    <tr>
                                        <td width="149" height="29"><strong>Medicine Name</strong>
                                        </td><td><select name="medname">
                                                <option>Select</option>
                                                <%
                                                    SessionFactory sf = new Configuration().configure().buildSessionFactory();
                                                    Session s = sf.openSession();
                                                    Medicine m = null;
                                                    String query = "from Medicine";
                                                    List l = s.createQuery(query).list();
                                                    Iterator i = l.iterator();
                                                    while (i.hasNext()) {
                                                        m = (Medicine) i.next();
                                                %>
                                                <option value="<%=m.getName()%>"><%=m.getName()%></option>
                                                <%}%>
                                            </select></td></tr>

                                    <tr>
                                        <td height="31"><strong>Number of medicine</strong></td>
                                        <td><label for="medno"></label>
                                            <input type="text" name="medno" id="medno" /></td>
                                    </tr>
                                    <tr>
                                        <td height="32"><strong>price</strong> </td>
                                        <td><label for="price"></label>
                                            <input type="text" name="price" id="price" /></td>
                                    </tr>

                                    <tr><td><input type="submit" style="width:75px;height: 25px;" value="ok" name="ok" />
                                            </table></form>

                                            <div class="left_box"></div>
                                            <div style="clear: both;">&nbsp;</div>
                                            <!--content ends -->
                                            <!--footer begins -->
                                            </div>

                                            <div id="footer">
                                                <p>&nbsp;</p>
                                            </div>
                                            </div>
                                            </div>
                                            <!-- footer ends-->
                                            </body>
                                            </html>