<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
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

<%
String db_username="root";
String db_password="root";
String db_driverClass="com.mysql.jdbc.Driver";
String db_url="jdbc:mysql://localhost:3306/companydb";

Connection connection=null;
PreparedStatement preparedStatement=null;

try{
	Class.forName(db_driverClass);
	connection=DriverManager.getConnection(db_url, db_username, db_password);
	
	String insertQuery="insert into registration_table values(?,?,?,?,?,?,?,?,?)";
	preparedStatement=connection.prepareStatement(insertQuery);
	
	preparedStatement.setString(1, uname);
	preparedStatement.setString(2, pwd);
	preparedStatement.setString(3, cpwd);
	preparedStatement.setString(4, email);
	preparedStatement.setString(5, contnumber);
	preparedStatement.setString(6, gender);
	preparedStatement.setString(7, address);
	preparedStatement.setString(8, country);
	
	for(int i=0;i<skills.length;i++){
	preparedStatement.setString(9, skills[i]);
	}
	
	preparedStatement.executeUpdate();
	
	System.out.println("Data has been successfully inserted.");
	out.print("<h3>"+"Data has been successfully inserted."+"</h3>");
	
}catch(Exception exception){
	exception.printStackTrace();
}finally{
	if(preparedStatement!=null){
		preparedStatement.close();
	}
	if(connection!=null){
		connection.close();
	}
}

%>
</body>
</html>