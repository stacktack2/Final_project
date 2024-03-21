<%@page import="kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String key = "8fc3aeff3e2ecdfae9b0a2b2c6b9f883";

	KobisOpenAPIRestService kobisService = new KobisOpenAPIRestService(key);
	
	/* 일일 바그소이픗 호출 메소드의 파라미터
		getDailyBoxOffice(boolean isJson, 
						String targetDt, 
						String itemPerPage,
						String multiMovieYn, 
						String repNationCd, 
						String wideAreaCd)
	*/
	
	
	String dailyResponse = kobisService.getDailyBoxOffice(true, targetDt, itemPerPage, multiMovieYn, repNationCd, WideAreaCd);

%>