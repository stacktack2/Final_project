package ezen.dteam.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.dteam.vo.TheaterVO;

@Repository
public class admTheatersDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	private final String nameSpace = "ezen.dteam.mapper.admTheatersMapper";
	
	public List<TheaterVO> selectAllTheater() {
		return sqlSession.selectList(nameSpace+".selectAllTheater");
	}
	
}
