package net.lele.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.lele.domain.Professor;
import net.lele.repository.ProfessorRepository;

@Service
public class ProfessorService {
	@Autowired
	public ProfessorRepository professorRepository;

	public List<Professor> findAll(){
		return professorRepository.findAll();
	}
}
