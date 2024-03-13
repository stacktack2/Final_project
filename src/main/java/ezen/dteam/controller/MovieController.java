package ezen.dteam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping(value="/movie")
@Controller
public class MovieController {

	@RequestMapping(value="/movieChart", method=RequestMethod.GET)
	public String movieChart() {
		return "movie/movieChart";
	}
	@RequestMapping(value="/movieSchedule", method=RequestMethod.GET)
	public String movieSchedule() {
		return "movie/movieSchedule";
	}
	@RequestMapping(value="/movieView", method=RequestMethod.GET)
	public String movieView() {
		return "movie/movieView";
	}
}
