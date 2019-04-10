package com.companyname.service;

import java.sql.SQLException;

import com.companyname.model.Employee;

public interface EmployeeService {

	public void insert(Employee employee) throws SQLException;
}
