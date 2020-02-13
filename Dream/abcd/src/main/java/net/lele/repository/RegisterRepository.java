package net.lele.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.lele.domain.Register;

public interface RegisterRepository extends JpaRepository<Register, Integer> {
	/*
	 * @Query("SELECT r.user.id as userid, count(*)*3 as cnt FROM register r " +
	 * "WHERE r.subject.classs = ?1 GROUP BY r.user.id = ?2") List<Object> count(int
	 * id, int userid);
	 */
}
