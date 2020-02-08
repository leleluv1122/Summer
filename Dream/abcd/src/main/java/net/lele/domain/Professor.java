package net.lele.domain;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class Professor {
	@Id
	int id;

	String name;
	String email;
	String location;
}
