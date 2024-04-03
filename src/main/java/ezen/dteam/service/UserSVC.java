package ezen.dteam.service;

public interface UserSVC {
	public int checkId(String id) throws Exception;
	public int checkNickNm(String nickNm) throws Exception;
	public int checkEmail(String email) throws Exception;
}
