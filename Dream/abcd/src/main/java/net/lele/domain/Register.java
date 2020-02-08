package net.lele.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Data
@Entity
public class Register {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;

	@ManyToOne
	@JoinColumn(name = "subjectId")
	Subject subject;

	@ManyToOne
	@JoinColumn(name = "userId")
	User user;

	String grade;
	int year;
	int term;
}