package net.lele.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import net.lele.domain.Student;
import net.lele.model.Pagination;

public interface StudentRepository extends JpaRepository<Student, Integer> {

	@Override
	public Page<Student> findAll(Pageable pageable);
	// student테이블의 전체 레코드를 페이지 단위로 조회하여 리턴한다
	// pageable 객체에 담겨있는 정렬 순서와 페이지 번호가 적용되어, 페이지 단위 조회 결과가 리턴된다
	// 자동으로 구현ㅇㅅㅇ

	public Page<Student> findByDepartmentId(int departmentId, Pageable pageable);

	public default List<Student> findAll(Pagination pagination) {
		Pageable pageable = PageRequest.of(pagination.getPg() - 1, pagination.getSz(),
				Sort.by(Sort.Direction.ASC, "studentNo"));
		// 페이지번호, 페이지크기, 학번 오름차순정렬, Pageable객체생성
		// 페이지번호는 0부터 시작하는 번호
		Page<Student> page = findAll(pageable);
		// Pageable 객체에 담겨있는 정렬순서와 페이지 번호를 적용하여 학생테이블 조회
		pagination.setRecordCount((int) page.getTotalElements());
		// 페이지 단위로 조회된 레코드 수X 조회 대상 전체 레코드 수를 구한다
		return page.getContent();
		// 조회 결과 레코드를 리턴
	}

	public default List<Student> findByDepartmentId(Pagination pagination) {
		Pageable pageable = PageRequest.of(pagination.getPg() - 1, pagination.getSz(),
				Sort.by(Sort.Direction.ASC, "studentNo"));
		Page<Student> page = findByDepartmentId(pagination.getDi(), pageable);
		pagination.setRecordCount((int) page.getTotalElements());
		return page.getContent();
	}

}