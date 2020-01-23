package net.lele.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.lele.dto.Info;

@Mapper
public interface InfoMapper {
	Info findOne(String id, String password);
	List<Info> findAll();
	void insert(Info info);
	void update(Info info);
	/* void delete(String id, String password); */
}
