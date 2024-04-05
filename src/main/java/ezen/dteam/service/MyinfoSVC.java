package ezen.dteam.service;

import ezen.dteam.vo.MemberVO;

public interface MyinfoSVC {
	//사용자가 입력한 아이디값과 같은 vo 리턴
	public MemberVO confirmPw(String mid) throws Exception;

}
