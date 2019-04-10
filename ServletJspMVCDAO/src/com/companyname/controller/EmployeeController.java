package com.companyname.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.companyname.dao.EmployeeDaoImpl;
import com.companyname.model.Employee;
import com.companyname.service.EmployeeService;
import com.companyname.service.EmployeeServiceImpl;

@WebServlet("/registration")
public class EmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String uname=request.getParameter("userName");
		String pwd=request.getParameter("password");
		String cpwd=request.getParameter("confirmPassword");
		String email=request.getParameter("emailId");
		String contnumber=request.getParameter("contactNumber");
		
		Employee employee=new Employee();
		employee.setUserName(uname);
		employee.setPassword(pwd);
		employee.setConfirmPassword(cpwd);
		employee.setEmailId(email);
		employee.setContactNumber(contnumber);
		
		
		EmployeeService employeeService=new EmployeeServiceImpl();
		try {
			employeeService.insert(employee);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		out.print("Data has been successfully inserted.");
		
		
		
	}

}
