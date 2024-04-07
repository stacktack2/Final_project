package ezen.dteam.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.dteam.vo.CinemaReplyVO;
import ezen.dteam.vo.CinemaVO;

@Repository
public class MovieDAO {
	@Autowired
	SqlSession sqlSession;
	
	private final String nameSpace = "ezen.dteam.mapper.movieMapper";
	
	public CinemaVO selectMovieDetail(String ccode){
		return sqlSession.selectOne(nameSpace+".selectMovieDetail",ccode);
	}
	
	public List<CinemaReplyVO> selectReplyCcode(String ccode){
		return sqlSession.selectList(nameSpace+".selectReplyCcode",ccode);
	}
}
