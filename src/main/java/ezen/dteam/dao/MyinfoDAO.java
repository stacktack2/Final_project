package ezen.dteam.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.dteam.vo.MemberVO;

@Repository
public class MyinfoDAO {
	@Autowired
	SqlSession sqlSession;
	
	private final String nameSpace = "ezen.dteam.mapper.myinfoMapper";
	
	//비밀번호 확인
	public MemberVO selectMyinfo(String mid) throws Exception{
		//사용자가 입력한 아이디값과 같은 값의 vo조회
		return sqlSession.selectOne(nameSpace+".selectMyinfo", mid);
	}
	public int checkEmail(String email) throws Exception{
		return sqlSession.selectOne(nameSpace+".checkEmail",email);
	}
	
	public int updateMyinfo(MemberVO vo) throws Exception{
		return sqlSession.update(nameSpace+".updateMyinfo",vo);
	}
	
}
