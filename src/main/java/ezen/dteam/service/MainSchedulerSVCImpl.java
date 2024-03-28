package ezen.dteam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.dteam.dao.MainSchedulerDAO;
import ezen.dteam.vo.CinemaVO;

@Service
public class MainSchedulerSVCImpl implements MainSchedulerSVC {
	
	@Autowired
	MainSchedulerDAO mainSchedulerDAO;
	
	@Override
	public int upsertDailyBoxOffice(CinemaVO cinema) {
		
		
		
		return mainSchedulerDAO.upsertDailyBoxOffice(cinema);
	}

}
