package net.lele.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.lele.dto.Student;

@Mapper
public interface StudentMapper {

	List<Student> findAll();
	void delete(int id);

}
