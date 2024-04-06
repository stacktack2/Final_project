package ezen.dteam.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

import ezen.dteam.dao.MyinfoDAO;
import ezen.dteam.vo.MemberVO;
import ezen.dteam.vo.UserVO;

@Service
public class MyinfoSVCImpl implements MyinfoSVC{
	
	@Autowired
	MyinfoDAO myinfoDAO;

	@Override
	public MemberVO selectMyinfo(String mid) throws Exception {
		return myinfoDAO.selectMyinfo(mid);
	}
	
	@Override
	public int updateMyinfo(MemberVO vo,Authentication auth) throws Exception{
		UserVO loginVO = (UserVO)auth.getPrincipal();
		MemberVO user =  myinfoDAO.selectMyinfo(loginVO.getMid());
		
		MemberVO newvo = new MemberVO();
		newvo.setMid(loginVO.getMid());

		newvo.setMname(Optional.ofNullable(vo.getMname()).orElse(loginVO.getMname()));
		newvo.setMpw(Optional.ofNullable(vo.getMpw()).orElse(loginVO.getMpw()));
		newvo.setMemail(Optional.ofNullable(vo.getMemail()).orElse(loginVO.getMemail()));
		newvo.setMphone(Optional.ofNullable(vo.getMphone()).orElse(loginVO.getMphone()));
		newvo.setMbirth(Optional.ofNullable(vo.getMbirth()).orElse(loginVO.getMbirth()));
		newvo.setMgender(Optional.ofNullable(vo.getMgender()).orElse(loginVO.getMgender()));
			
		System.out.print(myinfoDAO.updateMyinfo(newvo));
		return myinfoDAO.updateMyinfo(newvo);
	}

	@Override
	public int checkEmail(String email) throws Exception {
		return myinfoDAO.checkEmail(email);
	}
}