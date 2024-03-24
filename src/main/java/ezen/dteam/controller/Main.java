package ezen.dteam.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService;
import kr.or.kobis.kobisopenapi.consumer.rest.exception.OpenAPIFault;

/**
 * Handles requests for the application home page.
 */
@Controller
public class Main {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest request, HttpServletResponse response) throws OpenAPIFault, Exception {
		
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
			
		// 라이브러리 메소드를 이용한 url 요청
		String dailyResponse = service.getDailyBoxOffice(true, targetDt, itemPerPage, multiMovieYn, repNationCd, wideAreaCd);
			
		// JSON parser로 객체로 변환에서 object에 담아주기
		
		/*
		ObjectMapper mapper = new ObjectMapper();
		
		HashMap<String, Object> dailyResult = mapper.readValue(dailyResponse, HashMap.class);
		
		
		Set<String> keySet = dailyResult.keySet();
		
		System.out.println("test");
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonBoxOfficeResult = (JSONObject)jsonParser.parse((String) dailyResult.get("boxOfficeResult"));
		JSONObject jsonDailyBoxOfficeList = (JSONObject) jsonBoxOfficeResult.get("dailyBoxOfficeList");
		Object rank = jsonDailyBoxOfficeList.get("rank");
		System.out.println(rank);
		*/
//		ObjectMapper mapper = new ObjectMapper();
//		
//		String json = mapper.writeValueAsString(dailyResponse.trim());
		
		JSONParser jsonParser = new JSONParser();
		
		JSONObject jsonObject = (JSONObject) jsonParser.parse(dailyResponse);
		
		// dailyResponse의 boxOfficeResult값 받아오기 : 1depth
		JSONObject jsonBoxOfficeResult = (JSONObject) jsonObject.get("boxOfficeResult");
		System.out.println(jsonBoxOfficeResult.toString());
		
		// boxOfficeResult의 dailyBoxOfficeList값 받아오기 : 2depth
		JSONArray jsonDailyBoxOfficeList = (JSONArray) jsonBoxOfficeResult.get("dailyBoxOfficeList");
		System.out.println(jsonDailyBoxOfficeList.toString());
		
		JSONObject movieChart1 = (JSONObject) jsonDailyBoxOfficeList.get(0);
		JSONObject movieChart2 = (JSONObject) jsonDailyBoxOfficeList.get(1);
		JSONObject movieChart3 = (JSONObject) jsonDailyBoxOfficeList.get(2);
		JSONObject movieChart4 = (JSONObject) jsonDailyBoxOfficeList.get(3);
		JSONObject movieChart5 = (JSONObject) jsonDailyBoxOfficeList.get(4);
		JSONObject movieChart6 = (JSONObject) jsonDailyBoxOfficeList.get(5);
		
		
		
//		Object rnum1 = jsonDailyBoxOfficeList.get("dailyBoxOfficeList").toString();
//		System.out.println(rnum1);
		
		

		return "index";
	}

}
