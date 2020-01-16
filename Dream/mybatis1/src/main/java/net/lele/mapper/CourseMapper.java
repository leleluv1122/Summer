package net.lele.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.lele.dto.Course;

@Mapper
public interface CourseMapper {
	Course findOne(int id);
	List<Course> findAll();
}
