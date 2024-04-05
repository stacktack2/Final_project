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
	public MemberVO confirmPw(String mid) throws Exception{
		//사용자가 입력한 아이디값과 같은 값의 아이디 조회
		return sqlSession.selectOne(nameSpace+".selectMyinfo", mid);
	}
	
}
