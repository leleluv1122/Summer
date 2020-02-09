package net.lele.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.lele.domain.Register;
import net.lele.repository.RegisterRepository;

@Service
public class RegisterService {
	@Autowired
	public RegisterRepository registerRepository;

	public List<Register> findAll() {
		return registerRepository.findAll();
	}
}
