package net.lele.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.lele.dto.People;
import net.lele.mapper.PeopleMapper;

@Controller
@RequestMapping("/people")
public class PeopleController {

	@Autowired PeopleMapper peopleMapper;

	@RequestMapping("list")
    public String list(Model model) {
        List<People> peoples = peopleMapper.findAll();
        model.addAttribute("peoples", peoples);
        return "people/list";
    }

    @RequestMapping(value="create", method=RequestMethod.POST)
    public String create(Model model, People people) {
    	peopleMapper.insert(people);
        return "redirect:list";
    }



	/*
	 * @RequestMapping(value="login", method=RequestMethod.GET) public String
	 * login(Model model) { People people = new People();
	 * model.addAttribute("people", people); return "people/login"; }
	 */
	/*
	 * @RequestMapping(value="create", method=RequestMethod.GET) public String
	 * create(Model model) { People people = new People();
	 * peopleMapper.insert(people); model.addAttribute("people", people); return
	 * "people/create"; }
	 */
	/*
		 *
		 * @RequestMapping(value = "create", method = RequestMethod.POST) public String
		 * create(Model model, People people) { peopleMapper.insert(people); return
		 * "redirect:login"; }
		 */

}
