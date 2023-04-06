package com.personalProject.employeeManagement.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.personalProject.employeeManagement.models.Employee;
import com.personalProject.employeeManagement.repositories.EmployeeRepository;

@Service
public class EmployeeService {
	private final EmployeeRepository employeeRepo;

	public EmployeeService(EmployeeRepository employeeRepo) {
		this.employeeRepo = employeeRepo;
	}
	public Employee getOne(Long id) {
		Optional<Employee> name = employeeRepo.findById(id);
		return name.isPresent() ? name.get() : null;
	}
	
	public boolean titleExist(String employeeName) {  
		Optional<Employee> employee = employeeRepo.findByName(employeeName); 
		return employee.isPresent() ? true : false;
	}

	public List<Employee> getAll() {
		return (List<Employee>) employeeRepo.findAll();
	}

	public Employee create(Employee employee) {
		return employeeRepo.save(employee);
	}

	public Employee update(Employee employee) {
		return employeeRepo.save(employee);
	}

	public void delete(Long id) {
		employeeRepo.deleteById(id);
	}
}
