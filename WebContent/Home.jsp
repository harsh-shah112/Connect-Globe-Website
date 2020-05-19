<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description"content=""/>
<meta name="keywords" content=""/>
<title>Connect Globe</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="style.css"/>
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
		$('#slider').slidertron({
			viewerSelector: '.viewer',
			indicatorSelector: '.indicator span',
			reelSelector: '.reel',
			slidesSelector: '.slide',
			speed: 'slow',
			advanceDelay: 4000
		});
	});
	function validate(){  
		var name=document.myform.username.value;  
		if(name.length<1){  
		document.getElementById("nameloc").innerHTML=  
		"<img src='images/unchecked.gif'/> Please enter your name";  
		status=false;  
		}
		else
		{  
		document.getElementById("nameloc").innerHTML="<img src='images/checked.gif'/>";  
		status=true;  
		}
	  }
		function validate1(){
		var password=document.myform.password.value;  
		var status=false;  
		if(password.length<5)
		{  
		document.getElementById("passwordloc").innerHTML=  
		"<img src='images/unchecked.gif'/> Password must be at least 5 char long";  
		status=false;  
		}
		else
		{  
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
	<div id="menu1234">
		<ul>
		<li class="last" id="title"><a href="aboutus.jsp">AboutUs</a></li>
		</ul>
		<br class="clearfix" />
	</div>
	<div id="slider">
		<div class="viewer">
			<div class="reel">
				<div class="slide">
					<img src="images/slide01.jpg" alt="" />
				</div>
				<div class="slide">
					<img src="images/slide02.jpg" alt="" />
				</div>
				<div class="slide">
					<img src="images/slide03.jpg" alt="" />
				</div>
			</div>
		</div>
		<div class="indicator">
			<span>1</span>
			<span>2</span>
			<span>3</span>
			
		</div>
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
		<div id="sidebar1">
			<div class="box">
				<th width="60%" scope="col">
				<form method="post" action="login.jsp" name="myform">
				<table width="60%" border="0" height="60%" cellpadding="5" cellspacing="5" style="border:#000000 solid 1px"; padding:10px; alignment-adjust:central; style="font-weight:normal";background-color:#FFFFFF">
				<tr>
				<th colspan="3" bgcolor="#000000" scope="col"><font color="#FFFFFF">User Login</font></th>
				</tr>
				<tr>
				<td width="28%" rowspan="3"><div align="center"><img src="images/icon_module.png" width="48" height="48" /></div></td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				</tr>
				<tr>
				<td width="24%"><b>Username:</b></td>
				<td width="45%"><label>
				<input name="uname" type="text" id="username" onblur="return validate()" style="height:30px; width:240px" placeholder="Enter User Name"/><span id="nameloc"></span>
				</label></td>
				</tr>
				<tr>
				<td><b>Password:</b></td>
				<td><label>
				<input name="pass" type="password" id="password" class="border" onblur="return validate1()" style="height:30px; width:240px" placeholder="Enter User Password"/><span id="passwordloc"></span>
				</label></td>
				</tr>
				<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td colspan="2"><label>
				<div align="left">
				<input name="Submit" type="submit" value="   Login   " />
				<input type="reset" value="   Reset  "/>
				</div>
				</label></td>
				</tr>
				</table>
			</div>
		</div>
		
		
		 
	                <div id="register">
Want to Create a New Account?<a href="index.jsp" style="color:blue;text-decoration;">Click Here </a>
			</div>
			
			<br class="clearfix" />
	</div>
			<div id="page-bottom">
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