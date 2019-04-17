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

<sql:setDataSource var="ds" user="root" password="root" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/companydb"/>

<sql:query var="result" dataSource="${ds}" sql="SELECT * FROM reg_table where eid=?">
	<sql:param value="${param.employeeId}"></sql:param>
</sql:query>


<core:forEach var="result1" items="${result.rows}">
	<core:out value="${result1.eid}"></core:out>
	<core:out value="${result1.uname}"></core:out>
	<core:out value="${result1.pwd}"></core:out>
</core:forEach>

</body>
</html>