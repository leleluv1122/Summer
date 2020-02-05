package net.lele.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.lele.domain.Board;

public interface BoardRepository extends JpaRepository<Board, Integer> {

}
