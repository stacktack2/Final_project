package ezen.dteam.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.dteam.vo.BoardVO;

@Repository
public class admInquiryDAO {
	@Autowired
	SqlSession sqlSession;
	
	private final String nameSpace = "ezen.dteam.mapper.admInquiryMapper";
	
	public List<BoardVO> selectBoardAll(){
		return sqlSession.selectList(nameSpace+".selectAll");
	}
}
