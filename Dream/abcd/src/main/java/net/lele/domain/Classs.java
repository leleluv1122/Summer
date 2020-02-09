package net.lele.domain;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class Classs {
	@Id
	int id;

	String name;
}
