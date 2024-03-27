package ezen.dteam.vo;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class UserVO extends User{//시큐리티에서 사용할 UserVO클래스 생성, 상위에 User(시큐리티 기존)
	
	//User에 없는거 추가적으로 선언
	private String mid;
	private String mpw;
	private String mname;
	private String authority;

	//슈퍼생성자 호출
	public UserVO(String username, String password, boolean enabled, boolean accountNonExpired,
			boolean credentialsNonExpired, boolean accountNonLocked,
			Collection<? extends GrantedAuthority> authorities,String authority, String mname) {//별도로 매개변수 추가
		super(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
		
		//security에서 기본적으로 제공하는 것 외에 필요한 유저정보 추가
		this.mid=username;
		this.mpw=password;
		this.authority=authority;
		this.mname=mname;	
	}

	//게터세터
	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMpw() {
		return mpw;
	}

	public void setMpw(String mpw) {
		this.mpw = mpw;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}
	
	
	
	
}
