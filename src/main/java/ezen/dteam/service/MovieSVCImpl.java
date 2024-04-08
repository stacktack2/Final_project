package ezen.dteam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.dteam.dao.MovieDAO;
import ezen.dteam.vo.CinemaReplyVO;
import ezen.dteam.vo.CinemaVO;

@Service
public class MovieSVCImpl implements MovieSVC{
	
	@Autowired
	MovieDAO movieDAO;
	
	//영화 상세정보 조회
	@Override
	public CinemaVO selectMovieDetail(String cno) throws Exception {
		return movieDAO.selectMovieDetail(cno);
	}
	//댓글 목록 조회
	@Override
	public List<CinemaReplyVO> selectReplyCno(String cno){
		return movieDAO.selectReplyCno(cno);
	}
	//댓글 작성
	public int insertReply(CinemaReplyVO vo) {
		return movieDAO.insertReply(vo);
	}
	//댓글 수정
	public int updateReply(CinemaReplyVO vo) {
		return movieDAO.updateReply(vo);
	}
	//댓글 삭제
	public int deleteReply(String ccmtno) {
		return movieDAO.deleteReply(ccmtno);
	}
}