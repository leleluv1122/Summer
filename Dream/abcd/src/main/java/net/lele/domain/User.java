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
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;

	String userId;

	String password;
	boolean enabled;
	String userType;
	String name;
	String email;
	String phone;
	String address;

	@ManyToOne
	@JoinColumn(name = "departmentId")
	Department department;
}
