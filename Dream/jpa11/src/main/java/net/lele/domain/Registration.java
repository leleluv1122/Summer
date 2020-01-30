package net.lele.domain;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@ToString(exclude = { "student", "course" })
@EqualsAndHashCode(exclude = { "student", "course" })
@Entity
@Table(name = "register") //수강신청 엔터티 클래스이름은 registeration이라 이름이 다르기때문에
public class Registration {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	Integer grade; //null이 가능한 필드인데 int는 가능하지않다 integer클래스타입으로 선언
	Date createDate;

	@ManyToOne
	@JoinColumn(name = "studentId")
	Student student;

	@ManyToOne
	@JoinColumn(name = "courseId")
	Course course;
}
