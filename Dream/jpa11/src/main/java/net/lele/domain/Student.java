package net.lele.domain;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@ToString(exclude = { "department", "registrations" })
@EqualsAndHashCode(exclude = { "department", "registrations" })
@Entity
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	String name;

	@Column(name = "studentNumber")
	//student테이블의 학번필드와 student엔터티 클래스의 학번 멤버 변수이름이 일치하지 않아서
	String studentNo;

	@ManyToOne
	@JoinColumn(name = "departmentId")
	Department department;

	@JsonIgnore
	@OneToMany(mappedBy = "student", fetch = FetchType.LAZY)
	List<Registration> registrations;
	//registration테이블에서 studentId를 나타낸다..
}
