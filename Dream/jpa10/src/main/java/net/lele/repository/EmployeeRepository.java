package net.lele.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.lele.domain.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer>  {

}

/*
 * findAll()
 * findById(id)
 * save(employee)
 * saveAll(employeeList)
 * delete(employee)
 * deleteAll(employeeList)
 * count()
 * exits(id)
 * flush()
 */