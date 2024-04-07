<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>예매 | 영화속으로 Dflix</title>
    <!-- CSS -->
    <%@ include file="../include/header/ticketingHeader.jsp" %>
    <script>
	    let cno =0; //영화번호 
	    let tno = 0;
	    
	    function selCno(value){
	    	cno = value;
	    }
	    
	    function selTno(value){
	    	tno = value;
	    	
	    	if(cno >0 && tno>0){
	    		console.log("cno:"+cno+",tno:"+tno);
	    		/*$.ajax({
	    			url :'', //  상영시간 목록 조회 경로
	    			type:'get',
	    			data:{cno : cno, shallno : shallno},
	    			success:function(data){
	    				//data에는 상영시간 목록 담겨 있음
	    				let html = ''
	    				
	    				//innerHTML
	    				
	    			}
	    		});
	    		*/
	    	}
	    }
	    
	    
    
    </script>
  </head>
<body>
<%@ include file="../include/nav/userNav.jsp" %>
	<!-- contanier -->
	<div id="tikect-container">
		<!-- 네비 -->
		<div class="tk-navi">
			<div class="right">
				<a class="button-schedule" href="<%=request.getContextPath()%>/theater">
					<span>상영시간표</span>
				</a>
				<a href="" class="button-reset" onclick="return false;">
					<span>예매 다시하기</span>
				</a>
			</div>
		</div>
		<!-- 섹션 -->
		<div class="tk-section">
			<!-- 섹션 movie -->
			<div class="tk-section-movie">
				<!-- movie 헤드 -->
				<div class="section-movie-head">
					<h3 class="">영화</h3>
				</div>
				<!-- movie 바디 -->
				<div class="section-movie-body">
					<div class="movie-body-select">
						<div class="sortmenu">
							<a href="" onclick="rankSelect();return false;" 
								id="rank" class="rank-select background-on">예매율순</a>
							<a href="" onclick="abcSelect();return false;" 
								id="abc" class="abc-select">가나다순</a>
						</div>
						<div class="movie-list">
							<ul class="movie-list-ul">
								<c:forEach items="${movie }" var="movie">
								<li class="">
									<a href="javascript:selCno(${movie.cno})" title="${moive.cname }">
										<i class="movieAge">${movie.cwatchGradeNm }</i>
										<span class="text">${movie.cname }</span>
										<span class="sreader" style="hidden">${movie.ccode }</span>
									</a>
								</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- 섹션 theater -->
			<div class="tk-section-theater">
				<!-- theater 헤드 -->
				<div class="section-theater-head">
					<h3 class="">극장</h3>
				</div>
				<!-- theater 바디 -->
				<div class="section-theater-body">
					<div class="theater-body-select">
						<div class="theater-list">
							<ul class="theater-list-ul">
								<c:forEach items="${theater }" var="theater">
								<li class="">
									<a href="javascript:selTno(${theater.tno })" title="${theater.tname }">
										<span class="text">${theater.tname }</span>
										<span class="sreader" style="hidden">${theater.tno }</span>
									</a>
								</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- 섹션 date -->
			<div class="tk-section-date">
				<!-- date 헤드 -->
				<div class="section-date-head">
					<h3 class="">날짜</h3>
				</div>
				<!-- date 바디 -->
				<div class="section-date-body">
					<div class="date-body-select">
						<div class="date-list">
							<ul class="date-list-ul">
								<!-- 여기에 2주짜리 달력이 생깁니다. -->
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- 섹션 time -->
			<div class="tk-section-time">
				<!-- time 헤드 -->
				<div class="section-time-head">
					<h3 class="">시간</h3>
				</div>
				<!-- time 바디 -->
				<div class="section-time-body">
					<div class="time-body-select">
						<div class="time-option">
							<span class="morning">모닝</span>
							<span class="night">심야</span>
						</div>
						<div class="time-list">
							<!-- ajax로 상영관이 나타납니다. -->
							<span class="floor">극장을 선택해주시기 바랍니다.</span>
						</div>
					</div>
				</div>
			</div>
		</div>
			<!-- 진행버튼 -->
			<div id="ticket_tnb" class="tnb_container">
				<div class="tnb">
					<div class="info movie">
						<span class="movie_poster">
						</span>
						<div class="row movie_title colspan2" style="display: block;">
							<span class="data letter-spacing-min ellipsis-line2">
								<a href="http://www.cgv.co.kr/movies/detail-view/?midx=87947" 
									title="듄-파트2" id="selectionMovieTitle"></a>
							</span>
						</div>
						<!-- 무비타입은 선택값에서 못 받아오기때문에 영화데이터 api에서 받아온 값을 입력. -->
						<div class="row movie_type" style="display: block;">
							<span class="data ellipsis-line1" title="4DX 2D">4DX 2D</span>
						</div>
						<!-- 무비타입과 동일하게 관람제한나이도 api에서 받아온 값을 입력해야함. -->
						<div class="row movie_rating" style="display: block;">
							<span class="data" title="12세 관람가">12세 관람가</span>
						</div>
						<div class="placeholder" title="영화선택" style="display: none;"></div>
					</div>
					<div class="info theater">
						<div class="row name" style="display: block;">
							<span class="header">극장</span>
							<span class="data letter-spacing-min ellipsis-line1">
								<a title="CGV 구로" id="selectionTheater"></a>
							</span>
						</div>
						<div class="row date" style="display: block;">
							<span class="header">일시</span>
							<span class="data" title="2024.3.21(목) 12:50"><a>2024.3.21(목)</a> <a>12:50</a></span>
						</div>
						<div class="row screen" style="display: block;">
							<span class="header">상영관</span>
							<span class="data" title="10관 8층 (Laser)">10관 8층 (Laser)</span>
						</div>
						<div class="row number" style="display: block;">
							<span class="header">인원</span>
							<span class="data">2명</span>
						</div>
						<div class="placeholder" title="극장선택" style="display: none;"></div>
					</div>
				<div class="info path">
					<div class="row colspan4">
						<span class="path-step2" title="좌석선택">&nbsp;</span>
						<span class="path-step3" title="결제">&nbsp;</span>
					</div>
				</div>
				<a onclick="seatSelectionButton(); return false;"
					href="<%=request.getContextPath() %>/ticket/ticketSeat"
					class="btn-right" id="seatSelectionButton">
					<span>좌석선택</span>
				</a>
				</div>
			</div>
	</div>
<%@ include file="../include/footer/userFooter.jsp" %>
<script src="<%=request.getContextPath() %>/resources/js/ticketing_event.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/ticketing_view.js"></script>
</body>
</html>