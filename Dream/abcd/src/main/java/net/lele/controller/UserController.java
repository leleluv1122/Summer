package net.lele.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.lele.domain.Subject;
import net.lele.service.DepartmentService;
import net.lele.service.ProfessorService;
import net.lele.service.SubjectService;
import net.lele.service.UserService;

@Controller
public class UserController {

	@Autowired
	DepartmentService departmentService;
	@Autowired
	UserService userService;
	@Autowired
	SubjectService subjectService;
	@Autowired
	ProfessorService professorService;

	@RequestMapping("user/index")
	public String index() {
		return "user/index"; // 로그인한 사용자를 위한 첫 페이지 URL
	}

	@RequestMapping(value = "user/info", method = RequestMethod.GET)
	public String info(Model model) {
		model.addAttribute("user", userService.findAll());
		return "user/info";
	}

	@RequestMapping(value="user/subjectlist", method= RequestMethod.GET)
	public String subjectlist(Model model) {
		List<Subject> list = subjectService.findAll();
		model.addAttribute("list", list);
		return "user/subjectlist";
	}
}
