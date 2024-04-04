package ezen.dteam.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ezen.dteam.service.TicketSVC;
import ezen.dteam.vo.CinemaVO;
import ezen.dteam.vo.TheaterVO;

@RequestMapping(value="/ticket")
@Controller
public class Ticket {
	
	@Autowired
	TicketSVC ticketSVC;

	@RequestMapping(value="/ticketing", method=RequestMethod.POST)
	public String ticketing(Model model, HttpSession session, HttpServletResponse response, HttpServletRequest request) {
		
		
		
		List<TheaterVO> theater = ticketSVC.selectTheater();
		model.addAttribute("theater", theater);
		
		List<CinemaVO> movie = ticketSVC.selectMovie();
		model.addAttribute("movie", movie);
		
		return "ticket/ticketing";
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
