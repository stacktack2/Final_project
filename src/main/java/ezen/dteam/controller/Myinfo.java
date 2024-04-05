package ezen.dteam.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ezen.dteam.service.MyinfoSVCImpl;
import ezen.dteam.vo.MemberVO;
import ezen.dteam.vo.UserVO;


@Controller
public class Myinfo {
	
	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	MyinfoSVCImpl service;
	
	@RequestMapping(value = "/myInfo", method = RequestMethod.GET)
	public String myinfo() {
		
		return "myInfo/myTicketing";
	}
	
	@RequestMapping(value = "/myInfo", method = RequestMethod.POST)
	public String myinfoPOST() {
		
		return "myInfo/myTicketing";
	}
	//내정보변경(비밀번호 확인 페이지로 먼저 화면포워드)
	@RequestMapping(value = "/myInfo/changeMyinfo", method = RequestMethod.GET)
	public String changeMyinfo() {		
		return "myInfo/checkPw";
	}
	//비밀번호 확인 로직
	@RequestMapping(value = "/myInfo/confirmPw", method = RequestMethod.POST)
	public String confirmPw(MemberVO vo, Authentication auth) throws Exception{
		UserVO loginVO = (UserVO)auth.getPrincipal();
		MemberVO user =  service.confirmPw(loginVO.getMid());
		if(user == null) {
			//사용자가 입력한 아이디 일치 회원 없음
			return "redirect:/myInfo/checkPw";
		}
		//BCrypt 암호화
		BCryptPasswordEncoder epwe = new BCryptPasswordEncoder();
		
		boolean result = epwe.matches(vo.getMpw(), user.getMpw());
		
		if(result) {//같으면 내정보 변경페이지로 다시 리다이렉트

			return "redirect:/myInfo/updateMyinfo";
		}else {	//다르면 비밀번호 변경페이지로 다시 리다이렉트

			return "redirect:/myInfo/checkPw";
		}
		
	}
	//내정보변경(입력양식 값으로 업데이트)
	@RequestMapping(value = "/myInfo/updateMyinfo", method = RequestMethod.GET)
	public String changeMyinfoPOST() {
		
		return "myInfo/changeMyinfo";
	}
	
	//회원탈퇴
	@RequestMapping(value = "/myInfo/withdrawal", method = RequestMethod.GET)
	public String withdrawal() {
		
		return "myInfo/withdrawal";
	}
	@RequestMapping(value = "/myInfo/withdrawal", method = RequestMethod.POST)
	public String withdrawl() {
		//비밀번호 인증확인되면 
		//메인으로 리다이렉트
		return "myInfo/withdrawal";
	}
	
}
