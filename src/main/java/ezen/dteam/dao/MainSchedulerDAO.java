package ezen.dteam.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.dteam.vo.CinemaVO;

@Repository
public class MainSchedulerDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	private final String nameSpace = "ezen.dteam.mapper.mainMapper";
	
	public int upsertDailyBoxOffice(CinemaVO cinema) {
		return sqlSession.insert(nameSpace+".upsertDailyBoxOffice", cinema);
	}

}
