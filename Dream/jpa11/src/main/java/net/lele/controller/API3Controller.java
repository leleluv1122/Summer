package net.lele.controller;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaContext;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import net.lele.domain.Student;
import net.lele.repository.StudentRepository;

@RestController
@RequestMapping("api3")
public class API3Controller {

	@Autowired
	StudentRepository studentRepository;
	@Autowired
	JpaContext jpaContext;

	@RequestMapping("jpql") //sql문법과 유사
	public Object jpql(@RequestParam("s") String s) {
		EntityManager manager = jpaContext.getEntityManagerByManagedType(Student.class);
		Query query = manager.createQuery(s);
		Object r = query.getResultList();
		return r;
	}
}
