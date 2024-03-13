package ezen.dteam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping(value="/user")
@Controller
public class UserController {
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		
		return "user/login";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {
		
		return "user/join";
	}
	@RequestMapping(value = "/findId", method = RequestMethod.GET)
	public String findId() {
		
		return "user/findId";
	}
	@RequestMapping(value = "/findPw", method = RequestMethod.GET)
	public String findPw() {
		
		return "user/findPw";
	}
	
}
