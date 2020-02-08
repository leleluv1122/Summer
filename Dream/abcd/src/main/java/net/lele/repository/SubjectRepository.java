package net.lele.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.lele.domain.Subject;

public interface SubjectRepository extends JpaRepository<Subject, Integer> {
	Subject findOneById(int id);
}
