package net.lele.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.lele.domain.User;
import net.lele.repository.UserRepository;
import net.lele.utils.EncryptionUtils;

@Service
public class UserService {

	@Autowired
	UserRepository userRepository;

	public User login(String loginId, String password) {
		User user = userRepository.findOneByLoginId(loginId);
		if (user == null)
			return null;
		String pw = EncryptionUtils.encryptMD5(password);
		if (user.getPassword().equals(pw) == false)
			return null;
		return user;
	}
	// 사용자가 입력한 로그인 아이디와 비밀번호를 검사하는 메소드
	// 검사 결과가 성공이면 User 테이블에서 조회한 User 객체를 리턴한다.
	// 검사결과가 실패면 null을 리턴한다.
	// 사용자가 입력한 비밀번호를 암호화하여 비교하고있음
}
