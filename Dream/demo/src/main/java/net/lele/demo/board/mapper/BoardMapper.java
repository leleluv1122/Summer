package net.lele.demo.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import net.lele.demo.board.domain.BoardVO;
import net.lele.demo.board.domain.FileVO;

@Repository("net.lele.demo.board.mapper.BoardMapper")
public interface BoardMapper {
	// 게시글 개수
	public int boardCount() throws Exception;

	// 게시글 목록
	public List<BoardVO> boardList(@Param("order") String order) throws Exception;

	// 게시글 상세
	public BoardVO boardDetail(int bno) throws Exception;

	// 게시글 작성
	public int boardInsert(BoardVO board) throws Exception;

	// 게시글 수정
	public int boardUpdate(BoardVO board) throws Exception;

	// 게시글 삭제
	public int boardDelete(int bno) throws Exception;

	public int fileInsert(FileVO file) throws Exception;

	//파일 상세
	public FileVO fileDetail(int bno) throws Exception;
}