<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
Author: Java Team
Website: http://www.realitysoftware.ca
Note: This is a free template released under the Creative Commons Attribution 3.0 license, 
which means you can use it in any way you want provided you keep the link to the author intact.
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="style.css" rel="stylesheet" type="text/css" /></head>
<body>
	<!-- header -->
    <div id="logo"><a href="#"><h3>CAPTCHA</h3> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;COMPLETELY AUTOMATED PUBLIC TURING TEST TO TELL COMPUTERS AND HUMANS APART</a></div>
    <div id="header">
    	<div id="left_header"></div>
        <div id="right_header"></div>
  </div> 
  <div id="menu">
        	<ul>
              <li><a href="index.html">Home</a></li>
              <li><a href="Contacts.html">Contacts</a></li>
			  			  <li><a href="Logout.jsp">Logout</a></li>

		
          </ul>
      </div>
    <!--end header -->
    <!-- main -->
    <div id="content">
    	<div id="content_top">
        	<div id="content_top_left"></div>
            <div id="content_top_right"></div>
        </div>
      <div id="content_body">
       	  <div id="sidebar">
            <div id="sidebar_top"></div>
            <div id="sidebar_body">
            <h1>WELCOME TO HOMEPAGE</h1>
              <ul>
                <li><a href="Login.jsp">LOGIN</a> </li>
                <li><a href="Register.jsp">REGISTER</a> </li>
              </ul>
              
              </div>
                <div id="sidebar_bottom"></div>
          </div>
            <div id="text">
            <div id="text_top">
            	<div id="text_top_left"></div>
                <div id="text_top_right"></div>
            </div>
            <div id="text_body">
              <h1><span>Enter Into The World Of CAPTCHA</span></h1>
              

<form action="AdminLogin.jsp" method="post">

UserName<input type="text" name="adminuname"><br>
Password<input type="password" name="adminpwd"><br>
<input type="submit" value="Login">




<%!Connection con=null;
Statement st=null;
ResultSet rs=null;
%>
<%
String uname=request.getParameter("adminuname");
System.out.println(uname);
String p=request.getParameter("adminpwd");
System.out.println(p);
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","captcha","captcha");
st=con.createStatement();
rs=st.executeQuery("select * from adminlogin where uname='"+uname+"' and password='"+p+"'");
if(rs.next())

{
	System.out.println("inside the if loop");
	response.sendRedirect("AdminMainPage.html");
}
else
{
	System.out.println("im in the error page");
//response.sendRedirect("index.html");
}
rs.close();
st.close();
con.close();
}
catch(Exception e)
{
	e.printStackTrace();
}

%>





</form>









            </div>
                <div id="text_bottom">
                	<div id="text_bottom_left"></div>
                    <div id="text_bottom_right"></div>
                </div>
          </div>
      </div>
        <div id="content_bottom">
        	<div id="content_bottom_left"></div>
            <div id="content_bottom_right"></div>
        </div>
    </div>
    <!-- end main -->
    <!-- footer -->
    <div id="footer">
    <div id="left_footer">&copy;CopyRights Reserved, Hucon Solutions(I) Pvt Ltd </div>
    
    </div>
    <!-- end footer -->


</body>
</html>
