package com.companyname.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.companyname.model.Employee;

public class EmployeeDaoImpl implements EmployeeDao{

	String db_username="root";
	String db_password="root";
	String db_driverClass="com.mysql.jdbc.Driver";
	String db_url="jdbc:mysql://localhost:3306/companydb";

	Connection connection=null;
	PreparedStatement preparedStatement=null;
	
	@Override
	public void insert(Employee employee) throws SQLException {
		
		try{
			Class.forName(db_driverClass);
			connection=DriverManager.getConnection(db_url, db_username, db_password);
			
			String insertQuery="insert into registration_table1 values(?,?,?,?,?)";
			preparedStatement=connection.prepareStatement(insertQuery);
			
			preparedStatement.setString(1, employee.getUserName());
			preparedStatement.setString(2, employee.getPassword());
			preparedStatement.setString(3, employee.getConfirmPassword());
			preparedStatement.setString(4, employee.getEmailId());
			preparedStatement.setString(5, employee.getContactNumber());
			
			
			preparedStatement.executeUpdate();
			
			System.out.println("Data has been successfully inserted.");
			
			
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
	}

}
