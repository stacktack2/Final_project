package ezen.dteam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Theater {

	@RequestMapping(value="/theater", method=RequestMethod.GET)
	public String movieChart() {
		return "theater/theater";
	}

}
