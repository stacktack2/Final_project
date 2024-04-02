
package ezen.dteam.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.dteam.vo.BoardVO;
import ezen.dteam.vo.PagingVO;

@Repository
public class admInquiryDAO {
	@Autowired
	SqlSession sqlSession;
	
	private final String nameSpace = "ezen.dteam.mapper.admInquiryMapper";
	
	public int selectBoardAllCnt() {
		return sqlSession.selectOne(nameSpace+".selectAllCnt");
	}
	
	public List<BoardVO> selectBoardAll(PagingVO pagingVO){
		return sqlSession.selectList(nameSpace+".selectAll",pagingVO);
	}
	
}
