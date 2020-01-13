package net.lele.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.lele.dto.Department;

@Mapper
public interface DepartmentMapper {
    List<Department> findAll();
}