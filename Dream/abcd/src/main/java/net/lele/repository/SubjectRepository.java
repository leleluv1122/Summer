package net.lele.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import net.lele.domain.Subject;
import net.lele.model.Pagination;

public interface SubjectRepository extends JpaRepository<Subject, Integer> {

	@Override
	public Page<Subject> findAll(Pageable pageable);

	public Page<Subject> findByDepartmentId(int departmentId, Pageable pageable);

	public default List<Subject> findAll(Pagination pagination) {
		Pageable pageable = PageRequest.of(pagination.getPg() - 1, pagination.getSz(),
				Sort.by(Sort.Direction.ASC, "grade"));
		Page<Subject> page = findAll(pageable);
		pagination.setRecordCount((int) page.getTotalElements());
		return page.getContent();
	}

	public default List<Subject> findByDepartmentId(Pagination pagination) {
		Pageable pageable = PageRequest.of(pagination.getPg() - 1, pagination.getSz(),
				Sort.by(Sort.Direction.ASC, "grade"));
		Page<Subject> page = findByDepartmentId(pagination.getDi(), pageable);
		pagination.setRecordCount((int) page.getTotalElements());
		return page.getContent();
	}

	@Query("SELECT s FROM Subject s WHERE s.id = ?1")
	List<Subject> findSubjectById(int id);

	/*
	 * @Query("SELECT *, u.id, count(*) as cnt FROM register r " +
	 * "WHERE s.class = ?1" + "GROUP BY u.id = ?2") List<Object>
	 * findSubjectCountOfClasss(int classid, int userid);
	 */

}