package com.companyname.service;

import java.sql.SQLException;

import com.companyname.dao.EmployeeDao;
import com.companyname.model.Employee;

public class EmployeeServiceImpl implements EmployeeService{

	EmployeeDao employeeDao;
	@Override
	public void insert(Employee employee) throws SQLException {
		
		employeeDao.insert(employee);
		
	}

}
