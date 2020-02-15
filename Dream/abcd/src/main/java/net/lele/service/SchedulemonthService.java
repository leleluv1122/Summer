package net.lele.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.lele.domain.Schedulemonth;
import net.lele.repository.SchedulemonthRepository;

@Service
public class SchedulemonthService {
	@Autowired
	public SchedulemonthRepository schedulemonthRepository;

	public List<Schedulemonth> findAll(){
		return schedulemonthRepository.findAll();
	}

}
