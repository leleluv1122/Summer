package net.lele.domain;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class Schedulemonth {
	@Id
	int id;

	String name;

}
