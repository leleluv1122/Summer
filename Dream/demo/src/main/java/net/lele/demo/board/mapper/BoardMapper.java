package net.lele.demo.board.mapper;

import org.springframework.stereotype.Repository;

@Repository("net.lele.demo.board.mapper.BoardMapper")
public interface BoardMapper {

    public int boardCount() throws Exception;
}