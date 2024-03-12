package ezen.dteam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping(value = "/admin/theaters")
@Controller
public class AdmTheaters {
	
	@RequestMapping(value = "theatersMgList", method = RequestMethod.GET)
	public String theatersMgList() {
		
		return "/admin/theaters/theatersMgList";
	}
	
	@RequestMapping(value = "theatersMgView", method = RequestMethod.GET)
	public String theatersMgView() {
		
		return "/admin/theaters/theatersMgView";
	}
}
