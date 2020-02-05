package net.lele.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.lele.domain.Article;
import net.lele.domain.Board;
import net.lele.model.Pagination;
import net.lele.repository.ArticleRepository;
import net.lele.repository.BoardRepository;

@Controller
@RequestMapping("article")
public class ArticleController {

	@Autowired
	ArticleRepository articleRepository;
	@Autowired
	BoardRepository boardRepository;

	@RequestMapping("list") //게시글 목록화면을 출력하기 위한 액션 메소드
	public String list(Pagination pagination, Model model) {
		Board board = boardRepository.findById(pagination.getBd()).get();
		List<Article> list = articleRepository.findAll(pagination);
		model.addAttribute("board", board);
		model.addAttribute("list", list);
		model.addAttribute("orderBy", ArticleRepository.orderBy);
		model.addAttribute("searchBy", ArticleRepository.searchBy);
		return "article/list";
	}
	// pagination 객체에 bd등등 값들이 채워져서 넘어간다

	@RequestMapping("view") //게시글 목록화면에서 게시글 한개를 클릭했을 때 실행되는 액션 메소드 /상세화면
	public String view(@RequestParam("id") int id, Pagination pagination, Model model) {
		Article article = articleRepository.findById(id).get();
		model.addAttribute("article", article);
		return "article/view";
	}
}
