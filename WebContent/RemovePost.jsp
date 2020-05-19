<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/sql" prefix="sql"%>

<sql:setDataSource driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/connectglobe" user="root"
	password="root" var="myds" scope="request" />

<sql:update dataSource="${requestScope.myds}"
	sql="delete from postreport where post_id=?" var="count">
	<sql:param value="${param.post_id}" />
</sql:update>

<c:if test="${count eq 1}">
	<b>Report Removed</b>
</c:if>
<c:if test="${count ne 1}">
	<b>Problem in removing Post</b>
</c:if>
<br />
<a href="GetPostDetails.jsp">View Report</a>
