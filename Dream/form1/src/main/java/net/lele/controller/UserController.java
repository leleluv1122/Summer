package net.lele.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.lele.model.UserRegistrationModel;
import net.lele.service.DepartmentService;
import net.lele.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	UserService userService;
	@Autowired
	DepartmentService departmentService;

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register(Model model, UserRegistrationModel userModel) {
		model.addAttribute("departments", departmentService.findAll());
		// user/register.jsp 뷰 파일을 실행할 때 학고ㅏ목록이 출력되어야 해서 ..
		return "user/register";
	}
	//회원가입 입력 폼이 처음 실행될 때 GET 방식의 register 액션 메소드가 실행

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register(@Valid UserRegistrationModel userModel, BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors()) {
			model.addAttribute("departments", departmentService.findAll());
			return "user/register";
		}
		// userModel객체에 오류가 있다면 if문이 true가 되서 다시 폼이 나타나야되서 return user/register
		// 다시 나타내도 학과목록이 있어야 된다

		userService.save(userModel);
		return "redirect:registerSuccess";
		// 데이터에 오류가 없으면 user테이블에 저장하고 성공화면 리다이렉트
	}
	//submit 버튼을 클릭했을 때, POST 방식의 register 액션 메소드가 실행된다.

	@RequestMapping("registerSuccess")
	public String registerSuccess() {
		return "user/registerSuccess";
	}
}
