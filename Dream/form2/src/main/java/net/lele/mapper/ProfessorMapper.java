package net.lele.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.lele.dto.Professor;

@Mapper
public interface ProfessorMapper {

	List<Professor> findAll();

}
