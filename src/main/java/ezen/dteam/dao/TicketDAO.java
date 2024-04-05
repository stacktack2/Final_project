package ezen.dteam.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.dteam.vo.CinemaVO;
import ezen.dteam.vo.ScreenHallVO;
import ezen.dteam.vo.TheaterVO;

@Repository
public class TicketDAO {

		@Autowired
		SqlSession sqlSession;
		
		private final String nameSpace = "ezen.dteam.mapper.ticketMapper";
		
		public List<TheaterVO> selectTheater(){
			return sqlSession.selectList(nameSpace+".selectTheater");
		}
		
		public List<CinemaVO> selectMovie(){
			return sqlSession.selectList(nameSpace+".selectMovie");
		}
		
		public List<CinemaVO> selectMovieCode(String movieCode){
			return sqlSession.selectList(nameSpace+".selectMovieCode", movieCode);
		}
		
		public List<ScreenHallVO> selectScreenHall(String theaterNm){
			return sqlSession.selectList(nameSpace+".selectScreenHall", theaterNm);
		}
}
