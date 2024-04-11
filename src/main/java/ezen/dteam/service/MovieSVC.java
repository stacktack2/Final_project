package ezen.dteam.service;

import java.util.List;

import ezen.dteam.vo.CinemaReplyVO;
import ezen.dteam.vo.CinemaVO;

public interface MovieSVC {
	public List<CinemaVO> selectBoxOfficeCinema();
	public List<CinemaVO> selectUnopen();
	public CinemaVO selectMovieDetail(String cno) throws Exception;
	public List<CinemaReplyVO> selectReplyCno(String cno) throws Exception;
	public int insertReply(CinemaReplyVO vo) throws Exception;
	public int updateReply(CinemaReplyVO vo) throws Exception;
	public int deleteReply(String ccmtno) throws Exception;
}
