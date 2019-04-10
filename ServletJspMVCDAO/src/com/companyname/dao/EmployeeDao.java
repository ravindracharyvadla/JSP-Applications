package com.companyname.dao;

import java.sql.SQLException;

import com.companyname.model.Employee;

public interface EmployeeDao {

	public void insert(Employee employee) throws SQLException;
}
