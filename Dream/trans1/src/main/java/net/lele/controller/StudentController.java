package net.lele.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.lele.dto.Student;
import net.lele.mapper.RegisterMapper;
import net.lele.mapper.StudentMapper;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Autowired
	StudentMapper studentMapper;
	@Autowired
	RegisterMapper registerMapper;

	@RequestMapping("list")
	public String list(Model model) {
		List<Student> students = studentMapper.findAll();
		model.addAttribute("students", students);
		return "student/list";
	}

	@RequestMapping("delete")
	public String delete(Model model, @RequestParam("id") int id) {
		deleteStudent(id);
		return "redirect:list";
	}

	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	private void deleteStudent(int studentId) {
		registerMapper.deleteByStudentId(studentId);
		studentMapper.delete(studentId);
	}

	/*
	 * @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	 * 이 어노테이션이 붙은 메소드에서 실행되는 데이터베이스 SQL 명령들은 하나의 트랜잭션에서 실행된다.
	 * 이 어노테이션이 붙은 메소드에서 호출하는 다른 메소드에서 실행되는 데이터베이스 SQL 명령들도 역시 같은 트랜잭션에서 실행된다.
	 * 그래서 SQL 명령들이 전부 성공하거나 전부 실패한다. 이 어노테이션을 클래스에 붙여주면, 그 클래스의 모든 메소드에 트랜잭션 기능이 적용된다.
	 * rollbackFor = Exception.class 이 어노테이션이 붙은 메소드를 실행하다가 Exception이 발생하면
	 * 이 메소드에서 실행된 SQL 명령들을 전부 취소한다
	 */
}
