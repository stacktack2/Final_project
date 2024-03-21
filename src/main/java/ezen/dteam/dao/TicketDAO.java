package ezen.dteam.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.dteam.vo.TheaterVO;

@Repository
public class TicketDAO {

		@Autowired
		SqlSession sqlSession;
		
		private final String nameSpace = "ezen.dteam.mapper.ticketMapper";
		
		public List<TheaterVO> selectTheater(){
			return sqlSession.selectList(nameSpace+".selectTheater");
		}
		
}
