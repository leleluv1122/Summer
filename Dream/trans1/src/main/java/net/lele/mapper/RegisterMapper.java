package net.lele.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RegisterMapper {
	void deleteByStudentId(int studentId);
}
