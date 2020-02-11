package net.lele.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.lele.domain.Scholarship;
import net.lele.repository.ScholarshipRepository;

@Service
public class ScholarshipService {
	@Autowired
	public ScholarshipRepository scholarshipRepository;

	public List<Scholarship> findAll(){
		return scholarshipRepository.findAll();
	}

}
