<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>예매 | 영화속으로 Dflix</title>
    <!-- CSS -->
    <%@ include file="../include/header/ticketingHeader.jsp" %>
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
				<a class="button-reset">
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
								<li class="">
									<a href="#" onclick="return false;" title="듄-파트2">
										<i class="movieAge">12</i>
										<span class="text">듄-파트2</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="">
									<a href="#" onclick="return false;" title="듄-파트2">
										<i class="movieAge">all</i>
										<span class="text">듄-파트22222</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="">
									<a href="#" onclick="return false;" title="듄-파트2">
										<i class="movieAge">15</i>
										<span class="text">듄-파트2123123</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="">
									<a href="#" onclick="return false;" title="듄-파트2">
										<i class="movieAge">18</i>
										<span class="text">듄-파트2123123123</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="">
									<a href="#" onclick="return false;" title="듄-파트2">
										<i class="movieAge">12</i>
										<span class="text">듄-파트2</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="">
									<a href="#" onclick="return false;" title="듄-파트2">
										<i class="movieAge">all</i>
										<span class="text">듄-파트22222</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="">
									<a href="#" onclick="return false;" title="듄-파트2">
										<i class="movieAge">15</i>
										<span class="text">듄-파트2123123</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="">
									<a href="#" onclick="return false;" title="듄-파트2">
										<i class="movieAge">18</i>
										<span class="text">듄-파트2123123123</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="">
									<a href="#" onclick="return false;" title="듄-파트2">
										<i class="movieAge">12</i>
										<span class="text">듄-파트2</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="">
									<a href="#" onclick="return false;" title="듄-파트2">
										<i class="movieAge">all</i>
										<span class="text">듄-파트22222</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="">
									<a href="#" onclick="return false;" title="듄-파트2">
										<i class="movieAge">15</i>
										<span class="text">듄-파트2123123</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="">
									<a href="#" onclick="return false;" title="듄-파트2">
										<i class="movieAge">18</i>
										<span class="text">듄-파트2123123123</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="">
									<a href="#" onclick="return false;" title="듄-파트2">
										<i class="movieAge">12</i>
										<span class="text">듄-파트2</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="">
									<a href="#" onclick="return false;" title="듄-파트2">
										<i class="movieAge">all</i>
										<span class="text">듄-파트22222</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="">
									<a href="#" onclick="return false;" title="듄-파트2">
										<i class="movieAge">15</i>
										<span class="text">듄-파트2123123</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="">
									<a href="#" onclick="return false;" title="듄-파트2">
										<i class="movieAge">18</i>
										<span class="text">듄-파트2123123123</span>
										<span class="sreader"></span>
									</a>
								</li>
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
								<li class="">
									<a href="#" onclick="return false;" title="전주극장">
										<span class="text">전주극장</span>
									</a>
								</li>
								<li class="">
									<a href="#" onclick="return false;" title="익산극장">
										<span class="text">익산극장</span>
									</a>
								</li>
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
								<li class="date-yearMonth">
									<div>
										<span class="year">2024</span>
										<span class="month">3</span>
									</div>
								</li>
								<li class="date-day">
									<a href="#" onclick="return false;">
										<span class="dayWeek">금</span>
										<span class="day">15</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="date-day">
									<a href="#" onclick="return false;">
										<span class="satDayWeek">토</span>
										<span class="satDay">16</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="date-day">
									<a href="#" onclick="return false;">
										<span class="sunDayWeek">일</span>
										<span class="sunDay">17</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="date-day">
									<a href="#" onclick="return false;">
										<span class="dayWeek">금</span>
										<span class="day">15</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="date-day">
									<a href="#" onclick="return false;">
										<span class="satDayWeek">토</span>
										<span class="satDay">16</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="date-day">
									<a href="#" onclick="return false;">
										<span class="sunDayWeek">일</span>
										<span class="sunDay">17</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="date-day">
									<a href="#" onclick="return false;">
										<span class="dayWeek">금</span>
										<span class="day">15</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="date-day">
									<a href="#" onclick="return false;">
										<span class="satDayWeek">토</span>
										<span class="satDay">16</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="date-day">
									<a href="#" onclick="return false;">
										<span class="sunDayWeek">일</span>
										<span class="sunDay">17</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="date-day">
									<a href="#" onclick="return false;">
										<span class="dayWeek">금</span>
										<span class="day">15</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="date-day">
									<a href="#" onclick="return false;">
										<span class="satDayWeek">토</span>
										<span class="satDay">16</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="date-day">
									<a href="#" onclick="return false;">
										<span class="sunDayWeek">일</span>
										<span class="sunDay">17</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="date-day">
									<a href="#" onclick="return false;">
										<span class="dayWeek">금</span>
										<span class="day">15</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="date-day">
									<a href="#" onclick="return false;">
										<span class="satDayWeek">토</span>
										<span class="satDay">16</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="date-day">
									<a href="#" onclick="return false;">
										<span class="sunDayWeek">일</span>
										<span class="sunDay">17</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="date-day">
									<a href="#" onclick="return false;">
										<span class="dayWeek">금</span>
										<span class="day">15</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="date-day">
									<a href="#" onclick="return false;">
										<span class="satDayWeek">토</span>
										<span class="satDay">16</span>
										<span class="sreader"></span>
									</a>
								</li>
								<li class="date-day">
									<a href="#" onclick="return false;">
										<span class="sunDayWeek">일</span>
										<span class="sunDay">17</span>
										<span class="sreader"></span>
									</a>
								</li>
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
							<div class="time-theater" screen_cd="009" movie_cd="20035761">
							<span class="title">
								<span class="name">2D</span>
								<span class="floor">1관</span>
								<span class="seatcount">(총303석)</span>
							</span>
							<ul>
								<li data-index="0" data-remain_seat="303" play_start_tm="0730" screen_cd="009" movie_cd="20035761" play_num="1" class="morning">
									<a class="button" href="#" onclick="return false;" title="">
										<span class="time">
											<span>07:30</span>
										</span>
										<span class="count">165석</span>
										<span class="sreader mod"> 조조</span>
									</a>
								</li>
								<li data-index="1" data-remain_seat="303" play_start_tm="1045" screen_cd="009" movie_cd="20035761" play_num="2">
									<a class="button" href="#" onclick="return false;" title="">
										<span class="time">
											<span>10:45</span>
										</span>
										<span class="count">75석</span>
										<span class="sreader mod"></span>
									</a>
								</li>
								<li data-index="2" data-remain_seat="303" play_start_tm="1400" screen_cd="009" movie_cd="20035761" play_num="3" class="night">
									<a class="button" href="#" onclick="return false;">
										<span class="time">
											<span>14:00</span>
										</span>
										<span class="count">52석</span>
										<span class="sreader mod"></span>
									</a>
								</li>
								<li data-index="0" data-remain_seat="303" play_start_tm="0730" screen_cd="009" movie_cd="20035761" play_num="1" class="morning">
									<a class="button" href="#" onclick="return false;" title="">
										<span class="time">
											<span>07:30</span>
										</span>
										<span class="count">165석</span>
										<span class="sreader mod"> 조조</span>
									</a>
								</li>
								<li data-index="1" data-remain_seat="303" play_start_tm="1045" screen_cd="009" movie_cd="20035761" play_num="2">
									<a class="button" href="#" onclick="return false;" title="">
										<span class="time">
											<span>10:45</span>
										</span>
										<span class="count">75석</span>
										<span class="sreader mod"></span>
									</a>
								</li>
								<li data-index="2" data-remain_seat="303" play_start_tm="1400" screen_cd="009" movie_cd="20035761" play_num="3" class="night">
									<a class="button" href="#" onclick="return false;">
										<span class="time">
											<span>14:00</span>
										</span>
										<span class="count">52석</span>
										<span class="sreader mod"></span>
									</a>
								</li>
							</ul>
							</div>
							</div>
						<div class="time-list">
							<div class="time-theater" screen_cd="009" movie_cd="20035761">
							<span class="title">
								<span class="name">2D</span>
								<span class="floor">1관</span>
								<span class="seatcount">(총303석)</span>
							</span>
							<ul>
								<li data-index="0" data-remain_seat="303" play_start_tm="0730" screen_cd="009" movie_cd="20035761" play_num="1" class="morning">
									<a class="button" href="#" onclick="return false;" title="">
										<span class="time">
											<span>07:30</span>
										</span>
										<span class="count">165석</span>
										<span class="sreader mod"> 조조</span>
									</a>
								</li>
								<li data-index="1" data-remain_seat="303" play_start_tm="1045" screen_cd="009" movie_cd="20035761" play_num="2">
									<a class="button" href="#" onclick="return false;" title="">
										<span class="time">
											<span>10:45</span>
										</span>
										<span class="count">75석</span>
										<span class="sreader mod"></span>
									</a>
								</li>
								<li data-index="2" data-remain_seat="303" play_start_tm="1400" screen_cd="009" movie_cd="20035761" play_num="3" class="night">
									<a class="button" href="#" onclick="return false;">
										<span class="time">
											<span>14:00</span>
										</span>
										<span class="count">52석</span>
										<span class="sreader mod"></span>
									</a>
								</li>
								<li data-index="0" data-remain_seat="303" play_start_tm="0730" screen_cd="009" movie_cd="20035761" play_num="1" class="morning">
									<a class="button" href="#" onclick="return false;" title="">
										<span class="time">
											<span>07:30</span>
										</span>
										<span class="count">165석</span>
										<span class="sreader mod"> 조조</span>
									</a>
								</li>
								<li data-index="1" data-remain_seat="303" play_start_tm="1045" screen_cd="009" movie_cd="20035761" play_num="2">
									<a class="button" href="#" onclick="return false;" title="">
										<span class="time">
											<span>10:45</span>
										</span>
										<span class="count">75석</span>
										<span class="sreader mod"></span>
									</a>
								</li>
								<li data-index="2" data-remain_seat="303" play_start_tm="1400" screen_cd="009" movie_cd="20035761" play_num="3" class="night">
									<a class="button" href="#" onclick="return false;">
										<span class="time">
											<span>14:00</span>
										</span>
										<span class="count">52석</span>
										<span class="sreader mod"></span>
									</a>
								</li>
							</ul>
							</div>
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
							<img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87947/87947_185.JPG" alt="영화 포스터" style="display: inline;">
						</span>
						<div class="row movie_title colspan2" style="display: block;">
							<span class="data letter-spacing-min ellipsis-line2">
								<a href="http://www.cgv.co.kr/movies/detail-view/?midx=87947" 
									target="_blank" onmousedown="javascript:logClick('SUMMARY/영화상세보기');" 
									title="듄-파트2">듄-파트2
								</a>
							</span>
						</div>
						<div class="row movie_type" style="display: block;">
							<span class="data ellipsis-line1" title="4DX 2D">4DX 2D</span>
						</div>
						<div class="row movie_rating" style="display: block;">
							<span class="data" title="12세 관람가">12세 관람가</span>
						</div>
						<div class="placeholder" title="영화선택" style="display: none;"></div>
					</div>
					<div class="info theater">
						<div class="row name" style="display: block;">
							<span class="header">극장</span>
							<span class="data letter-spacing-min ellipsis-line1">
								<a href="http://www.cgv.co.kr/theaters/?theaterCode=0010" 
									target="_blank" onmousedown="javascript:logClick('SUMMARY/극장상세보기');" 
									title="CGV 구로">CGV 구로 &gt; 
								</a>
							</span>
						</div>
						<div class="row date" style="display: block;">
							<span class="header">일시</span>
							<span class="data" title="2024.3.21(목) 12:50">2024.3.21(목) 12:50</span>
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
				<a href="<%=request.getContextPath() %>/ticket/ticketSeat" class="btn-right-check">
					<span>좌석선택</span>
				</a>
				</div>
			</div>
	</div>
<%@ include file="../include/footer/userFooter.jsp" %>
<script src="<%=request.getContextPath() %>/resources/js/ticketing.js"></script>
</body>
</html>