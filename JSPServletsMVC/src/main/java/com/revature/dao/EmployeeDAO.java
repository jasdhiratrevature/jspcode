package com.revature.dao;

import java.util.ArrayList;
import java.util.List;

import com.revature.model.Employee;

public class EmployeeDAO {
	// Data base operations happen here in the dao layer
	List<Employee> employeeList=new ArrayList();
	Employee e1=new Employee(1,"A","IT");
	Employee e2=new Employee(2,"B","IT");
	Employee e3=new Employee(3,"C","Marketing");
	Employee e4=new Employee(3,"D","Sales");
	
	public List<Employee> getAllEmployees(){
		employeeList.add(e1);
		employeeList.add(e2);
		employeeList.add(e3);
		employeeList.add(e4);
		return employeeList;
	}
}
