package net.lele.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.lele.domain.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer>  {

}
