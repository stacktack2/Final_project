package ezen.dteam.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.databind.ObjectMapper;

import ezen.dteam.vo.CinemaVO;
import kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService;
import kr.or.kobis.kobisopenapi.consumer.rest.exception.OpenAPIFault;

/**
 * Handles requests for the application home page.
 */
@Controller
public class Main {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	@GetMapping("/")
	public String home(Model model, HttpServletRequest request, HttpServletResponse response) throws OpenAPIFault, Exception {
		
		LocalDate today = LocalDate.now();
		// 현재 날짜에서 하루 전
		LocalDate yesterday = today.minusDays(1);
		
		// 포매터 사용으로 날짜 형식 변환 ex) 20240101 형태로
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
		String formatYesterDay = yesterday.format(formatter);
		
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
			
		// 라이브러리 메소드를 이용한 url 요청
		String dailyResponse = service.getDailyBoxOffice(true, targetDt, itemPerPage, multiMovieYn, repNationCd, wideAreaCd);
		
		// json으로 키, 값 받아와서 데이터로 저장하는 방법
		JSONParser jsonParser = new JSONParser();
		
		// 처음 dailyResponse를 String으로 받았기 때문에 objectMapper로 받아서 변환할 필요가 없음.
		JSONObject jsonObject = (JSONObject) jsonParser.parse(dailyResponse);
		
		// dailyResponse의 boxOfficeResult값 받아오기 : 1depth
		JSONObject jsonBoxOfficeResult = (JSONObject) jsonObject.get("boxOfficeResult");
		
		// boxOfficeResult의 dailyBoxOfficeList값 받아오기 : 2depth
		JSONArray jsonDailyBoxOfficeList = (JSONArray) jsonBoxOfficeResult.get("dailyBoxOfficeList");
		
		// index로 movieChart값 request
		request.setAttribute("movieChart", jsonDailyBoxOfficeList);
		
		String movieCd = null;
		String strMovieInfoResult = null;
		
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
			System.out.println(movieInfo);
			
			String ccode = movieInfo.get("movieCd").toString(); // 영화코드
			Object cname = movieInfo.get("movieNm"); // 영화제목
			Object cnameEn = movieInfo.get("movieNmEn"); // 영화제목영문
			// 영화소개는 없음(cinema DB는 자유입력)
			Object cprdtYear = movieInfo.get("prdtYear"); // 제작년도
			Object cshowTmime = movieInfo.get("showTm"); // 상영시간
			Object copenDate = movieInfo.get("openDt"); // 개봉연도
			Object cprdtStatNm = movieInfo.get("prdtStatNm"); // 제작상태
			Object ctypeNm = movieInfo.get("typeNm"); // 영화유형
			
			JSONArray jsonArrayNationNm = (JSONArray) movieInfo.get("nations");
			JSONObject jsonObjectNationNm = (JSONObject) jsonArrayNationNm.get(0);
			Object cnationNm = jsonObjectNationNm.get("nationNm"); // 제작국가명
			
			JSONArray jsonArrayGenres = (JSONArray) movieInfo.get("genres");
			for(int i = 0; i <= jsonArrayGenres.size(); i++) {
				JSONObject jsonObjectGenreNm = (JSONObject) jsonArrayGenres.get(i);
				
//				JSONObject jsonObjectGenreNm1 = (JSONObject) jsonArrayGenres.get(0);
//				JSONObject jsonObjectGenreNm2 = (JSONObject) jsonArrayGenres.get(1);
			}
//			Object genreNm1 = jsonObjectGenreNm1.get("genreNm"); // 영화장르1
//			Object genreNm2 = jsonObjectGenreNm2.get("genreNm"); // 영화장르2
//			Map<String, String> genreNm = new HashMap<String, String>();
//			genreNm.put("", (String) genreNm1);
//			genreNm.put("", (String) genreNm2);
			
			
			
			System.out.println(ccode.toString());
			System.out.println(cname.toString());
			System.out.println(cnameEn.toString());
			System.out.println(cprdtYear.toString());
			System.out.println(cshowTmime.toString());
			System.out.println(copenDate.toString());
			System.out.println(cprdtStatNm.toString());
			System.out.println(ctypeNm.toString());
			System.out.println(cnationNm.toString());
			
			
		}
		
		

		
		return "index";
	}

}