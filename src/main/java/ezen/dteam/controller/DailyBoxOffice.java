package ezen.dteam.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService;
import kr.or.kobis.kobisopenapi.consumer.rest.exception.OpenAPIFault;

@Controller
public class DailyBoxOffice {
	
		@RequestMapping(value = "/api/daily")
		public String dailyBoxOffice(HttpServletRequest request) {
			
			// 현재 날짜
			LocalDate today = LocalDate.now();
			// 현재 날짜에서 하루 전
			LocalDate yesterday = today.minusDays(1);
			
			// 포매터 사용으로 날짜 형식 변환 ex) 20240101 형태로
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
			String formatYesterDay = yesterday.format(formatter);
			
			System.out.println(formatYesterDay);
			
			// 파라미터 설정
			// 조회일자
			String targetDt = request.getParameter("targetDt") == null?formatYesterDay:request.getParameter("targetDt");
			// Main에 결과 출력 수 
			String itemPerPage = request.getParameter("itemPerPage") == null?"6":request.getParameter("itemPerPage");
			// 영화 조회 다양성 영화: "Y" / 상업영화: "N" (default:전체)
			String multiMovieYn = request.getParameter("multiMovieYn") == null?"":request.getParameter("multiMovieYn");
			// 영화 조회 한국영화: "K" / 외국영화: "F" (default:전체)
			String repNationCd = request.getParameter("repNationCd") == null?"":request.getParameter("repNationCd");
			// "0105000000" 로서 조호된 지역코드
			String wideAreaCd = request.getParameter("wideAreaCd") == null?"":request.getParameter("wideAreaCd");
			
			// 발급키
			String key = "8fc3aeff3e2ecdfae9b0a2b2c6b9f883";
			KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);
			
			try {
				String dailyBoxOffice = service.getDailyBoxOffice(true, targetDt, itemPerPage, multiMovieYn, repNationCd, wideAreaCd);
				System.out.println(dailyBoxOffice);
			} catch (OpenAPIFault e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}
}
