package net.lele.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.lele.dto.People;

@Mapper
public interface PeopleMapper {
	void insert(People people);
	List<People> findAll();
}
