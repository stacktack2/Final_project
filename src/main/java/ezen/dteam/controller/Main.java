package ezen.dteam.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ezen.dteam.service.MainSVC;
import ezen.dteam.service.MainSchedulerSVC;
import ezen.dteam.vo.CinemaVO;
import kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService;
import kr.or.kobis.kobisopenapi.consumer.rest.exception.OpenAPIFault;

/**
 * Handles requests for the application home page.
 */
@Controller
public class Main {

	@Autowired
	MainSVC mainService;
	
	@Autowired
	MainSchedulerSVC mainSchedulerSVC;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest request, HttpServletResponse response) throws OpenAPIFault, Exception {
		
		List<CinemaVO> movieChart = mainService.selectBoxOfficeCinema();
		
		model.addAttribute("movieChart", movieChart);
		
		
		LocalDate today = LocalDate.now();
		LocalDate yesterday = today.minusDays(1);
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd"); // 포매터 사용으로 날짜 형식 변환 ex) 20240101 형태로
		String formatYesterDay = yesterday.format(formatter);
		
		// 파라미터 설정
		String targetDt = formatYesterDay;// 조회일자
		String itemPerPage = "6";// Main에 결과 출력 수 
		String multiMovieYn = "";// 영화 조회 다양성 영화: "Y" / 상업영화: "N" (default:전체)
		String repNationCd = "";// 영화 조회 한국영화: "K" / 외국영화: "F" (default:전체)
		String wideAreaCd = "";// "0105000000" 로서 조호된 지역코드
		String key = "8fc3aeff3e2ecdfae9b0a2b2c6b9f883"; // 발급키
		KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);
		String dailyResponse = service.getDailyBoxOffice(true, targetDt, itemPerPage, multiMovieYn, repNationCd, wideAreaCd); // 라이브러리 메소드를 이용한 url 요청
		
		JSONParser jsonParser = new JSONParser();// json으로 키, 값 받아와서 데이터로 저장하는 방법
				
		// 처음 dailyResponse를 String으로 받았기 때문에 objectMapper로 받아서 변환할 필요가 없음.
		JSONObject jsonObject = (JSONObject) jsonParser.parse(dailyResponse);
				
		// dailyResponse의 boxOfficeResult값 받아오기 : 1depth
		JSONObject jsonBoxOfficeResult = (JSONObject) jsonObject.get("boxOfficeResult");
				
		// boxOfficeResult의 dailyBoxOfficeList값 받아오기 : 2depth
		JSONArray jsonDailyBoxOfficeList = (JSONArray) jsonBoxOfficeResult.get("dailyBoxOfficeList");
				
		String movieCd = null;
		String strMovieInfoResult = null;
		
		CinemaVO cinema = new CinemaVO();
				
		// jsonDailyBoxOfficeList에서 movieCd값들만 JSONObject로 받아오기
		for(Object obj : jsonDailyBoxOfficeList) {
			// json object에 저장
			JSONObject movie = (JSONObject) obj;
			
			// movieCd String변환
			movieCd = (String) movie.get("movieCd");
			strMovieInfoResult = service.getMovieInfo(true, movieCd);
			
			// String을 다시 json으로 변환
			JSONObject jsonMovieInfoResult = (JSONObject) jsonParser.parse(strMovieInfoResult);
			
			// movieInfoResult key값 조회
			JSONObject movieInfoResult = (JSONObject) jsonMovieInfoResult.get("movieInfoResult");
			
			// movieInfoResult에서 movieInfo key값 조회
			JSONObject movieInfo = (JSONObject)	 movieInfoResult.get("movieInfo");
			
			String ccode = (String) movieInfo.get("movieCd"); // 영화코드
			String cname = (String) movieInfo.get("movieNm"); // 영화제목
			String cnameEn = (String) movieInfo.get("movieNmEn"); // 영화제목영문
			// 영화소개는 없음(cinema DB는 자유입력)
			String cprdtYear = (String) movieInfo.get("prdtYear"); // 제작년도
			String cshowTime = (String) movieInfo.get("showTm"); // 상영시간
			String copenDate = (String) movieInfo.get("openDt"); // 개봉연도
			String cprdtStatNm = (String) movieInfo.get("prdtStatNm"); // 제작상태
			String ctypeNm = (String) movieInfo.get("typeNm"); // 영화유형
			
			// 제작국가명
			JSONArray jsonArrayNationNm = (JSONArray) movieInfo.get("nations");
			JSONObject jsonObjectNationNm = (JSONObject) jsonArrayNationNm.get(0);
			String cnationNm = (String) jsonObjectNationNm.get("nationNm");
			
			
			// 장르명
			JSONArray jsonArrayGenres = (JSONArray) movieInfo.get("genres");
			List<String> cgenreNm = new ArrayList<String>();
			for(int i = 0; i < jsonArrayGenres.size(); i++) {
				JSONObject jsonGenre = (JSONObject) jsonArrayGenres.get(i);
				String genreNms = (String) jsonGenre.get("genreNm");
				cgenreNm.add(genreNms);	
			}
			
			
			// 감동명, 영문명
			JSONArray jsonArrayDirectors = (JSONArray) movieInfo.get("directors");
			String cdirectorNm = "";
			String cdirectorNmEn = "";
			for(int i = 0; i < jsonArrayDirectors.size(); i++) {
				JSONObject jsonObjectDifrector = (JSONObject) jsonArrayDirectors.get(i);
				cdirectorNm = (String) jsonObjectDifrector.get("peopleNm");
				cdirectorNmEn = (String) jsonObjectDifrector.get("peopleNmEn");
			}
			
			
			// 배우명, 영문명
			JSONArray jsonArrayActors = (JSONArray) movieInfo.get("actors");
			List<String> cactorNm = new ArrayList<String>();
			List<String> cactorNmEn = new ArrayList<String>();
			for(int i = 0; i < jsonArrayActors.size() && i < 4; i++) {
				JSONObject jsonObjectActors = (JSONObject) jsonArrayActors.get(i);
				String peopleNm = (String) jsonObjectActors.get("peopleNm");
				String peopleNmEn = (String) jsonObjectActors.get("peopleNmEn");
				cactorNm.add(peopleNm);
				cactorNmEn.add(peopleNmEn);
			}
			
			
			// 영화사명
			JSONArray jsonArrayCompanys = (JSONArray) movieInfo.get("companys");
			JSONObject jsonObjectCompany = (JSONObject) jsonArrayCompanys.get(0);
			String ccompanyNm = (String) jsonObjectCompany.get("companyNm");
			
			
			// 영화사명 영문
			JSONObject jsonObjectCompanyEn = (JSONObject) jsonArrayCompanys.get(0);
			String ccompanyNmEn = (String) jsonObjectCompanyEn.get("companyNmEn");
			
			// 영화 관람등급
			JSONArray jsonArrayAudits = (JSONArray) movieInfo.get("audits");
			JSONObject jsonObjectWatchGradeNm = (JSONObject) jsonArrayAudits.get(0);
			String cwatchGradeNm = (String) jsonObjectWatchGradeNm.get("watchGradeNm");
			
			// rank
			int crank = Integer.parseInt((String) movie.get("rank"));
			
			cinema.setCcode(ccode);
			cinema.setCname(cname);
			cinema.setCnameEn(cnameEn);
			cinema.setCintro("영화소개입니다");
			cinema.setCprdtYear(cprdtYear);
			cinema.setCshowTime(cshowTime);
			cinema.setCopenDate(copenDate);
			cinema.setCprdtStatNm(cprdtStatNm);
			cinema.setCtypeNm(ctypeNm);
			cinema.setCnationNm(cnationNm);
			cinema.setCgenreNm(cgenreNm);
			cinema.setCdirectorNm(cdirectorNm);
			cinema.setCdirectorNmEn(cdirectorNmEn);
			cinema.setCactorNm(cactorNm);
			cinema.setCactorNmEn(cactorNmEn);
			cinema.setCcompanyNm(ccompanyNm);
			cinema.setCcompanyNmEn(ccompanyNmEn);
			cinema.setCwatchGradeNm(cwatchGradeNm);
			cinema.setCrank(crank);
			
			System.out.println(ccode);
			System.out.println(cname);
			System.out.println(cnameEn);
			System.out.println(cprdtYear);
			System.out.println(cshowTime);
			System.out.println(copenDate);
			System.out.println(cprdtStatNm);
			System.out.println(ctypeNm);
			System.out.println(cnationNm);
			System.out.println(cgenreNm);
			System.out.println(cdirectorNm);
			System.out.println(cdirectorNmEn);
			System.out.println(cactorNm);
			System.out.println(cactorNmEn);
			System.out.println(ccompanyNm);
			System.out.println(ccompanyNmEn);
			System.out.println(cwatchGradeNm);
			System.out.println(crank);
			
			int result = mainSchedulerSVC.upsertDailyBoxOffice(cinema);
		}
		
		
		return "index";
	}

} 