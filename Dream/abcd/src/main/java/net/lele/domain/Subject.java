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

	int year; //2020년
	int term; //1학기

	@ManyToOne
	@JoinColumn(name = "departmentId")
	Department department;

	int grade; //학년
	String name;

	@ManyToOne
	@JoinColumn(name = "class")
	Classs classs; //전필전선그런거

	int credit; //몇학점인지

	@ManyToOne
	@JoinColumn(name = "professorId")
	Professor professor;

	String detail;
	String goal;
	String book;
}
