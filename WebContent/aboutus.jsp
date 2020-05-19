<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<title>Connect Globe</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript" src="jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="jquery.dropotron-1.0.js"></script>
<script type="text/javascript" src="jquery.slidertron-1.1.js"></script>
<script type="text/javascript">
	$(function() {
		$('#menu > ul').dropotron({
			mode: 'fade',
			globalOffsetY: 11,
			offsetY: -15
		});
	});
	function validate(){  
		var name=document.myform.username.value;  
		var password=document.myform.userpass.value;  
		var status=false;  
		if(name.length<1){  
		document.getElementById("nameloc").innerHTML=  
		"<img src='images/unchecked.gif'/> Please enter your name";  
		status=false;  
		}else{  
		document.getElementById("nameloc").innerHTML="<img src='images/checked.gif'/>";  
		status=true;  
		}  
		if(password.length<5){  
		document.getElementById("passwordloc").innerHTML=  
		"<img src='images/unchecked.gif'/> Password must be at least 6 char long";  
		status=false;  
		}else{  
		document.getElementById("passwordloc").innerHTML="<img src='images/checked.gif'/>";  
		status=true;  
		}  
		return status;  
		}  
 </script>
<style>
#register
{
	color:red;
	text-decoration: blink;
}
var isLoggedIn = "<%= (String)session.getAttribute("isLoggedIn")%>";
  if(isLoggedIn === "true")
     window.location.href="menu.jsp";
  }
</style>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#">Connect Globe</a></h1>
		</div>
	</div>
	<div id="menu420">
	<ul>
			<li class="last" id="title"><a href="Home.jsp">Back</a></li>
			
	</ul>
	<br class="clearfix"/>
	</div>
		<div id="page">
		<div id="content">
		        <div class="box" style="margin:10px;">
				<h2>Welcome Connect Globe</h2>
				<fieldset style="border:thin">
				<p style="margin-left:5px;"><marquee id="ctl00_rightContainer_LblPanel2_panel2" scrollamount="1" scrolldelay="50" align="justify" direction="up" onmouseout="this.start()" onmouseover="this.stop()">
					
					<strong>Now You can Share Your Social Problem such as some kind of Harassment,Bribe matters</strong>.
					Simply just Register Yourself and Do login After that click on Post Report Link as shown above.
					And After selecting Your subject and location YOu can post Your matter Simply.This will be visible
					to every visitors and our Supporters will try to proceed it further.
				</p>
				</marquee>
				</fieldset>
			</div>
		</div>
		<div id="sidebar2">
			<div class="box">
		        <div class="box" style="margin:10px;">
		        <tr>
        		<th colspan="10" scope="col">
				<div class="box1">
	    		<marquee><h2><font color="#000000"><br>This Project Developed By Kishor Kadam(MCA)</font></h2></marquee>
				</div>
				</th>
      			</tr>
				<table  width="100%" border="0" cellpadding="5" cellspacing="5" style="border:#000000 solid 1px"; padding:10px; alignment-adjust:central; style="font-weight:normal";background-color:#FFFFFF">
				<tr>
				<th colspan="3" bgcolor="#000000" scope="col"><font color="#FFFFFF">!!!....Project Devloper....!!!</font></th>
				</tr>
				<tr>
				<td>
				<div id="uprf" bgcolor="#380000">
				<img src="images/kishor.jpg" style="float:left;margin:10px;" height="150" width="130" border="5"/>
				<fieldset border="3">
				<P margin="left">
				   <Strong><u>Project Name:</u></Strong> Connect Globe<br>
				   <strong><u>Technology:</u></strong> Servlet,JSP,JavaScript,HTML.<br>
				   <Strong><u>Database:</u></Strong> MySQL<br>
				   <Strong><u>Server:</u></Strong> Tomcat-7.0<br>
				   <Strong><u>Developer Name:</u></Strong> Kishor Kadam <br>
				   <Strong><u>Education:</u></Strong> MCA(IIMP),Pune<br>
				   <strong><u>Role:</u></strong> Devloper,Designer,Analysis,Database Designer,Testing.<br>
				   <Strong><u>Mobile:</u></Strong> 07276763516
				</P>
				</fieldset>
				</div>
				</td>
				</tr>
				</table>
				</div>
				</div>
			</div>
			<br class="clearfix" />
	</div>
			<div id="page-bottom1">
		<div id="page-bottom-content">
			<h3>Connect Globe</h3>
			<p>
					Now You can Share Your Social Problem such as some kind of Harassment,Bribe matters.
					Simply just Register Yourself and Do login After that click on Post Report Link as shown above.
					And After selecting Your subject and location YOu can post Your matter Simply.This will be visible
					to every visitors and our Supporters will try to proceed it further.
			</p>
		</div>
		<div id="page-bottom-sidebar">
			<h3>Social Media</h3>
			<ul class="list">
				<li class="first"><a href="http://www.facebook.com">Facebook</a></li>
				<li><a href="http://www.twitter.com">Twitter</a></li>
				<li class="last"><a href="http://www.youtube.com">You Tube</a></li>
			</ul>
		</div>
		<br class="clearfix" />
	</div>
</div>

<div id="footer" style="color:red">
	Copyright (c) 2015 ConnectGlobe.com. All rights reserved. Design by Kishor Kadam.
</div>	
</body>
</html>