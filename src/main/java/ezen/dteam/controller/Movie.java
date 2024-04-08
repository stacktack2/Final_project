package ezen.dteam.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ezen.dteam.service.MovieSVCImpl;
import ezen.dteam.vo.CinemaVO;

@RequestMapping(value="/movie")
@Controller
public class Movie {
	@Autowired
	MovieSVCImpl movieService;
	
	@RequestMapping(value="/movieChart", method=RequestMethod.GET)
	public String movieChart() {
		return "movie/movieChart";
	}
	@RequestMapping(value="/movieSchedule", method=RequestMethod.GET)
	public String movieSchedule() {
		return "movie/movieSchedule";
	}
	@RequestMapping(value="/movieView", method=RequestMethod.GET)
	public String movieView(String cno,Model model, HttpServletRequest request, HttpServletResponse response) throws  Exception {
		//상세정보
		CinemaVO movieDetail = movieService.selectMovieDetail(cno);
		model.addAttribute("movieDetail",movieDetail);
		//댓글
		model.addAttribute("replyList",movieService.selectReplyCcode(cno));
		return "movie/movieView";
	}
}
