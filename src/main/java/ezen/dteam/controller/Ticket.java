package ezen.dteam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping(value="/ticket")
@Controller
public class Ticket {

	@RequestMapping(value="/ticketing", method=RequestMethod.GET)
	public String movieChart() {
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
