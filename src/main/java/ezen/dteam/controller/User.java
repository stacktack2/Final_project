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
	public String joinOk(String userid, String password, String name
						,String authority) {
		
		//BCrypt 암호화
		BCryptPasswordEncoder epwe = new BCryptPasswordEncoder();
		
		Map<String,Object> vo = new HashMap<String,Object>();
		vo.put("userid", userid);
		vo.put("password",epwe.encode(password));
		vo.put("name", name);
		
		//db에 삽입
		int result = sqlSession.insert("ezen.dteam.mapper.userMapper.insert",vo);
		
		return "redirect:/security/login";
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
