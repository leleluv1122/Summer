package net.lele.mapper;

import org.springframework.stereotype.Repository;

import net.lele.domain.User;

@Repository("net.lele.mapper.UserMapper")
public interface UserMapper {
	// 회원가입
	public int InsertUser(User user) throws Exception;

	public User findByUserId(String userid) throws Exception;

	// 회원정보수정
	/* public int UpdateUser(User user) throws Exception; */

}
