package ezen.dteam.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ezen.dteam.kobis.ObjectMapper;
import kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService;
import kr.or.kobis.kobisopenapi.consumer.rest.exception.OpenAPIFault;

/**
 * Handles requests for the application home page.
 */
@Controller
public class Main {
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest request, HttpServletResponse response) {
		
		/*
		 * Date today = new Date(); System.out.println(today);
		 * 
		 * SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
		 * System.out.println(dateFormat.format(today));
		 * 
		 * // 파라미터 설정 // 조회 일자 String targetDt = request.getParameter("targetDt") ==
		 * null?dateFormat.format(today):request.getParameter("targetDt"); // 결과 수
		 * String itemPerPage = request.getParameter("itemPerPage") ==
		 * null?"10":request.getParameter("itemPerPage"); // “Y” : 다양성 영화 “N” : 상업영화
		 * (default : 전체) String multiMovieYn = request.getParameter("multiMovieYn") ==
		 * null?"":request.getParameter("multiMovieYn"); // “K: : 한국영화 “F” : 외국영화
		 * (default : 전체) String repNationCd = request.getParameter("repNationCd") ==
		 * null?"":request.getParameter("repNationCd"); // 상영지역별로 조회할 수 있으며, 지역코드는 공통코드
		 * 조회 서비스에서 “0105000000” 로서 조회된 지역코드입니다. (default : 전체) String wideAreaCd =
		 * request.getParameter("wideAreaCd") ==
		 * null?"":request.getParameter("wideAreaCd");
		 * 
		 * 
		 * // 인증키(영화진흥위원회에서 제공해주는 개인키 / 영화진흥위원회 = kobis) String key =
		 * "8fc3aeff3e2ecdfae9b0a2b2c6b9f883";
		 * 
		 * // kobis 오픈 api REST Client를 통해 호출 KobisOpenAPIRestService kobisService = new
		 * KobisOpenAPIRestService(key);
		 * 
		 * try { // 일일 박스오피스 서비스 호출 String dailyResponse =
		 * kobisService.getDailyBoxOffice(true, targetDt, itemPerPage, multiMovieYn,
		 * repNationCd, wideAreaCd);
		 * 
		 * // Json 라이브러리를 통해 handling ObjectMapper mapper = new ObjectMapper();
		 * HashMap<String, Object> dailyResult = mapper.readValue(dailyResponse,
		 * HashMap.class);
		 * 
		 * } catch (OpenAPIFault e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); } catch (Exception e) { // TODO Auto-generated catch
		 * block e.printStackTrace(); }
		 */
		
		return "index";
	}
	

	
}
