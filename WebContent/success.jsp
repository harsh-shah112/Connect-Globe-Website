
<%
	if ((session.getAttribute("userid") == null)
			|| (session.getAttribute("userid") == "")) {
%>
You are not logged in
<br />
<a href="Home.jsp">Please Login</a>
<%
	} else {
%>
Welcome
<%=session.getAttribute("userid")%>
<a href='logout.jsp'>Log out</a>
<%
	}
%>