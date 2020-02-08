package net.lele.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.lele.domain.Subject;
import net.lele.model.Pagination;
import net.lele.repository.SubjectRepository;

@Service
public class SubjectService {
	@Autowired
	public SubjectRepository subjectRepository;

	public List<Subject> findAll(Pagination pagination) {
		return subjectRepository.findAll(pagination);
	}

	public List<Subject> findByDepartmentId(Pagination pagination) {
		return subjectRepository.findByDepartmentId(pagination);
	}
}