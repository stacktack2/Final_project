package ezen.dteam.controller;

import javax.servlet.http.HttpServletResponse;

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
	public String changeMyinfoPre() {		
		return "myInfo/checkPw";
	}
	//비밀번호 확인 로직
	@RequestMapping(value = "/myInfo/confirmPw", method = RequestMethod.POST)
	public String confirmPw(MemberVO vo, Authentication auth) throws Exception{
		
		UserVO loginVO = (UserVO)auth.getPrincipal();
		MemberVO user =  service.selectMyinfo(loginVO.getMid());
		
		if(user == null) {	
			return "redirect:/myInfo/checkPw";
		}
		BCryptPasswordEncoder epwe = new BCryptPasswordEncoder();
		boolean result = epwe.matches(vo.getMpw(), user.getMpw());
		
		if(result) {	
			return "redirect:/myInfo/updateMyinfo";
		}else {	
			return "redirect:/myInfo/checkPw";
		}
	}
	//내정보변경(화면포워드)
	@RequestMapping(value = "/myInfo/updateMyinfo", method = RequestMethod.GET)
	public String changeMyinfo() {	
		return "myInfo/changeMyinfo";
	}
	//내정보변경(업데이트)
	@RequestMapping(value = "/myInfo/changeMyinfo", method = RequestMethod.POST)
	public String changeMyinfoPost(MemberVO vo, Authentication auth,HttpServletResponse response) throws Exception{
		
		int result = service.updateMyinfo(vo ,auth);
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		if(result == 1) {
			response.getWriter().println("<script>alert('회원정보가 변경되었습니다.'); </script>");
			response.getWriter().flush();
			return "redirect:/myInfo/";
		}else {
			response.getWriter().println("<script>alert('회원정보 변경에 실패하였습니다.'); </script>");
			response.getWriter().flush();
			return "myInfo/changeMyinfo";
		}
		
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
