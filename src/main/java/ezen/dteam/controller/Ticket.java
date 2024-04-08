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
import ezen.dteam.vo.ScreenVO;
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
		
	@RequestMapping(value="/movieCode", method=RequestMethod.POST)
	@ResponseBody
	public List<CinemaVO> movieCodeNo(String movieCode) {
		
		List<CinemaVO> ccode = ticketSVC.selectMovieCode(movieCode);
		
		return ccode;
	}
	
	@RequestMapping(value="/tiketTheaterNo", method=RequestMethod.POST)
	@ResponseBody
	public List<ScreenHallVO> ticketTheaterNo(String tnoParam) {
		int tno = Integer.parseInt(tnoParam);
		
		List<ScreenHallVO> selectScreenHall = ticketSVC.selectScreenHall(tno);
		
		return selectScreenHall;
	}
	
	@RequestMapping(value="/selectScreen", method=RequestMethod.POST)
	@ResponseBody
	public List<ScreenVO> selectScreen(String cnoParam, String tnoParam, String sday){
		
		int cno = Integer.parseInt(cnoParam);
		int tno = Integer.parseInt(tnoParam);
		
		ScreenVO screenVO = new ScreenVO(cno, tno, sday);
		List<ScreenVO> selectScreen = ticketSVC.selectScreen(screenVO);
		
		return selectScreen;
	}
	
	@RequestMapping(value="/ticketInfo", method=RequestMethod.POST)
	@ResponseBody
	public String ticketInfo(String cnoParam, String tnoParam, String sdayParam, 
			String dateDayParam, String sstartTimeParam, String shallLocationParam){
		
		int cno = Integer.parseInt(cnoParam);;
		int tno = Integer.parseInt(tnoParam);;
		String sday = sdayParam;
		String dateDay = dateDayParam;
		String sstartTime = sstartTimeParam;
		String shallLocation = shallLocationParam;
		
		System.out.println("cno::"+cno);
		System.out.println("tno::"+tno);
		System.out.println("sday::"+sday);
		System.out.println("dateDay::"+dateDay);
		System.out.println("sstartTime::"+sstartTime);
		System.out.println("shallLocation::"+shallLocation);
		
		
		return "ticket/ticketSeat";
	}
	
	@RequestMapping(value="/ticketSeat", method=RequestMethod.POST)
	public String ticketSeatPOST() {
		
		
		return "ticket/ticketSeat";
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
