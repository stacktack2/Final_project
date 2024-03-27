package ezen.dteam.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;


public class UserAuthenticationService implements UserDetailsService{

	SqlSession sqlSession;
	
	//생성자
	public UserAuthenticationService() {}
	public UserAuthenticationService(SqlSession sqlSession) {
		this.sqlSession=sqlSession;
	}
	
	//추상메소드
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Map<String,Object> user
		=sqlSession.selectOne("edu.springboard.mapper.userMapper.selectLogin",username);
	
	if(user == null) {
		System.out.println("user::"+user);
		//throw:강제로 예외발생, throws:강제로 예외던짐
		throw new UsernameNotFoundException(username);
	}
	
	List<GrantedAuthority> authority = new ArrayList<GrantedAuthority>();
	authority.add(new SimpleGrantedAuthority(user.get("authority").toString()));
	
	/*
	 * UserVO vo = new UserVO(user.get("username").toString(),
	 * user.get("password").toString(),
	 * (Integer)Integer.valueOf(user.get("username").toString())==1,
	 * true,true,true,authority, user.get("authority").toString(),
	 * user.get("name").toString()) ;
	 */
	//return vo;
	return null;
	}

}
