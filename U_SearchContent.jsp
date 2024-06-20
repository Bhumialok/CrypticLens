<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Deails...</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-georgia.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style5 {font-size: 24px}
.style10 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="searchform"></div>
      <div class="logo">
        <h1><a href="index.html"><span class="style5">BOEW A Content based Image Retrieval Scheme using Bag of Encrypted Words in Cloud Computing</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="A_Login.jsp"><span>admin</span></a></li>
          <li class="active"><a href="U_Login.jsp"><span>user</span></a></li>
          <li><a href="U_Register.jsp"><span>register</span></a></li>
          <li></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <div class="post_content">

<style type="text/css">
<!--
.style1 {color: #FF0000}
-->
</style>

        <table width="671" border="0" cellspacing="2" cellpadding="2">
          <tr>
            <td width="663"><span class="style43"> Found Image  <span class="style82"><%=request.getParameter("imgname")%></span> Details..</span></td>
          </tr>
        </table>
        <h2>&nbsp;</h2>
        <br>
        <div class="clr"></div>
        
        <p class="style50">
<%@ include file="connect.jsp" %>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
          <%
String imgname=request.getParameter("imgname");
String desc=request.getParameter("desc");
 
  int id = Integer.parseInt(request.getParameter("id"));
	String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
	int i=0,j=0;
	String iname="image";

try 
{
           
      		
           String query="select * from images where id="+id+" "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
		   while ( rs.next() )
		   {
				j=rs.getInt(1);
				s2=rs.getString(2); // username
				s3=rs.getString(3); // Image Name
				s4=rs.getString(4); // Desc
				s5=rs.getString(5);// Date
				s6=rs.getString(7); //Rank
				
%>
        
        
        <table width="319" border="0" align="center" cellpadding="2" cellspacing="2">
          <tr>
            <td width="141" height="37" valign="top" bgcolor="#FFFFFF"><span class="style47 style41"><span class="style1 style56 style47 style10 style5">Image</span></span></td>
            <td><span class="style22 style29 style42 style45" style="margin:10px 13px 10px 13px;; font-size: 14px;">
              <input  name="image" type="image" src="images.jsp?id=<%=j%>&value=<%=iname%>" style="width:90px; height:90px;" />
            </span></td>
          </tr>
          <tr>
            <td width="141" height="37" bgcolor="#FFFF00"><span class="style47 style41"><strong><span class="style47 style56 style1 style10">Username</span></strong></span></td>
            <td width="164"><span class="style10 style80"><strong>
              <%out.println(s2);%>
            </strong></span></td>
          </tr>
          <tr>
            <td height="31" bgcolor="#FFFF00"><p class="style1 style47 style41 style10"><strong><span class="style57">Image Name</span></strong></p></td>
            <td><span class="style10 style80"><strong>
              <%out.println(s3);%>
            </strong></span></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#FFFF00"><span class="style1 style57 style10"><strong>Description</strong></span></td>
            <td><span class="style10 style80"><strong>
              <%out.println(desc);%>
            </strong></span></td>
          </tr>
          <tr>
            <td height="46" bgcolor="#FFFF00"><span class="style1 style57 style10"><strong>Date and Time </strong></span></td>
            <td><span class="style10 style80"><strong>
             
              <%out.println(s5);%>
            </strong></span></td>
          </tr>
          <tr>
            <td bgcolor="#FFFF00"><div align="left" class="style1 style56 style5 style10"><strong>Rank</strong></div></td>
            <td><p class="style10 style80"><strong>
                <%out.println(s6);%>
            </strong></p></td>
          </tr>
        </table>
      
        <p>
          <%

	   }

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
        </p>
		
		<p><a href="U_Main.jsp">Back</a></p>
          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="U_Main.jsp">Home</a></li>
            <li><a href="U_Login.jsp">LogOut</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
 