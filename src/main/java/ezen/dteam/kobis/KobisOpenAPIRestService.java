package ezen.dteam.kobis;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

import org.apache.tomcat.util.json.JSONParser;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class KobisOpenAPIRestService {
	
	@RequestMapping(value="/movie/data.do")
    public String getMovieInfo(Model model) {
		
		String key = "8fc3aeff3e2ecdfae9b0a2b2c6b9f883";
		
		String result = "";
		try {

    		URL url = new URL("http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key="
    				+ key + "&movieCd=20124039");

    		BufferedReader bf;

    		bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

    		result = bf.readLine();

    		/*
    		 	JsonParser: JSON 데이터를 파싱하여 객체나 배열로 변환
				
				메소드
				parse(String json): JSON 문자열을 파싱하여 JsonObject 또는 JsonArray 객체로 변환
				parse(Reader json): JSON 문자열을 파싱하여 JsonObject 또는 JsonArray 객체로 변환
				parse(InputStream json): JSON 문자열을 파싱하여 JsonObject 또는 JsonArray 객체로 변환
				
				JsonObject: JSON 데이터에서 중괄호 {}로 둘러싸인 객체
				JsonArray: 대괄호 []로 둘러싸인 배열 
    		 */
    		
        	JSONParser jsonParser = new JSONParser(result);
        	JSONObject jsonObject = (JSONObject)jsonParser.parse();
        	JSONObject movieInfoResult = (JSONObject)jsonObject.get("movieInfoResult");
        	JSONObject movieInfo = (JSONObject)movieInfoResult.get("movieInfo");

        	JSONArray nations = (JSONArray)movieInfo.get("nations");
        	JSONObject nations_nationNm = (JSONObject)nations.get(0);

        	JSONArray directors = (JSONArray)movieInfo.get("directors");
        	JSONObject directors_peopleNm = (JSONObject)directors.get(0);

        	JSONArray genres = (JSONArray)movieInfo.get("genres");

        	JSONArray actors = (JSONArray)movieInfo.get("actors");

        	System.out.println("영화코드 : " + movieInfo.get("movieCd"));
        	System.out.println("영화명(한글) : " + movieInfo.get("movieNm"));
        	System.out.println("영화명(영문) : " + movieInfo.get("movieNmEn"));
        	System.out.println("재생시간 : " + movieInfo.get("showTm"));
        	System.out.println("개봉일 : " + movieInfo.get("openDt"));
        	System.out.println("영화유형 : " + movieInfo.get("typeNm"));
        	System.out.println("제작국가명 : " + nations_nationNm.get("nationNm"));
       	
        	String genreNm = "";
       	
        	for(int i = 0; i < genres.size(); i++) {
            	JSONObject genres_genreNm = (JSONObject)genres.get(i);
            	genreNm += genres_genreNm.get("genreNm") + " ";
        	}

        	System.out.println("장르 : " + genreNm);
        	System.out.println("감독명 : " + directors_peopleNm.get("peopleNm"));
       	
        	String peopleNm = "";
       	
        	for(int i = 0; i < actors.size(); i++) {
        		JSONObject actors_peopleNm = (JSONObject)actors.get(i);
        		peopleNm += actors_peopleNm.get("peopleNm") + " ";
        		peopleNm = peopleNm + actors_peopleNm.get("peopleNm") + " ";
        	}
       	
        	System.out.println("출연배우 : " + peopleNm);

        	
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
		
		return "movie/restService";
	}
}
