package net.lele.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import net.lele.domain.Department;
import net.lele.domain.User;
import net.lele.model.UserRegistrationModel;
import net.lele.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	public UserRepository userRepository;

	public List<User> findAll() {
		return userRepository.findAll();
	}

	public boolean hasErrors(UserRegistrationModel userModel, BindingResult bindingResult) {
		if (bindingResult.hasErrors())
			return true; //1
		if (userModel.getPasswd1().equals(userModel.getPasswd2()) == false) {
			bindingResult.rejectValue("passwd2", null, "비밀번호가 일치하지 않습니다.");
			return true; //1
		} //rejectValue 메소드를 호출하여 에러메시지 등록
		//첫째 파라미터(passwd2): 에러가 발생한 멤버 변수이름
		//셋째 파라미터(비번일치ㄴ): 에러메시지
		//<form:errors path="passwd2" class="error" /> 이 태그에 에러메시지 출력

		User user = userRepository.findByUserid(userModel.getUserid());
		if (user != null) {
			bindingResult.rejectValue("userid", null, "사용자 아이디가 중복됩니다.");
			return true; //1
		}
		return false; //0
	}
	// BindingResult 객체에 에러 메시지 등록

	public User createEntity(UserRegistrationModel userModel) {
		User user = new User();
		user.setUserid(userModel.getUserid());
		user.setPassword(userModel.getPasswd1());
		user.setName(userModel.getName());
		user.setEmail(userModel.getEmail());
		user.setDepartment(new Department());
		user.getDepartment().setId(userModel.getDepartmentId());
		user.setEnabled(true);
		user.setUserType("학생");
		return user;
	}
	// userModel 모델 객체로부터 User 엔터티 객체를 생성해서 리턴한다
	// 회원가입입력폼에 입력된 데이터를 user 테이블에 저장할 때 이 메소드가 호출된다

	public void save(UserRegistrationModel userModel) {
		User user = createEntity(userModel);
		// usermodel 모델 객체로부터 user 엔터티 객체를 생성해 리턴한다
		userRepository.save(user);
	}

}
