package net.lele.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import net.lele.domain.Schedule;
import net.lele.model.Pagination;

public interface ScheduleRepository extends JpaRepository<Schedule, Integer> {
	@Override
	public Page<Schedule> findAll(Pageable pageable);

	public Page<Schedule> findByStartmonth(int startmonth, Pageable pageable);

	public default List<Schedule> findAll(Pagination pagination) {
		Pageable pageable = PageRequest.of(pagination.getPg() - 1, pagination.getSz(),
				Sort.by(Sort.Direction.ASC, "startmonth"));
		Page<Schedule> page = findAll(pageable);
		pagination.setRecordCount((int) page.getTotalElements());
		return page.getContent();
	}

	public default List<Schedule> findByStartmonth(Pagination pagination) {
		Pageable pageable = PageRequest.of(pagination.getPg() - 1, pagination.getSz(),
				Sort.by(Sort.Direction.ASC, "startday"));
		Page<Schedule> page = findByStartmonth(pagination.getSm(), pageable);
		pagination.setRecordCount((int) page.getTotalElements());
		return page.getContent();
	}

	/* Schedule findBystartmonth(int startmonth, Pageable pageable); */
}