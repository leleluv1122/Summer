package net.lele.domain;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class Grade {
	@Id
	int id;

	String name;
	int grades;
	double realgrade;
}
