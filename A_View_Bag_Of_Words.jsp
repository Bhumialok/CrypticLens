<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All user Images</title>
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
.style3 {
	font-family: "Times New Roman", Times, serif;
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
}
.style5 {font-size: 24px}
.style6 {color: #FF0000}
.style7 {font-size: 14px}
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
          <li class="active"><a href="A_Login.jsp"><span>cloud</span></a></li>
          <li><a href="U_Login.jsp"><span>user</span></a></li>
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
          <div class="img"></div>
          <div class="post_content">
            <p align="justify">&nbsp;</p>
      <table width="494" border="0" cellspacing="2" cellpadding="2">
        <tr>
          <td width="486" height="56"><span class="style31 style46 style30  style35 style3">View Bag Of Encrypted Words </span></td>
        </tr>
      </table>
      <div class="gadget">
        <table width="909" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
          <tr>
            
            <td  width="150" height="28" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style56 style57 style6 style7">Image Name (Click on Image Name to view correspoding Bag_Of_Words)</div></td>
			
			 <td  width="150" height="28" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style56 style57 style6 style7">Check Words</div></td>
          </tr>
          <%@ include file="connect.jsp" %>
          <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=1;
						try 
						{
						   	String query="select distinct imgname from searchfound order by user ASC"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
					
								
								s3=rs.getString(1);
								
								
							
						
					%>
          <tr>
            
            <td height="54" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style55 style68 style69 style72 style6">
                <%out.println(s3);%>
            </div></td>
			
			 <td height="54" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style55 style68 style69 style72"> <a href="A_View_Bag_Of_Words1.jsp?imgname=<%=s3%>">View Bag Of Words</a>
               
            </div></td>
          </tr>
          <%
						i+=1;}
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
        </table>
       <div align="center">
		          <p>&nbsp;</p>
		          <p><a href="A_Main.jsp" class="style14">Back</a></p>
            </div>

          </div>
          <div class="clr"></div>
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
