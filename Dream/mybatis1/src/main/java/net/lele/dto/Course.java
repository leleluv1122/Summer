package net.lele.dto;

import java.util.Date;

public class Course {

	int id;
    String courseName;
    int departmentId;
    int unit;
    int professorId;
    Date startDate;
    Department department;
    Professor professor;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCourseName () {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public int getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }

    public int getUnit() {
        return unit;
    }

    public void setUnit(int unit) {
        this.unit = unit;
    }

    public int getProfessorId() {
    	return professorId;
    }

    public void setProfessorId(int professorId) {
    	this.professorId = professorId;
    }

    public Date getStartDate() {
    	return startDate;
    }

    public void setStartDate(Date startDate) {
    	this.startDate = startDate;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public Professor getProfessor() {
        return professor;
    }

    public void setProfessor(Professor professor) {
        this.professor = professor;
    }
}
