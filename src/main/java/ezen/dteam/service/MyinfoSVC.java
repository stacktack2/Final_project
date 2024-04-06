package ezen.dteam.service;

import org.springframework.security.core.Authentication;

import ezen.dteam.vo.MemberVO;

public interface MyinfoSVC {
	
	public MemberVO selectMyinfo(String mid) throws Exception;
	public int checkEmail(String email) throws Exception;
	public int updateMyinfo(MemberVO vo, Authentication auth) throws Exception;
	public int deleteMyinfo(MemberVO vo) throws Exception;

}
