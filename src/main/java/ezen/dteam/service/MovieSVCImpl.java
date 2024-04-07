package ezen.dteam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.dteam.dao.MovieDAO;
import ezen.dteam.vo.CinemaReplyVO;
import ezen.dteam.vo.CinemaVO;

@Service
public class MovieSVCImpl implements MovieSVC{
	
	@Autowired
	MovieDAO movieDAO;

	@Override
	public CinemaVO selectMovieDetail(String ccode) throws Exception {
		
		return movieDAO.selectMovieDetail(ccode);
	}
	
	@Override
	public List<CinemaReplyVO> selectReplyCcode(String ccode){
		return movieDAO.selectReplyCcode(ccode);
	}
	
}