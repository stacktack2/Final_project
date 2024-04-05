package ezen.dteam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import ezen.dteam.service.TicketSVC;
import ezen.dteam.vo.CinemaVO;
import ezen.dteam.vo.ScreenHallVO;
import ezen.dteam.vo.TheaterVO;

@RequestMapping(value="/ticket")
@Controller
public class Ticket {
	
	@Autowired
	TicketSVC ticketSVC;

	@RequestMapping(value="/ticketing", method=RequestMethod.GET)
	public String ticketing(Model model) {
		
		List<TheaterVO> theater = ticketSVC.selectTheater();
		model.addAttribute("theater", theater);
		
		List<CinemaVO> movie = ticketSVC.selectMovie();
		model.addAttribute("movie", movie);
		
		
		return "ticket/ticketing";
	}
	
	@RequestMapping(value="/tiketTheaterNo", method=RequestMethod.POST)
	@ResponseBody
	public List<ScreenHallVO> ticketTheaterNo(String theaterNm) {
		
		List<ScreenHallVO> selectScreenHall = ticketSVC.selectScreenHall(theaterNm);
		
		return selectScreenHall;
	}
	
	@RequestMapping(value="/movieCode", method=RequestMethod.POST)
	@ResponseBody
	public List<CinemaVO> movieCodeNo(String movieCode) {
		
		List<CinemaVO> ccode = ticketSVC.selectMovieCode(movieCode);
		
		return ccode;
	}
	
	@RequestMapping(value="/ticketSeat", method=RequestMethod.GET)
	public String movieSchedule() {
		return "ticket/ticketSeat";
	}
	@RequestMapping(value="/payment", method=RequestMethod.GET)
	public String movieView() {
		return "ticket/payment";
	}

}
