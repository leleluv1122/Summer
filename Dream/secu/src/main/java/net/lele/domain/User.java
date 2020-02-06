package net.lele.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Data
@Entity
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;

	@Column(name = "userId")
	String loginId;

	String password;
	String name;
	String email;
	boolean enabled;
	String userType;

	@ManyToOne
	@JoinColumn(name = "departmentId")
	Department department;
}
