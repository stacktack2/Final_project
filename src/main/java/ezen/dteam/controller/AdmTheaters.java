package ezen.dteam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ezen.dteam.dao.admTheatersDAO;

@RequestMapping(value = "/admin/theaters")
@Controller
public class AdmTheaters {
	
	@Autowired
	admTheatersDAO admTheatersDAO;
	
	@RequestMapping(value = "theatersMgList", method = RequestMethod.GET)
	public String theatersMgList(Model model) {
		model.addAttribute("TheaterVOList",admTheatersDAO.selectAllTheater());
		return "/admin/theaters/theatersMgList";
	}
	
	@RequestMapping(value = "theatersMgView", method = RequestMethod.GET)
	public String theatersMgView() {
		
		return "/admin/theaters/theatersMgView";
	}
}
