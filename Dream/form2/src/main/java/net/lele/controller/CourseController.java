package net.lele.controller;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.lele.dto.Course;
import net.lele.mapper.CourseMapper;
import net.lele.mapper.DepartmentMapper;
import net.lele.mapper.ProfessorMapper;

@Controller
@RequestMapping("course")
public class CourseController {

	@Autowired
	CourseMapper courseMapper;
	@Autowired
	DepartmentMapper departmentMapper;
	@Autowired
	ProfessorMapper professorMapper;

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("courses", courseMapper.findAll());
		model.addAttribute("departments", departmentMapper.findAll());
		model.addAttribute("professors", professorMapper.findAll());
		return "course/list";
	}

	@RequestMapping(value = "list", method = RequestMethod.POST)
	public String list(Model model,
			@RequestParam("id") int[] id,
			//req param id 데이터가 여러개인경우 배열로 전달
			@RequestParam("courseName") String[] courseName,
			@RequestParam("unit") int[] unit,
			@RequestParam("startDate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date[] startDate,
			@RequestParam("departmentId") int[] departmentId,
			@RequestParam("professorId") int[] professorId)
	{
		save(id, courseName, unit, startDate, departmentId, professorId);
		return list(model);
	}

	@Transactional //UPDATE/DELETE/INSERT 등 DB명령은 모두가 성공or실패한다 부분성공or실패는 없다!
	private void save(int[] id, String[] courseName, int[] unit, Date[] startDate, int[] departmentId,
			int[] professorId) {
		for (int i = 0; i < courseName.length; ++i) {
			Course course = new Course();
			course.setId(id[i]);
			course.setCourseName(courseName[i]);
			course.setUnit(unit[i]);
			course.setStartDate(startDate[i]);
			course.setDepartmentId(departmentId[i]);
			course.setProfessorId(professorId[i]);
			courseMapper.update(course);
		}
	}

}
