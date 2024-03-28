package ezen.dteam.service;

import ezen.dteam.vo.CinemaVO;

public interface MainSchedulerSVC {

	int upsertDailyBoxOffice(CinemaVO cinema);
}
