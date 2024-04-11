package ezen.dteam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import ezen.dteam.service.TicketSVC;
import ezen.dteam.vo.CinemaVO;
import ezen.dteam.vo.ScreenHallVO;
import ezen.dteam.vo.ScreenSeatVO;
import ezen.dteam.vo.ScreenVO;
import ezen.dteam.vo.TheaterVO;
import ezen.dteam.vo.UserVO;

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
	
	@RequestMapping(value="/ticketSeat", method=RequestMethod.POST)
	public String ticketSeatPOST(Model model, @RequestParam("cno") int cno,
			@RequestParam("cposter") String cposter, @RequestParam("cname") String cname, 
			@RequestParam("cwatchGradeNm") String cwatchGradeNm, @RequestParam("tno") int tno,
			@RequestParam("tname") String tname, @RequestParam("inputDateDay") String dateDay,
			@RequestParam("sday") String sday, @RequestParam("sstartTime") String sstartTime,
			@RequestParam("shallno") int shallno, @RequestParam("shallType") String shallType,
			@RequestParam("shallLocation") String shallLocation, @RequestParam("sendTime") String sendTime, 
			Authentication authentication) throws Exception {
		
		model.addAttribute("cno", cno);
		model.addAttribute("cposter", cposter);
		model.addAttribute("cname", cname);
		model.addAttribute("cwatchGradeNm", cwatchGradeNm);
		model.addAttribute("tno", tno);
		model.addAttribute("tname", tname);
		model.addAttribute("dateDay", dateDay);
		model.addAttribute("sday", sday);
		model.addAttribute("sstartTime", sstartTime);
		model.addAttribute("shallno", shallno);
		model.addAttribute("shallType", shallType);
		model.addAttribute("shallLocation", shallLocation);
		model.addAttribute("sendTime", sendTime);
		
		ScreenSeatVO ticketInfo = new ScreenSeatVO(cno, tno, sday, sstartTime, shallno);
		List<ScreenSeatVO> selectScreenSeat = ticketSVC.selectScreenSeat(ticketInfo);
		model.addAttribute("screenSeat", selectScreenSeat);
		
		UserVO loginVO = (UserVO) authentication.getPrincipal();
		int mno = loginVO.getMno();
		System.out.println(mno);
		
		model.addAttribute("mno", mno);
		
		
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
