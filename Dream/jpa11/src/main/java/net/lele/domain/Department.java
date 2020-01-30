package net.lele.domain;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data //lombok에 의해 getter setter 메소드가 자동생성
@ToString(exclude = { "students", "courses", "professors" })
@EqualsAndHashCode(exclude = { "students", "courses", "professors" })
//id name빼고는 구현할 필요X?? 그래서 exclude를 한다
@Entity
public class Department {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;

	@Column(name = "departmentName") //변수이름이 달라서 쓰는 어노테이션
	String name;

	@JsonIgnore
	@OneToMany(mappedBy = "department", fetch = FetchType.LAZY)
	List<Student> students;

	@JsonIgnore
	@OneToMany(mappedBy = "department", fetch = FetchType.LAZY)
	List<Course> courses;

	@JsonIgnore
	@OneToMany(mappedBy = "department", fetch = FetchType.LAZY)
	List<Professor> professors;
}
