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
		
	});
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
	<div id="menu2">
		<ul>
			
			<li class="last" id="title"><a href="GetPostDetails.jsp">Post Report</a></li>
			<li class="last" id="title"><a href="UserReport.jsp">User Report</a></li>
			<li class="last" id="title"><a href="adminlogout.jsp">LogOut</a></li>
			
		</ul>
		<br class="clearfix" />
	</div>
	<div id="page">
		<div id="content">
		        
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