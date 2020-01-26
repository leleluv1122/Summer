package net.lele.demo.board.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import net.lele.demo.board.domain.BoardVO;
import net.lele.demo.board.domain.FileVO;
import net.lele.demo.board.mapper.BoardMapper;

@Service("net.lele.demo.board.service.BoardService")
public class BoardService {

    @Resource(name="net.lele.demo.board.mapper.BoardMapper")
    BoardMapper mBoardMapper;

    public List<BoardVO> boardListService() throws Exception{

        return mBoardMapper.boardList("bno DESC");
    }

    public BoardVO boardDetailService(int bno) throws Exception{

        return mBoardMapper.boardDetail(bno);
    }

    public int boardInsertService(BoardVO board) throws Exception{

        return mBoardMapper.boardInsert(board);
    }

    public int boardUpdateService(BoardVO board) throws Exception{

        return mBoardMapper.boardUpdate(board);
    }

    public int boardDeleteService(int bno) throws Exception{

        return mBoardMapper.boardDelete(bno);
    }

    public int fileInsertService(FileVO file) throws Exception{

    	return mBoardMapper.fileInsert(file);
    }

    public FileVO fileDetailService(int bno) throws Exception{

        return mBoardMapper.fileDetail(bno);
    }

}