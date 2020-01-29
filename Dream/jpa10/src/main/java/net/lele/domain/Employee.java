package net.lele.domain;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Employee {
	@Id // 기본키
	@GeneratedValue(strategy = GenerationType.IDENTITY) // AI일경우
	int id;
	String name;

	@ManyToOne(fetch = FetchType.EAGER) // 직원(employee)여러명이 부서한개에 소속됨
	@JoinColumn(name = "departmentId") // 외래키
	Department department;

	@OneToOne(mappedBy = "employee", fetch = FetchType.EAGER)
	Address address;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

}
