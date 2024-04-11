package ezen.dteam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.dteam.dao.TicketDAO;
import ezen.dteam.vo.CinemaVO;
import ezen.dteam.vo.ScreenHallVO;
import ezen.dteam.vo.ScreenSeatVO;
import ezen.dteam.vo.ScreenVO;
import ezen.dteam.vo.TheaterVO;
import ezen.dteam.vo.TicketDetailVO;

@Service
public class TicketSVCImpl implements TicketSVC{
	
	@Autowired
	TicketDAO ticketDAO;

	@Override
	public List<TheaterVO> selectTheater() {
		return ticketDAO.selectTheater();
	}

	@Override
	public List<CinemaVO> selectMovie() {
		return ticketDAO.selectMovie();
	}

	@Override
	public List<CinemaVO> selectMovieCode(String movieCode) {
		return ticketDAO.selectMovieCode(movieCode);
	}

	@Override
	public List<ScreenHallVO> selectScreenHall(int tno) {
		return ticketDAO.selectScreenHall(tno);
	}

	@Override
	public List<ScreenVO> selectScreen(ScreenVO screenVO) {
		return ticketDAO.selectScreen(screenVO);
	}

	@Override
	public List<ScreenSeatVO> selectScreenSeat(ScreenSeatVO ticketInfo) {
		return ticketDAO.selectScreenSeat(ticketInfo);
	}

	@Override
	public List<TicketDetailVO> selectCheckSeat(TicketDetailVO ticketDetailVO) {
		return ticketDAO.selectCheckSeat(ticketDetailVO);
	}
	
}
