<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h3>Registration Page</h3>

<form action="registrationSuccessPage.jsp" method="post">

<table>
	<tr>
		<td>User Name:</td>
		<td><input type="text" name="userName"></td>
	</tr>
	<tr>
		<td>Password:</td>
		<td><input type="password" name="password"></td>
	</tr>
 	<tr>
		<td>Confirm Password:</td>
		<td><input type="text" name="confirmPassword"></td>
	</tr>
 	<tr>
		<td>Email Id:</td>
		<td><input type="text" name="emailId"></td>
	</tr>
 	<tr>
		<td>Contact Number:</td>
		<td><input type="text" name="contactNumber"></td>
	</tr>
	<tr>
		<td>Gender:</td>
		<td>
			<input type="radio" name="gender" value="male">Male
			<input type="radio" name="gender" value="female">Female
		</td>
	</tr>
	<tr>
		<td>Address:</td>
		<td><textarea name="address"></textarea></td>
	</tr>
	<tr>
		<td>Country:</td>
		<td>
			<select name="country">
				<option value="India">India</option>
				<option value="USA">USA</option>
				<option value="UK">UK</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>Skill Set:</td>
		<td>
			<input type="checkbox" name="skill" value="Java">Java
			<input type="checkbox" name="skill" value="JDBC">JDBC
			<input type="checkbox" name="skill" value="Servlet">Servlet
			<input type="checkbox" name="skill" value="JSP">JSP
			<input type="checkbox" name="skill" value="JSP">JSP Framework
			<input type="checkbox" name="skill" value="Hibernate">Hibernate Framework
		</td>
	</tr>
	<tr>
		<td><input type="submit" name="submit" value="submit"></td>
		
	</tr>

</table>
</form>

</body>
</html>