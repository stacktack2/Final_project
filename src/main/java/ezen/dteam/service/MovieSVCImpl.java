package ezen.dteam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.dteam.dao.MovieDAO;
import ezen.dteam.vo.CinemaVO;

@Service
public class MovieSVCImpl implements MovieSVC{
	
	@Autowired
	MovieDAO movieDAO;

	@Override
	public CinemaVO selectMovieDetail(String ccode) throws Exception {
		
		return movieDAO.selectMovieDetail(ccode);
	}
	
}