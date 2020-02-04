package net.lele.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.lele.domain.Department;

public interface DepartmentRepository extends JpaRepository<Department, Integer> {

}