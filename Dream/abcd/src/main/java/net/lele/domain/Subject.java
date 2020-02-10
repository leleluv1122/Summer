package net.lele.domain;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Data
@Entity
public class Subject {
	@Id
	int id;

	int year;
	int term;

	@ManyToOne
	@JoinColumn(name = "departmentId")
	Department department;

	int grade;
	String name;

	@ManyToOne
	@JoinColumn(name = "class")
	Classs classs;

	int credit;

	@ManyToOne
	@JoinColumn(name = "professorId")
	Professor professor;

	String detail;
	String goal;
	String book;
}
