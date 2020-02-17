package net.lele.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.lele.domain.User;
import net.lele.service.UserService;

@Controller
public class UserController {
	@Resource(name = "net.lele.service.UserService")
	UserService userService;

	@RequestMapping("/register")
	private String InsertUser(Model model) {
		return "insert";
	}

	/*
	 * @RequestMapping("/registerProc") private String insertUser(HttpServletRequest
	 * request) throws Exception {
	 * 
	 * User user = new User(); }
	 */
}
