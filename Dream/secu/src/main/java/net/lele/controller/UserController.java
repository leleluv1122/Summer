package net.lele.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import net.lele.service.DepartmentService;
import net.lele.service.UserService;

@Controller
public class UserController {

	@Autowired
	DepartmentService departmentService;
	@Autowired
	UserService userService;

	@RequestMapping("user/index")
	public String index() {
		return "user/index"; // 로그인한 사용자를 위한 첫 페이지 URL
	}
}
