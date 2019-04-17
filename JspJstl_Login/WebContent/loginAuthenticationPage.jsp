<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<core:if test="${not empty param.userName and not empty param.password }">
<sql:setDataSource var="ds" user="root" password="root" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/companydb"/>

<sql:query var="selectQuery" dataSource="${ds}">
	select * from reg_table where uname=? and pwd=?;
	<sql:param value="${param.userName}"></sql:param>
	<sql:param value="${param.password}"></sql:param>
</sql:query>

<core:forEach var="row" items="${selectQuery.rows}">
	<core:set var="dbusername" value="${row.uname}"></core:set>
	<core:set var="dbpassword" value="${row.pwd}"></core:set>
</core:forEach>

<core:choose>
	<core:when test="${dbusername eq param.userName}">
		<core:redirect url="loginSuccessPage.jsp"></core:redirect>
	</core:when>
	<core:otherwise>
		<core:redirect url="loginFailedPage.jsp"></core:redirect>
	</core:otherwise>
</core:choose>

</core:if>

<core:if test="${empty param.userName and empty param.password }">
	<h3>Please Enter User Name and Password</h3>
	<core:import url="loginPage.jsp"></core:import>
</core:if>


</body>
</html>