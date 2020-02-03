package net.lele.dto;

import lombok.Data;

@Data
public class Student {
    int id;
    String studentNumber;
    String name;
    int departmentId;
    int year;
    String departmentName;
}