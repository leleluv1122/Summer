package net.lele.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.lele.domain.Professor;

public interface ProfessorRepository extends JpaRepository<Professor, Integer> {

}