package net.lele.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import net.lele.domain.Department;
import net.lele.domain.Employee;
import net.lele.repository.DepartmentRepository;
import net.lele.repository.EmployeeRepository;

@RestController
@RequestMapping("api")
public class APIController {

	@Autowired
	DepartmentRepository departmentRepository;
	@Autowired
	EmployeeRepository employeeRepository;

	@RequestMapping("employees")
	public List<Employee> employees() {
		return employeeRepository.findAll();
	}

	@RequestMapping("employee/{id}")
	public Employee employee(@PathVariable("id") int id) {
		return employeeRepository.findById(id).get();
	}

	@RequestMapping("departments")
	public List<Department> departments() {
		return departmentRepository.findAll();
	}

	@RequestMapping("department/{id}/employees")
	public List<Employee> departmentEmployees(@PathVariable("id") int id) {
		Department department = departmentRepository.findById(id).get();
		return department.getEmployees();
	} //id에 해당하는 부서의 직원들 출력

}
