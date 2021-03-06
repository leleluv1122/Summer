package net.lele.mapper;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.lele.dto.Course;

@Mapper
public interface CourseMapper {
    List<Course> findAll();
    List<Course> findAllWithStudents();
}
