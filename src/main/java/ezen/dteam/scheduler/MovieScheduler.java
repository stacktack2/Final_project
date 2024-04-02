package ezen.dteam.scheduler;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import ezen.dteam.service.MainSchedulerSVC;
import ezen.dteam.vo.CinemaVO;
import kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService;
import kr.or.kobis.kobisopenapi.consumer.rest.exception.OpenAPIFault;

@Component("TaskScheduler")
public class MovieScheduler {
	
	@Autowired
	MainSchedulerSVC mainSchedulerSVC;
	
	// @Scheduled(cron = " 0 * * * * * ")
	public void dailyResponse() throws OpenAPIFault, Exception {
		
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
			
			// 제작국가명
			JSONArray jsonArrayNationNm = (JSONArray) movieInfo.get("nations");
			JSONObject jsonObjectNationNm = (JSONObject) jsonArrayNationNm.get(0);
			String cnationNm = (String) jsonObjectNationNm.get("nationNm");
			
			
			// 장르명
			JSONArray jsonArrayGenres = (JSONArray) movieInfo.get("genres");
			String cgenreNm = ""; // 문자열로 초기화

			for(int i = 0; i < jsonArrayGenres.size(); i++) {
			    JSONObject jsonGenre = (JSONObject) jsonArrayGenres.get(i);
			    String singleGenre = (String) jsonGenre.get("genreNm");
			    
			    // 기존 장르에 추가하여 쉼표로 구분
			    if (i > 0) {
			        cgenreNm += ", ";
			    }
			    cgenreNm += singleGenre;
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
			String cactorNm = "";
			String cactorNmEn = "";
			for(int i = 0; i < jsonArrayActors.size() && i < 4; i++) {
				JSONObject jsonObjectActors = (JSONObject) jsonArrayActors.get(i);
				String singlePeople = (String) jsonObjectActors.get("peopleNm");
				String singlePeopleEn = (String) jsonObjectActors.get("peopleNmEn");

				if(i > 0) {
					cactorNm += ", ";
					cactorNmEn += ", ";
				}
				cactorNm += singlePeople;
				cactorNmEn += singlePeopleEn;
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
			String crank = (String) movie.get("rank");
			
			cinema.setCcode(ccode);
			cinema.setCname(cname);
			cinema.setCnameEn(cnameEn);
			cinema.setCintro("영화소개입니다");
			cinema.setCprdtYear(cprdtYear);
			cinema.setCshowTime(cshowTime);
			cinema.setCopenDate(copenDate);
			cinema.setCprdtStatNm(cprdtStatNm);
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
	
	
	}
	
	// @Scheduled(cron = " 0 * * * * * ")
	public void movieList() throws OpenAPIFault, Exception {
		
		String key = "7440F54C9RSVVBDG76S6";
		
		LocalDate today = LocalDate.now();
		LocalDate minusTwoMonth = today.minusMonths(1);
		LocalDate plusOneMonth = today.plusMonths(1);
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd"); // 포매터 사용으로 날짜 형식 변환 ex) 20240101 형태로
		String formatMinusMonth = minusTwoMonth.format(formatter);
		String formatPlusMonth = plusOneMonth.format(formatter);
		
		Date StandardToday = new Date();
		
		CinemaVO cinema = new CinemaVO();
		
		try {
			URL url = new URL("http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json2.jsp?"
					+ "collection=kmdb_new2&"
					+ "ServiceKey="+key+"&"
					+ "detail=Y&"
					+ "releaseDts="+formatMinusMonth+"&"
					+ "releaseDte="+formatPlusMonth+"&"
					+ "listCount=10");
			
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
            JSONArray jsonMovieData = (JSONArray) responseJson.get("Data");
            JSONObject jsonObjMovieResult = (JSONObject) jsonMovieData.get(0);
            JSONArray jsonAryMovieResult = (JSONArray) jsonObjMovieResult.get("Result");
            
            for(int i = 0; i < jsonAryMovieResult.size(); i++) {
            	JSONObject jsonMovieResult = (JSONObject) jsonAryMovieResult.get(i);
            	
            	String ccode = (String) jsonMovieResult.get("DOCID"); // 영화 코드
            	String cname = (String) jsonMovieResult.get("title"); // 영화명     	
            	
            	JSONObject jsonPlots = (JSONObject) jsonMovieResult.get("plots");
            	JSONArray jsonAryPlot = (JSONArray) jsonPlots.get("plot");
            	JSONObject jsonObjPlot = (JSONObject) jsonAryPlot.get(0);
            	String cintro = (String) jsonObjPlot.get("plotText"); // 영화 소개
            	
            	String cprdtYear = (String) jsonMovieResult.get("prodYear"); // 제작년도
            	
            	String cshowTime = (String) jsonMovieResult.get("runtime"); // 상영시간
            	
            	String copenDate = (String) jsonMovieResult.get("repRlsDate"); // 개봉일
            	
            	// 개봉, 미개봉
            	SimpleDateFormat simpleFormatter = new SimpleDateFormat("yyyyMMdd");
            	Date openDate = (Date) simpleFormatter.parse(copenDate);
            	String cprdtStatNm = "";
            	if(openDate.before(StandardToday)) {
            		cprdtStatNm = "개봉";
            	}else if(openDate.after(StandardToday)) {
            		cprdtStatNm = "미개봉";
            	}

            	String cnationNm = (String) jsonMovieResult.get("nation"); // 국가
            	
            	String cgenreNm = (String) jsonMovieResult.get("genre"); // 장르
            	
            	// 감독명, 영문명
            	JSONObject jsonObjDirector = (JSONObject) jsonMovieResult.get("directors");
            	JSONArray jsonAryDirector = (JSONArray) jsonObjDirector.get("director");
            	String cdirectorNm = "";
    			String cdirectorNmEn = "";
            	for(int j = 0; j < jsonAryDirector.size(); j++) {
	            	JSONObject jsonDirector = (JSONObject) jsonAryDirector.get(j);
	            	String singleDirector = (String) jsonDirector.get("directorNm");
	            	String singleDirectorEn = (String) jsonDirector.get("directorEnNm");
	            	if(j > 0) {
	            		cdirectorNm += ", ";
	            		cdirectorNmEn += ", ";
					}
	            	cdirectorNm += singleDirector;
	            	cdirectorNmEn += singleDirectorEn;
            	}
            	
            	// 배우명, 영문명
    			JSONObject jsonObjActors = (JSONObject) jsonMovieResult.get("actors");
    			JSONArray jsonAryActor = (JSONArray) jsonObjActors.get("actor");
    			String cactorNm = "";
    			String cactorNmEn = "";
    			for(int k = 0; k < jsonAryActor.size() && k < 4; k++) {
    				JSONObject jsonActor = (JSONObject) jsonAryActor.get(k);
    				String singleActor = (String) jsonActor.get("actorNm");
    				String singleActorEn = (String) jsonActor.get("actorEnNm");

    				if(k > 0) {
    					cactorNm += ", ";
    					cactorNmEn += ", ";
    				}
    				cactorNm += singleActor;
    				cactorNmEn += singleActorEn;
    			}
            	
    			String ccompanyNm = (String) jsonMovieResult.get("company"); // 제작사
    			
    			String cwatchGradeNm = (String) jsonMovieResult.get("rating"); // 관람등급
    			
    			String posters = (String) jsonMovieResult.get("posters");
    			String[] cposters = posters.split("\\|");
    			String cposter = null;
    			for (String poster : cposters) {
    			    if (poster.startsWith("http://")) {
    			    	cposter = poster;
    			        break;
    			    }
    			}
    			
    			System.out.println("영화코드: "+ccode);
    			System.out.println("영화명: "+cname); 
    			System.out.println("영화소개: "+cintro);
    			System.out.println("제작년도: "+cprdtYear);
    			System.out.println("상영시간: "+cshowTime);
    			System.out.println("개봉일: "+copenDate);
    			System.out.println(cprdtStatNm);
    			System.out.println("국가: "+cnationNm);
    			System.out.println("장르: "+cgenreNm);
    			System.out.println(cdirectorNm);
    			System.out.println(cdirectorNmEn);
    			System.out.println(cactorNm);
    			System.out.println(cactorNmEn);
    			System.out.println(ccompanyNm);
    			System.out.println(cwatchGradeNm);
    			System.out.println(cposter);
    			
    			cinema.setCcode(ccode);
    			cinema.setCname(cname);
    			cinema.setCintro(cintro);
    			cinema.setCprdtYear(cprdtYear);
    			cinema.setCshowTime(cshowTime);
    			cinema.setCopenDate(copenDate);
    			cinema.setCprdtStatNm(cprdtStatNm);
    			cinema.setCnationNm(cnationNm);
    			cinema.setCgenreNm(cgenreNm);
    			cinema.setCdirectorNm(cdirectorNm);
    			cinema.setCdirectorNmEn(cdirectorNmEn);
    			cinema.setCactorNm(cactorNm);
    			cinema.setCactorNmEn(cactorNmEn);
    			cinema.setCcompanyNm(ccompanyNm);
    			cinema.setCwatchGradeNm(cwatchGradeNm);
    			cinema.setCposter(cposter);
    			
    			int result = mainSchedulerSVC.upsertDailyBoxOffice(cinema);
    			
            }
            
            
		} catch(IOException e){
			e.printStackTrace();
		}
		
		
	}
}
