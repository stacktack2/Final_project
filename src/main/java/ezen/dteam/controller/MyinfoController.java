package ezen.dteam.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyinfoController {
	
	@RequestMapping(value = "/myinfo", method = RequestMethod.GET)
	public String myinfo(Locale locale, Model model) {
		
		return "myInfo/myTicketing";
	}
	
	@RequestMapping(value = "/myinfo", method = RequestMethod.POST)
	public String myinfoPOST(Locale locale, Model model) {
		
		return "myInfo/myTicketing";
	}
	
	@RequestMapping(value = "/changeMyinfo", method = RequestMethod.GET)
	public String changeMyinfo(Locale locale, Model model) {
		
		return "myInfo/changeMyinfo";
	}
	
	@RequestMapping(value = "/changeMyinfo", method = RequestMethod.POST)
	public String changeMyinfoPOST(Locale locale, Model model) {
		
		return "myInfo/changeMyinfo";
	}
	
}
