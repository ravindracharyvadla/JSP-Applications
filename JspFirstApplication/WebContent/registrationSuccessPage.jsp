<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String uname=request.getParameter("userName");
String pwd=request.getParameter("password");
String cpwd=request.getParameter("confirmPassword");
String email=request.getParameter("emailId");
String contnumber=request.getParameter("contactNumber");
String gender=request.getParameter("gender");
String address=request.getParameter("address");
String country=request.getParameter("country");
/* String skill=request.getParameter("skill"); */
String[] skills=request.getParameterValues("skill");

/* out.print("User Name: "+uname+"<br>");
out.print("Password:"+pwd+"<br>");
out.print("Confirm Password: "+cpwd+"<br>");
out.print("Email Id: "+email+"<br>");
out.print("Contact Number: "+contnumber+"<br>"); */


%>


<%-- <%= "User Name: "+uname+"<br>"%>
<%= "Password:"+pwd+"<br>"%>
<%= "Confirm Password: "+cpwd+"<br>"%>
<%= "Email Id: "+email+"<br>"%>
<%= "Contact Number: "+contnumber+"<br>"%> --%>

<table border="1">
	<tr bgcolor="">
		<th>User Name</th>
		<th>Password</th>
		<th>Confirm Password</th>
		<th>Email Id</th>
		<th>Contact Number</th>
		<th>Gender</th>
		<th>Address</th>
		<th>Country</th>
		<th>Skill Set</th>
	</tr>
	<tr>
		<td><%= uname%></td>
		<td><%= pwd%></td>
		<td><%= cpwd%></td>
		<td><%= email%></td>
		<td><%= contnumber%></td>
		<td><%= gender%></td>
		<td><%= address%></td>
		<td><%= country%></td>
		<%-- <td><%= skill%></td> --%>
		<td>
			<%
			if (skills != null && skills.length != 0) {
				for(int i=0;i<skills.length;i++){
					out.print(skills[i]+",");
				}
			}
			%>
		</td>
	</tr>
</table>
</body>
</html>