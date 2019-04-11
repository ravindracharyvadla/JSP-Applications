<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="RegistrationController" method="post">
	
	<table>
		<tr>
			<td>Enter Employee Id</td>
			<td><input type="text" name="employeeId"></td>
		</tr>
		<tr>
			<td>Enter User Name</td>
			<td><input type="text" name="userName"></td>
		</tr>
		<tr>
			<td>Enter Password</td>
			<td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td>Enter Email Id</td>
			<td><input type="text" name="emailId"></td>
		</tr>
		<tr>
			<td>Enter Contact Number</td>
			<td><input type="text" name="contactNumber"></td>
		</tr>
		<tr>
			<td><input type="submit" name="submit" value="submit"></td>
		</tr>
	</table>

</form>
</body>
</html>