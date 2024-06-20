<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Image...</title>
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
.style9 {font-size: 18px}
.style10 {color: #FFFF00}
.style11 {color: #FF0000}
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
         
		  <%@ include file="connect.jsp" %>
          <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
		 
		  <%@ page import ="javax.crypto.Cipher" %> 
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
          <%
try 
{
  
 	SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
	SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

	Date now = new Date();

	String strDate = sdfDate.format(now);
	String strTime = sdfTime.format(now);
	String dt = strDate + "   " + strTime;
				
		String dt1 = request.getParameter("t3").toLowerCase();
		if(dt1.equals(""))
		{
				%>
          <br/>
          <br/>
          </strong></span>
        <p class="style52"><span class="style46"><strong>Please Input the Keyword to Search..</strong></span></p>
        <p><br/>
        
          <%
		}
		else
		{
				
				String s1,s2,s3,s4,s5,s6,s7,s8,imgname="",description="",content="",title="";
%>
        </p>
        <table width="671" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
          <tr>
            <td  width="48" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style52 style55 style9 style10">Si No. </div></td>
            <td  width="152" height="34" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style52 style55 style9 style10">Image Name </div></td>
            <td  width="134" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style9">View Image Details </div></td>
          </tr>
          <tr>
            <%
				
		
					   String uname=(String)application.getAttribute("uname");
					   
      		
					   int j=1,i=0;
					  
						String str = "select * from images where username!='"+uname+"'";
						Statement st=connection.createStatement();
						ResultSet rs = st.executeQuery(str);
						while(rs.next())
						{
								
								i=rs.getInt(1);
								title=rs.getString(3);
								
								description = rs.getString(4); 
								
								
						String keys = "ef50a0ef2c3e3a5f";
						byte[] keyValue = keys.getBytes();
						Key key = new SecretKeySpec(keyValue,"AES");
						Cipher c = Cipher.getInstance("AES");
						c.init(Cipher.DECRYPT_MODE,key);
						String decryptedDes= new String(Base64.decode(description.getBytes()));
								
						
								String imgname1 = title.toLowerCase(); 
								String description1 = decryptedDes.toLowerCase(); 
								
								
								
						String keys1 = "ef50a0ef2c3e3a5f";
						byte[] keyValue1 = keys1.getBytes();
						Key key1 = new SecretKeySpec(keyValue1,"AES");
						Cipher c1 = Cipher.getInstance("AES");
						c1.init(Cipher.ENCRYPT_MODE,key1);
						String encryptedkw= new String(Base64.encode(dt1.getBytes()));		
						
						
								if (imgname1.contains(dt1) || description1.contains(dt1))
      							{
      								
									String query4 ="insert into searchfound(user,keyword,imgname,date,encword)values('"+uname+"','"+dt1+"','"+title+"','"+dt+"','"+encryptedkw+"')";
									Statement st4=connection.createStatement();
					  				st4.executeUpdate(query4); 
						%>
            <td height="0" align="center"  valign="middle"><div align="center" class="style60 style47 style29 style61 style11"><strong> 
                  <%out.println(j);%>
                </strong></div></td>
            <td width="152" align="center" valign="middle" ><div class="style54 style11" style="margin:10px 13px 10px 13px;" >
                <%out.println(title);%>
            </div></td>
            
            <td height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style29 style42 style45">
                  <p><a href="U_SearchContent.jsp?id=<%=i%>&imgname=<%=title%>&desc=<%=description1%>" class="style56">View Image Details </a></p>
                </div></td>
          </tr>
			             <%       }
		  
		               }
								   %>
        </table>
          <p>
            <%
          }
         }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </p>
          <p>&nbsp;</p>
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

		