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
public class GuestController { // 로그인 하지 않은 사용자를 위한 페이지

	@Autowired
	UserService userService;
	@Autowired
	DepartmentService departmentService;

	@RequestMapping({ "/", "guest/index" })
	public String index() {
		return "guest/index"; // 로그인 하지 않은 사용자를 위한 첫 페이지
	}

	@RequestMapping("guest/login")
	public String login() {
		return "guest/login"; // 로그인 페이지 URL
	}

	@RequestMapping(value = "guest/register", method = RequestMethod.GET)
	public String register(Model model, UserRegistrationModel userModel) {
			model.addAttribute("departments", departmentService.findAll());
			return "guest/register";
	}

	@RequestMapping(value = "guest/register", method = RequestMethod.POST)
	public String register(@Valid UserRegistrationModel userModel, BindingResult bindingResult, Model model) {
		if (userService.hasErrors(userModel, bindingResult)) {
			model.addAttribute("departments", departmentService.findAll());
			return "guest/register";
		}

		userService.save(userModel);
		return "redirect:index";
	}
}