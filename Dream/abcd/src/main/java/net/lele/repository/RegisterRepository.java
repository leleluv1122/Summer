package net.lele.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import net.lele.domain.Register;

public interface RegisterRepository extends JpaRepository<Register, Integer> {

	List<Register> findOneByUserId(int id);
}
