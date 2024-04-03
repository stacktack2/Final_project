package ezen.dteam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.dteam.dao.UserDAO;

@Service
public class UserSVCImpl implements UserSVC{
	
	@Autowired
	UserDAO userDAO;
	
	//아이디 중복검사
	@Override
	public int checkId(String id) throws Exception{
		return userDAO.checkId(id);
	}

	//닉네임 중복검사
	@Override
	public int checkNickNm(String nickNm) throws Exception {
		return userDAO.checkNickNm(nickNm);
	}
	
	//이메일 중복검사
	@Override
	public int checkEmail(String email) throws Exception {
		return userDAO.checkEmail(email);
	}
	
}