package ezen.dteam.service;

import java.util.List;

import ezen.dteam.vo.CinemaVO;
import ezen.dteam.vo.ScreenHallVO;
import ezen.dteam.vo.TheaterVO;

public interface TicketSVC {
	
	List<TheaterVO> selectTheater();
	
	List<CinemaVO> selectMovie();
	
	List<CinemaVO> selectMovieCode(String movieCode);
	
	List<ScreenHallVO> selectScreenHall(String theaterNm);
}
