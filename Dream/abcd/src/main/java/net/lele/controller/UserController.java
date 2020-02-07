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
	/*
	 * @Autowired UserInfoService userinfoService;
	 */

	@RequestMapping("user/index")
	public String index() {
		return "user/index"; // 로그인한 사용자를 위한 첫 페이지 URL
	}

	/*
	 * @RequestMapping(value = "user/info", method = RequestMethod.GET) public
	 * String info(Model model) { model.addAttribute("departments",
	 * departmentService.findAll()); model.addAttribute("userinfo",
	 * userinfoService.findAll()); model.addAttribute("user",
	 * userService.findAll()); return "user/info"; }
	 */
}
