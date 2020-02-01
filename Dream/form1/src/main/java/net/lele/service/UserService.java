package net.lele.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

	public void save(UserRegistrationModel userModel) {
		User user = createEntity(userModel);
		//usermodel 모델 객체로부터 user 엔터티 객체를 생성해 리턴한다
		userRepository.save(user);
	}

}
