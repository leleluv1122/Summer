package net.lele.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.lele.domain.Student;
import net.lele.model.Pagination;
import net.lele.repository.DepartmentRepository;
import net.lele.repository.StudentRepository;

@Controller
@RequestMapping("student")
public class StudentController {

	@Autowired
	StudentRepository studentRepository;
	@Autowired
	DepartmentRepository departmentRepository;

	@RequestMapping("list")
	public String list(Pagination pagination, Model model) {
		List<Student> list = studentRepository.findAll(pagination);
		model.addAttribute("list", list);
		return "student/list";
	}

	@RequestMapping("list2")
	public String list2(Pagination pagination, Model model) {
		List<Student> list;
		if (pagination.getDi() == 0)
			list = studentRepository.findAll(pagination);
		// 전체학생조회
		else
			list = studentRepository.findByDepartmentId(pagination);
		// 그 학과 ID 값과 일치하는 학생들만 조회
		model.addAttribute("list", list);
		model.addAttribute("departments", departmentRepository.findAll());
		// 조회 조건인 학과목록을 select 태그로 출력하기 위해 전체 학과 목록을 조회한다
		return "student/list2";
	}
}
