package ezen.dteam.service;

import java.util.List;

import ezen.dteam.vo.CinemaReplyVO;
import ezen.dteam.vo.CinemaVO;

public interface MovieSVC {
	public CinemaVO selectMovieDetail(String ccdoe) throws Exception;
	public List<CinemaReplyVO> selectReplyCcode(String ccode) throws Exception;
}
