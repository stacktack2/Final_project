package ezen.dteam.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.dteam.vo.CinemaVO;
import ezen.dteam.vo.ScreenHallVO;
import ezen.dteam.vo.ScreenSeatVO;
import ezen.dteam.vo.ScreenVO;
import ezen.dteam.vo.TheaterVO;
import ezen.dteam.vo.TicketDetailVO;

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
		
		public List<ScreenHallVO> selectScreenHall(int tno){
			return sqlSession.selectList(nameSpace+".selectScreenHall", tno);
		}

		public List<ScreenVO> selectScreen(ScreenVO screenVO) {
			return sqlSession.selectList(nameSpace+".selectScreen", screenVO);
		}

		public List<ScreenSeatVO> selectScreenSeat(ScreenSeatVO ticketInfo) {
			return sqlSession.selectList(nameSpace+".selectScreenSeat", ticketInfo);
		}

		public List<TicketDetailVO> selectCheckSeat(TicketDetailVO ticketDetailVO) {
			return sqlSession.selectList(nameSpace+".selectCheckSeat", ticketDetailVO);
		}
		
}