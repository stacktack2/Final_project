package ezen.dteam.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;


public class UserLoginSuccessHandler implements AuthenticationSuccessHandler{

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		//로그인 성공시
		//UserVO loginUser = (UserVO)authentication.getPrincipal();
		//System.out.println(loginUser.getUserid());
		
		//메인페이지로 리다이렉트
		response.sendRedirect(request.getContextPath());
	}

}
