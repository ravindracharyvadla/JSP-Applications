package com.companyname.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.companyname.model.RegistrationModel;
import com.companyname.service.RegistrationService;
import com.companyname.service.RegistrationServiceImpl;


@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String employeeId=request.getParameter("employeeId");
		int employeeId1=Integer.parseInt(employeeId);
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		String emailId=request.getParameter("emailId");
		String contactNumber=request.getParameter("contactNumber");
		
		RegistrationModel model=new RegistrationModel();
		model.setEmployeeId(employeeId1);
		model.setUserName(userName);
		model.setPassword(password);
		model.setEmailId(emailId);
		model.setContactNumber(contactNumber);
		
		RegistrationService service=new RegistrationServiceImpl();
		service.registration(model);
		
		out.print("Data has been successfully inserted into database.");
		
	}

}
