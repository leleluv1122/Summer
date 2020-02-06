package net.lele.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.lele.domain.User;

public interface UserRepository extends JpaRepository<User, Integer> {

	User findOneByLoginId(String loginId);
	// User 테이블에서 loginId 필드로 레코드를 조회
}
