package net.lele.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.lele.domain.Schedule;
import net.lele.model.Pagination;
import net.lele.repository.ScheduleRepository;

@Service
public class ScheduleService {
	@Autowired
	public ScheduleRepository scheduleRepository;

	public List<Schedule> findAll(Pagination pagination) {
		return scheduleRepository.findAll(pagination);
	}

	public List<Schedule> findByStartmonth(Pagination pagination) {
		return scheduleRepository.findByStartmonth(pagination);
	}

	public List<Schedule> findAll() {
		return scheduleRepository.findAll();
	}

}
