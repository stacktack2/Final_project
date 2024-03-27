package ezen.dteam.controller;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//@RequestMapping(value="/user")
@Controller
public class User {
	
	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping(value = "/login")
	public String login() {
		
		return "user/login";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {
		
		return "user/join";
	}
	
	@RequestMapping(value="/joinOk", method=RequestMethod.POST)
	public String joinOk(String mid,String mpw, String mname,String authority, String enabled,
			String mnickNm, String mbirth, String memail,String mgender, String mphone) {
		
		//BCrypt 암호화
		BCryptPasswordEncoder epwe = new BCryptPasswordEncoder();
		
		Map<String,Object> vo = new HashMap<String,Object>();
		vo.put("mid", mid);
		vo.put("mpw",epwe.encode(mpw));
		vo.put("mname", mname);
		vo.put("mnickNm", mnickNm);
		vo.put("mbirth", mbirth);
		vo.put("memail", memail);
		vo.put("mphone", mphone);
		vo.put("mgender", mgender);		
		vo.put("enabled", enabled);		
		vo.put("authority", authority);
		
		//db에 삽입
		int result = sqlSession.insert("ezen.dteam.mapper.userMapper.insert",vo);
		
		return "redirect:/user/login";
	}
	
	
	@RequestMapping(value = "/findId", method = RequestMethod.GET)
	public String findId() {
		
		return "user/findId";
	}
	@RequestMapping(value = "/findPw", method = RequestMethod.GET)
	public String findPw() {
		
		return "user/findPw";
	}
	
}
