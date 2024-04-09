package ezen.dteam.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import ezen.dteam.service.MyinfoSVCImpl;
import ezen.dteam.vo.MemberVO;
import ezen.dteam.vo.TicketDetailVO;
import ezen.dteam.vo.TicketVO;
import ezen.dteam.vo.UserVO;


@Controller
public class Myinfo {
		
	@Autowired
	MyinfoSVCImpl service;
	//나의 예매내역 조회
	@RequestMapping(value = "/myInfo", method = RequestMethod.GET)
	public String myinfo(Authentication auth,Model model) throws Exception{
		//로그인한 유저 가져오기
		UserVO loginVO = (UserVO)auth.getPrincipal();
		MemberVO user =  service.selectMyinfo(loginVO.getMid());
		List<TicketVO> myTicketList= service.selectMyticket(Integer.toString(user.getMno()));
		List<TicketDetailVO> ticketdetail = service.selectTicketDetail();
		 
		model.addAttribute("myTicketList", myTicketList);
		model.addAttribute("ticketdetail", ticketdetail);
		
		return "myInfo/myTicketing";
	}
	
	//예매취소
	@RequestMapping(value = "/myInfo", method = RequestMethod.POST)
	public String myinfoPOST(Authentication auth) throws Exception{

		
		
		return "myInfo/myTicketing";
	}
	
	//내정보변경(비밀번호 확인 페이지)
	@RequestMapping(value = "/myInfo/changeMyinfo", method = RequestMethod.GET)
	public String changeMyinfoPre() {		
		return "myInfo/checkPw";
	}
	//비밀번호 확인 로직
	@RequestMapping(value = "/myInfo/confirmPw", method = RequestMethod.POST)
	public String confirmPw(MemberVO vo, Authentication auth) throws Exception{
		
		UserVO loginVO = (UserVO)auth.getPrincipal();
		MemberVO user =  service.selectMyinfo(loginVO.getMid());
		
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
	@ResponseBody
	@RequestMapping(value="/myInfo/checkEmail", method=RequestMethod.POST)
	public String checkEmail(String email) throws Exception {
		return Integer.toString(service.checkEmail(email));
	}
	//내정보변경(업데이트)
	@RequestMapping(value = "/myInfo/changeMyinfo", method = RequestMethod.POST)
	public void changeMyinfoPost(MemberVO vo, Authentication auth,HttpServletResponse response,HttpServletRequest request) throws Exception{
		
		int result = service.updateMyinfo(vo ,auth);
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		if(result == 1) {
			response.getWriter().println("<script>alert('회원정보가 변경되었습니다.');location.href='"+request.getContextPath()+"/myInfo'; </script>");
			response.getWriter().flush();
		}else {
			response.getWriter().println("<script>alert('회원정보 변경에 실패하였습니다.');location.href='"+request.getContextPath()+"/myInfo'; </script>");
			response.getWriter().flush();
		}
		
	}
	
	//회원탈퇴
	@RequestMapping(value = "/myInfo/withdrawal", method = RequestMethod.GET)
	public String withdrawal() {
		
		return "myInfo/withdrawal";
	}
	//비밀번호 확인->탈퇴
	@RequestMapping(value = "/myInfo/withdrawal", method = RequestMethod.POST)
	public void withdrawl(MemberVO vo, Authentication auth, HttpServletResponse response,HttpSession session, HttpServletRequest request) throws Exception {
		//비밀번호 인증확인되면 
		UserVO loginVO = (UserVO)auth.getPrincipal();
		MemberVO user =  service.selectMyinfo(loginVO.getMid());
		
		if(user == null) {	
		}
		BCryptPasswordEncoder epwe = new BCryptPasswordEncoder();
		boolean result = epwe.matches(vo.getMpw(), user.getMpw());
		
		if(result) {	
			int resultDel = service.deleteMyinfo(user);
			
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=utf-8");
			if(resultDel == 0) {
				response.getWriter().println("<script>alert('회원탈퇴에 실패하였습니다.'); location.href='"+request.getContextPath()+"/myInfo'; </script>");
				response.getWriter().flush();
			}else if(resultDel == 1) {
				response.getWriter().println("<script>alert('회원탈퇴가 성공적으로 진행되었습니다');location.href='"+request.getContextPath()+"/myInfo';  </script>");
				response.getWriter().flush();
				
	            SecurityContextHolder.clearContext(); // SecurityContext 초기화
	            session.invalidate(); // HttpSession 무효화

	            // 로그아웃 처리
	            SecurityContextLogoutHandler logoutHandler = new SecurityContextLogoutHandler();
	            logoutHandler.logout(request, null, null);
			}
		}
		
	}
	
	
}
