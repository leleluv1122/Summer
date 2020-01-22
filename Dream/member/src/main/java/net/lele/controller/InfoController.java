package net.lele.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.lele.dto.Info;
import net.lele.mapper.InfoMapper;

@Controller
@RequestMapping("/info")
public class InfoController {
	@Autowired InfoMapper infoMapper;

	@RequestMapping("list")
	public String list(Model model) {
		List<Info> infomation = infoMapper.findAll();
		model.addAttribute("infomation", infomation);
		return "info/list";
	}

	@RequestMapping(value="create", method=RequestMethod.GET)
	public String create(Model model) {
		Info info = new Info();
		model.addAttribute("info", info);
		return "info/edit";
	}

	@RequestMapping(value="create", method=RequestMethod.POST)
    public String create(Model model, Info info) {
        infoMapper.insert(info);
        return "redirect:list";
    }

	@RequestMapping(value="edit", method=RequestMethod.GET)
    public String edit(Model model, @RequestParam("id") String id) {
        Info info = infoMapper.findOne(id);
        model.addAttribute("info", info);
        return "info/edit";
    }

    @RequestMapping(value="edit", method=RequestMethod.POST)
    public String edit(Model model, Info info) {
        infoMapper.update(info);
        return "redirect:list";
    }

}
