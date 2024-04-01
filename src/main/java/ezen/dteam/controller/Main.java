package ezen.dteam.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ezen.dteam.scheduler.DailyBoxOfficeScheduler;
import ezen.dteam.service.MainSVC;
import ezen.dteam.service.MainSchedulerSVC;
import ezen.dteam.vo.CinemaVO;
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
	
	@Autowired
	DailyBoxOfficeScheduler dailyBoxOfficeScheduler;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest request, HttpServletResponse response) throws OpenAPIFault, Exception {
		
		List<CinemaVO> movieChart = mainService.selectBoxOfficeCinema();
		
		model.addAttribute("movieChart", movieChart);
		
		// dailyBoxOfficeScheduler.dailyResponse();
		
		return "index";
	}
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Model model, HttpServletRequest request, HttpServletResponse response) throws OpenAPIFault, Exception {
		
		String key = "7440F54C9RSVVBDG76S6";
		
		LocalDate today = LocalDate.now();
		LocalDate minusTwoMonth = today.minusMonths(1);
		LocalDate plusOneMonth = today.plusMonths(1);
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd"); // 포매터 사용으로 날짜 형식 변환 ex) 20240101 형태로
		String formatMinusMonth = minusTwoMonth.format(formatter);
		String formatPlusMonth = plusOneMonth.format(formatter);
				
		System.out.println(formatMinusMonth);
		System.out.println(formatPlusMonth);
		
		try {
			URL url = new URL("http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json2.jsp?"
					+ "collection=kmdb_new2&"
					+ "ServiceKey="+key+"&"
					+ "detail=N&"
					+ "releaseDts="+formatMinusMonth+"&"
					+ "releaseDte="+formatPlusMonth+"&"
					+ "listCount=100");
			
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Accept", "application/json");

            if (conn.getResponseCode() != 200) {
                throw new RuntimeException("Failed : HTTP error code : " + conn.getResponseCode());
            }

            BufferedReader br = new BufferedReader(new InputStreamReader((conn.getInputStream())));
            StringBuilder responseBuilder = new StringBuilder();
            String line;
            
            while ((line = br.readLine()) != null) {
                responseBuilder.append(line);
            }

            conn.disconnect();
            
            JSONParser jsonParser = new JSONParser();
            JSONObject responseJson = (JSONObject) jsonParser.parse(responseBuilder.toString());
            System.out.println(responseJson);
            
		} catch(IOException e){
			e.printStackTrace();
		}
		
		
		
		return "test";
	}

} 