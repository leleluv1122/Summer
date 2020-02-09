package net.lele.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.lele.domain.Register;

public interface RegisterRepository extends JpaRepository<Register, Integer> {

}
