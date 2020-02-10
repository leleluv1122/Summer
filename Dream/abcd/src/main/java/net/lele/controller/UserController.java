package net.lele.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.lele.domain.Subject;
import net.lele.model.Pagination;
import net.lele.service.DepartmentService;
import net.lele.service.ProfessorService;
import net.lele.service.RegisterService;
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
	@Autowired
	RegisterService registerService;

	@RequestMapping("user/index")
	public String index() throws Exception {
		return "user/index"; // 로그인한 사용자를 위한 첫 페이지 URL
	}

	/*
	 * public List<Subject> subjects(){ return subjectService.findAll(); }
	 */

	@RequestMapping(value = "user/info", method = RequestMethod.GET)
	public String info(Model model) throws Exception {
		model.addAttribute("user", userService.findAll());
		return "user/info";
	}

	@RequestMapping(value = "user/subjectlist", method = RequestMethod.GET)
	public String subjectlist(Pagination pagination, Model model) throws Exception {
		List<Subject> list;
		if (pagination.getDi() == 0)
			list = subjectService.findAll(pagination);
		else
			list = subjectService.findByDepartmentId(pagination);

		model.addAttribute("list", list);
		model.addAttribute("departments", departmentService.findAll());
		return "user/subjectlist";
	}

	@RequestMapping(value = "user/subjectdetail/{id}")
	public String subjectDetail(@PathVariable("id") int id, Model model) throws Exception {
		List<Subject> subject = subjectService.findSubjectById(id);
		model.addAttribute("subject", subject);
		return "user/subjectdetail";
	}

	@RequestMapping(value = "user/register", method = RequestMethod.GET)
	public String register(Model model) throws Exception { // 사용자id찾아서 내 성적만 보기 아직못함
		model.addAttribute("user", userService.findAll());
		model.addAttribute("register", registerService.findAll());
		return "user/register";
	}
}
