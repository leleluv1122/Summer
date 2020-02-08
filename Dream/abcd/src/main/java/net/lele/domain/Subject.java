package net.lele.domain;

import javax.persistence.Column;
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
	@Column(name = "class")
	String classs;

	int credit;

	@ManyToOne
	@JoinColumn(name = "professorId")
	Professor professor;
}
