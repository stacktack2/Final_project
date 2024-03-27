package ezen.dteam.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import ezen.dteam.vo.MemberVO;
import ezen.dteam.vo.UserVO;

//입력한 로그인 아이디와 일치하는 DB의 유저정보를 UserVO객체로 반환
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
		
		//map형식 (userMapper에서 id조회)
		MemberVO user
		=sqlSession.selectOne("ezen.dteam.mapper.userMapper.selectLogin",username);
	
		if(user == null) {
			System.out.println("user::"+user);
			//throw:강제로 예외발생, throws:강제로 예외던짐
			throw new UsernameNotFoundException(username);
		}
		
		//list로 반환(authorities)
		List<GrantedAuthority> authority = new ArrayList<GrantedAuthority>();
		authority.add(new SimpleGrantedAuthority(user.getAuthority()));
		
		UserVO vo = new UserVO(user.getMid(),
								user.getMpw(),
								(Integer)Integer.valueOf(user.getEnabled())==1,
								true,
								true,
								true,
								authority,
								user.getAuthority(),
								user.getMname());
		
		return vo;
	}

}
