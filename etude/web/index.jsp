<%-- 
    Document   : index
    Created on : Mar 14, 2013, 11:57:18 PM
    Author     : Shajeer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>Etude ICLMS</title>
        <link rel="icon" href="images/ico.ico"  />
        <link href="default.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body onload="s.focus();viewImage()">
        <!-- start header -->
        <div id="header">
            <div id="logo">
                <h1><a href="#"><span>Etude </span></a>Integrated Central Library Management System</h1>
            </div>
            <div id="menu">
                <ul id="main">
                    <li class="current_page_item" onclick="viewImage();s.focus()"><a href="#">Homepage</a></li>
                    <li><a href="../settings.html">settings</a></li>
                    <li><a href="#">Stock</a></li>
                    <li><a href="#">Users</a></li>
                    <li><a href="#">E-books</a></li>
                    <li><a href="#">Others</a></li>
                    <li><a href="#" >About us</a>
                </ul>
            </div>
        </div>
        <!-- end header -->
        <div id="wrapper">
            <!-- start page -->
            <div id="page">
                <div id="sidebar1" class="sidebar">
                    <ul>
                        <li>
                            <h2>Registration</h2>
                            <ul>

                                <li id="dptregdemo" onclick="changeFrame(this.id)"><a href="#">Add Department</a></li>
                                <li id="stregdemo" onclick="changeFrame(this.id)"><a href="#">Add Patrons</a></li>
                                <li id="bkregdemo" onclick="changeFrame(this.id)"><a href="#">Add Books</a></li>
                                <li><a href="#"></a><a href="#">Add Journal</a></li>
                            </ul>
                            <ul>
                                <li><a href="#">Add e-books</a></li>

                            </ul>

                            <li>
                                <h2>Reports</h2>
                                <ul>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                </ul>
                            </li>			
                    </ul>
                </div>
                <!-- start content -->
                <div id="content">

                    <div class="post">
                        <iframe  width="100%" height="1350px" scrolling="no" id="myframe" frameborder="0" >
                        </iframe>
                        <h1 class="title"><a href="#">Welcome to Etude,</a></h1>
                        <h3 class="title"><a href="#"> Integrated central library management system!
                                <br />Work on progress</a></h3>
                        <p class="byline">&nbsp;</p>
                        <div class="entry">
                            <p>&nbsp;</p>
                            <p class="links">&nbsp;</p>
                        </div>
                    </div>
                    <div class="post">
                        <h2 class="title">&nbsp;</h2>
                        <div class="entry">
                            <h3>&nbsp;</h3>
                        </div>
                    </div>
                    <div class="post">
                        <h2 class="title">&nbsp;</h2>
                        <div class="entry">
                            <p>&nbsp;</p>
                        </div>
                    </div>
                </div>
                <!-- end content -->
                <!-- start sidebars -->
                <div id="sidebar2" class="sidebar">
                    <ul>
                        <li>
                            <form id="searchform" method="get" action="#">
                                <div>
                                    <h2>Search here</h2>
                                    <input type="text" name="s" id="s" size="15" value="" />
                                </div>
                            </form>
                        </li>

                        <li>
                            <h2>Calendar</h2>
                            <div id="calendar_wrap">
                                <table summary="Calendar">
                                    <caption>
                                        October 2013
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
                                            <td abbr="September" colspan="3" id="prev"><a href="#" title="View posts for September 2009">&laquo; Sep</a></td>
                                            <td class="pad">&nbsp;</td>
                                            <td colspan="3" id="next">&nbsp;</td>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>2</td>
                                            <td>3</td>
                                            <td id="today">4</td>
                                            <td>5</td>
                                            <td>6</td>
                                            <td>7</td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td>9</td>
                                            <td>10</td>
                                            <td>11</td>
                                            <td>12</td>
                                            <td>13</td>
                                            <td>14</td>
                                        </tr>
                                        <tr>
                                            <td>15</td>
                                            <td>16</td>
                                            <td>17</td>
                                            <td>18</td>
                                            <td>19</td>
                                            <td>20</td>
                                            <td>21</td>
                                        </tr>
                                        <tr>
                                            <td>22</td>
                                            <td>23</td>
                                            <td>24</td>
                                            <td>25</td>
                                            <td>26</td>
                                            <td>27</td>
                                            <td>28</td>
                                        </tr>
                                        <tr>
                                            <td>29</td>
                                            <td>30</td>
                                            <td>31</td>
                                            <td class="pad" colspan="4">&nbsp;</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </li>
                        <li>
                            <h2>Circulation</h2>
                            <ul>
                                <li><a href="#"></a></li>
                                <li><a href="#"></a></li>
                                <li><a href="#"></a></li>
                                <li><a href="#"></a></li>
                                <li><a href="#"></a></li>
                                <li><a href="#"></a></li>
                                <li><a href="#"></a></li>
                                <li><a href="#"></a></li>
                                <li><a href="#"></a></li>
                                <li><a href="#"></a></li>
                            </ul>
                        </li>
                        </li>
                    </ul>
                </div>
                <!-- end sidebars -->
                <div style="clear: both;">&nbsp;</div>
            </div>
            <!-- end page -->
            <div id="footer">
                <p class="copyright">&copy;&nbsp;&nbsp;2013 All Rights Reserved &nbsp;&bull;&nbsp; Design by Shajeer kp Ahamed</p>
            </div>
          </body>
    <script type="text/javascript" language="javascript">
        function changeFrame(a){
            document.getElementById('myframe').src = a+".jsp";
            if(a=="dptregdemo" ){
                document.getElementById("myframe").height="1190px";
            }
            else if( a=="stregdemo"){
            
                document.getElementById("myframe").height="850px";
	        
            }
    
            else{
            
                document.getElementById("myframe").height="1400px";
            }
        }
        function viewImage(){
            document.getElementById('myframe').src="images/books.jpg";
            document.getElementById("myframe").height="300px";
        }
    </script>
</html>

