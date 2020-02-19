package net.lele.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import net.lele.domain.Board;

public interface BoardRepository extends JpaRepository<Board, Integer> {
	public List<Board> findAllByOrderByIdDesc();
	
	@Query("SELECT b FROM Board b WHERE b.id = ?1")
	List<Board> findBoardById(int id);
}
