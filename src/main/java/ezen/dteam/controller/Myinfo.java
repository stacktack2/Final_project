package ezen.dteam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Myinfo {
	
	@RequestMapping(value = "/myinfo", method = RequestMethod.GET)
	public String myinfo() {
		
		return "myInfo/myTicketing";
	}
	
	@RequestMapping(value = "/myinfo", method = RequestMethod.POST)
	public String myinfoPOST() {
		
		return "myInfo/myTicketing";
	}
	
	@RequestMapping(value = "/changeMyinfo", method = RequestMethod.GET)
	public String changeMyinfo() {
		
		return "myInfo/changeMyinfo";
	}
	
	@RequestMapping(value = "/changeMyinfo", method = RequestMethod.POST)
	public String changeMyinfoPOST() {
		
		return "myInfo/changeMyinfo";
	}
	
}
