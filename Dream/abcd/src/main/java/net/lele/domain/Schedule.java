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
public class Schedule {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;

	String detail;
	int startyear;
	int startday;
	int lastyear;
	int lastmonth;
	int lastday;

	@ManyToOne
	@JoinColumn(name = "startmonth")
	Schedulemonth startmonth;

}
