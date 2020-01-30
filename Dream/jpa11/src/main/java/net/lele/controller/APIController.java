package net.lele.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import net.lele.domain.Course;
import net.lele.domain.Department;
import net.lele.domain.Professor;
import net.lele.domain.Registration;
import net.lele.domain.Student;
import net.lele.repository.DepartmentRepository;
import net.lele.repository.ProfessorRepository;
import net.lele.repository.StudentRepository;

@RestController
@RequestMapping("api")
public class APIController {

	@Autowired
	DepartmentRepository departmentRepository;
	@Autowired
	StudentRepository studentRepository;
	@Autowired
	ProfessorRepository professorRepository;

	@RequestMapping("departments")
	public List<Department> departments() {
		return departmentRepository.findAll();
	}

	@RequestMapping("students") //전체학생목록출력
	public List<Student> students() {
		return studentRepository.findAll();
	}

	@RequestMapping("department/{id}/students") //id학과학생
	public List<Student> departmentStudents(@PathVariable("id") int id) {
		Department department = departmentRepository.findById(id).get();
		return department.getStudents(); //lombok에 의해 자동생성
	}

	@RequestMapping("department/{id}/professors")
	public List<Professor> departmentProfessors(@PathVariable("id") int id) {
		Department department = departmentRepository.findById(id).get();
		return department.getProfessors();
	}

	@RequestMapping("student/{id}/registrations")
	public List<Registration> studentRegistrations(@PathVariable("id") int id) {
		Student student = studentRepository.findById(id).get();
		return student.getRegistrations();
	}

	@RequestMapping("student/{id}/courses") //id학생의 수강강좌목록출력
	public List<Course> studentCourses(@PathVariable("id") int id) {
		Student student = studentRepository.findById(id).get();
		List<Course> list = new ArrayList<Course>();
		for (Registration r : student.getRegistrations())
			list.add(r.getCourse());
		return list;
	}

	/* 위에랑 똑같은데 lambda expression문법과 streamAPI를 이용해서 구현
	 *
	 * @RequestMapping("student/{id}/courses") //id학생의 수강강좌목록출력 public
	 * Stream<Course> studentCourses(@PathVariable("id") int id) {
	 * 		return studentRepository
	 * 		.findById(id).get()  //optional<student>객체가 return
	 * 		.getRegistrations()
	 *   //student클래스의 메소드 학생의 수강신청목록이 return List<Registration>
	 * 		.stream() //List<Registration>객체로부터 stream생성하여 return한다.
	 * 		.map(s ->s.getCourse()); //Stream<Course> stream을 return 한다!!
	 * }
	 * //어렵다...ㅜㅜ
	 */

}
