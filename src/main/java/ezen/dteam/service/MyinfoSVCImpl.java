package ezen.dteam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.dteam.dao.MyinfoDAO;
import ezen.dteam.vo.MemberVO;

@Service
public class MyinfoSVCImpl implements MyinfoSVC{
	
	@Autowired
	MyinfoDAO myinfoDAO;

	//사용자가 입력한 아이디 값과 같은 값 리턴
	@Override
	public MemberVO confirmPw(String mid) throws Exception {
		return myinfoDAO.confirmPw(mid);
	}
}