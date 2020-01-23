package net.lele.demo;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import net.lele.demo.board.mapper.BoardMapper;

@Controller
public class JspTest {

    @Resource(name="net.lele.demo.board.mapper.BoardMapper")
    BoardMapper mBoardMapper;

    @RequestMapping("/test")
    private String jspTest() throws Exception{

        System.out.println(mBoardMapper.boardCount()); // <<<<TEST

        return "test";
    }
}