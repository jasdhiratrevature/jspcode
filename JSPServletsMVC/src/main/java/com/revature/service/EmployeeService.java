package com.revature.service;

import java.util.List;

import com.revature.dao.EmployeeDAO;
import com.revature.model.Employee;

public class EmployeeService {
	private EmployeeDAO employeeDAO;
	
public List<Employee> getAllEmployees(){
	employeeDAO=new EmployeeDAO();
	return employeeDAO.getAllEmployees();
}
}
