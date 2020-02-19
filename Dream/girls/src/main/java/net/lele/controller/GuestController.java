package net.lele.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.lele.domain.Board;
import net.lele.model.UserRegistrationModel;
import net.lele.service.BoardService;
import net.lele.service.UserService;

@Controller
public class GuestController { // 로그인 하지 않은 사용자를 위한 페이지

	@Autowired
	UserService userService;
	@Autowired
	BoardService boardService;

	@RequestMapping({ "/", "guest/index" })
	public String index() {
		return "guest/index"; // 로그인 하지 않은 사용자를 위한 첫 페이지
	}

	@RequestMapping("guest/login")
	public String login() {
		return "guest/login"; // 로그인 페이지 URL
	}

	@RequestMapping(value = "guest/register", method = RequestMethod.GET)
	public String register(UserRegistrationModel userModel, Model model) {
		return "guest/register";
	}

	@RequestMapping(value = "guest/register", method = RequestMethod.POST)
	public String register(@Valid UserRegistrationModel userModel, BindingResult bindingResult, Model model) {
		if (userService.hasErrors(userModel, bindingResult)) {
			return "guest/register";
		}
		userService.save(userModel);
		return "redirect:index";
	}
	
	@RequestMapping(value = "guest/board")
	public String board(Model model, Board board) {
		model.addAttribute("user", userService.findAll());
		return "guest/board";
	}

	@RequestMapping(value = "guest/board", method = RequestMethod.POST)
	public String board(Model model, Board board, BindingResult bindingResult) {
		if (boardService.hasErrors(board, bindingResult)) {
			model.addAttribute("user", userService.findAll());
			return "guest/board";
		}
		boardService.save(board);
		return "redirect:boardlist";
	}

	@RequestMapping(value="guest/boardlist")
	public String boardlist(Model model) {
		model.addAttribute("list", boardService.findAllByOrderByIdDesc());
		return "guest/boardlist";
	}
}