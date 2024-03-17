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
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/ticketingSeat.css">
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
		<!-- seat 섹션 -->
		<div class="seat-section">
			<!-- 섹션 movie -->
			<div class="seat-section-bg">
				<!-- movie 헤드 -->
				<div class="seat-section-head">
					<h3 class="">인원 / 좌석</h3>
				</div>
				<!-- movie 바디 -->
				<div class="section-movie-body">
					<div class="person_screen">
						<!-- NUMBEROFPEOPLE 섹션 -->
						<div class="section section-numberofpeople">
							<div class="col-body">
								<div id="nopContainer" class="numberofpeople-select" style="min-width: 426px;">
									<!-- 2021.05.25 - 좌석 거리두기 -->
									<!-- 최대 선택 가능 인원 표기 -->
									<div id="maximum_people" style="padding-bottom: 5px; text-align: right; font-size: 11px !important; color: red;">* 최대 8명 선택 가능</div>
									<div class="group millitary" id="nop_group_millitary" style="display: none;">
										<span class="title">군인</span>
										<ul>
											<li data-count="0" class="selected" type="millitary"><a href="#" onclick="return false;"><span class="sreader mod">군인</span>0<span class="sreader">명</span></a></li>
											<li data-count="1" type="millitary"><a href="#" onclick="return false;"><span class="sreader mod">군인</span>1<span class="sreader">명</span></a></li>
											<li data-count="2" type="millitary"><a href="#" onclick="return false;"><span class="sreader mod">군인</span>2<span class="sreader">명</span></a></li>
											<li data-count="3" type="millitary"><a href="#" onclick="return false;"><span class="sreader mod">군인</span>3<span class="sreader">명</span></a></li>
											<li data-count="4" type="millitary"><a href="#" onclick="return false;"><span class="sreader mod">군인</span>4<span class="sreader">명</span></a></li>
										</ul>
									</div>
									<!-- 스페셜 권종 '수험표' 추가 -->
									<div class="group event" id="nop_group_event" style="display: none;">
										<span class="title">수험표</span>
										<ul>
											<li data-count="0" class="selected" type="event"><a href="#" onclick="return false;"><span class="sreader mod">수험표</span>0<span class="sreader">명</span></a></li>
											<li data-count="1" type="event"><a href="#" onclick="return false;"><span class="sreader mod">수험표</span>1<span class="sreader">명</span></a></li>
											<li data-count="2" type="event"><a href="#" onclick="return false;"><span class="sreader mod">수험표</span>2<span class="sreader">명</span></a></li>
											<li data-count="3" type="event"><a href="#" onclick="return false;"><span class="sreader mod">수험표</span>3<span class="sreader">명</span></a></li>
											<li data-count="4" type="event"><a href="#" onclick="return false;"><span class="sreader mod">수험표</span>4<span class="sreader">명</span></a></li>
											<li data-count="5" type="event" class=""><a href="#" onclick="return false;"><span class="sreader mod">수험표</span>5<span class="sreader">명</span></a></li>
											<li data-count="6" type="event" class=""><a href="#" onclick="return false;"><span class="sreader mod">수험표</span>6<span class="sreader">명</span></a></li>
											<li data-count="7" type="event" class=""><a href="#" onclick="return false;"><span class="sreader mod">수험표</span>7<span class="sreader">명</span></a></li>
											<li data-count="8" type="event" class=""><a href="#" onclick="return false;"><span class="sreader mod">수험표</span>8<span class="sreader">명</span></a></li>
										</ul>
									</div>
									<div class="group adult" id="nop_group_adult" style="display: block;">
										<span class="title">일반</span>
										<ul>
											<li data-count="0" class="selected" type="adult"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>0<span class="sreader">명</span></a></li>
											<li data-count="1" type="adult"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>1<span class="sreader">명</span></a></li>
											<li data-count="2" type="adult"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>2<span class="sreader">명</span></a></li>
											<li data-count="3" type="adult"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>3<span class="sreader">명</span></a></li>
											<li data-count="4" type="adult"><a href="#" onclick="return false;"><span class="sreader mod">일반</span>4<span class="sreader">명</span></a></li>
											<li data-count="5" type="adult" class=""><a href="#" onclick="return false;"><span class="sreader mod">일반</span>5<span class="sreader">명</span></a></li>
											<li data-count="6" type="adult" class=""><a href="#" onclick="return false;"><span class="sreader mod">일반</span>6<span class="sreader">명</span></a></li>
											<li data-count="7" type="adult" class=""><a href="#" onclick="return false;"><span class="sreader mod">일반</span>7<span class="sreader">명</span></a></li>
											<li data-count="8" type="adult" class=""><a href="#" onclick="return false;"><span class="sreader mod">일반</span>8<span class="sreader">명</span></a></li>
										</ul>
									</div>
									<div class="group youth" id="nop_group_youth" style="display: block;">
										<span class="title">청소년</span>
										<ul>
											<li data-count="0" class="selected" type="youth"><a href="#" onclick="return false;"><span class="sreader mod">청소년</span>0<span class="sreader">명</span></a></li>
											<li data-count="1" type="youth"><a href="#" onclick="return false;"><span class="sreader mod">청소년</span>1<span class="sreader">명</span></a></li>
											<li data-count="2" type="youth"><a href="#" onclick="return false;"><span class="sreader mod">청소년</span>2<span class="sreader">명</span></a></li>
											<li data-count="3" type="youth"><a href="#" onclick="return false;"><span class="sreader mod">청소년</span>3<span class="sreader">명</span></a></li>
											<li data-count="4" type="youth"><a href="#" onclick="return false;"><span class="sreader mod">청소년</span>4<span class="sreader">명</span></a></li>
											<li data-count="5" type="youth" class=""><a href="#" onclick="return false;"><span class="sreader mod">청소년</span>5<span class="sreader">명</span></a></li>
											<li data-count="6" type="youth" class=""><a href="#" onclick="return false;"><span class="sreader mod">청소년</span>6<span class="sreader">명</span></a></li>
											<li data-count="7" type="youth" class=""><a href="#" onclick="return false;"><span class="sreader mod">청소년</span>7<span class="sreader">명</span></a></li>
											<li data-count="8" type="youth" class=""><a href="#" onclick="return false;"><span class="sreader mod">청소년</span>8<span class="sreader">명</span></a></li>
										</ul>
									</div>
									<div class="group child" id="nop_group_child" style="display: none;">
										<span class="title">어린이</span>
										<ul>
											<li data-count="0" class="selected" type="child"><a href="#" onclick="return false;"><span class="sreader mod">어린이</span>0<span class="sreader">명</span></a></li>
											<li data-count="1" type="child"><a href="#" onclick="return false;"><span class="sreader mod">어린이</span>1<span class="sreader">명</span></a></li>
											<li data-count="2" type="child"><a href="#" onclick="return false;"><span class="sreader mod">어린이</span>2<span class="sreader">명</span></a></li>
											<li data-count="3" type="child"><a href="#" onclick="return false;"><span class="sreader mod">어린이</span>3<span class="sreader">명</span></a></li>
											<li data-count="4" type="child"><a href="#" onclick="return false;"><span class="sreader mod">어린이</span>4<span class="sreader">명</span></a></li>
											<li data-count="5" type="child" class=""><a href="#" onclick="return false;"><span class="sreader mod">어린이</span>5<span class="sreader">명</span></a></li>
											<li data-count="6" type="child" class=""><a href="#" onclick="return false;"><span class="sreader mod">어린이</span>6<span class="sreader">명</span></a></li>
											<li data-count="7" type="child" class=""><a href="#" onclick="return false;"><span class="sreader mod">어린이</span>7<span class="sreader">명</span></a></li>
											<li data-count="8" type="child" class=""><a href="#" onclick="return false;"><span class="sreader mod">어린이</span>8<span class="sreader">명</span></a></li>
										</ul>
									</div>
									<div class="group senior" id="nop_group_senior" style="display: block;">
										<span class="title">경로</span>
										<ul>
											<li data-count="0" class="selected" type="senior"><a href="#" onclick="return false;"><span class="sreader mod">경로</span>0<span class="sreader">명</span></a></li>
											<li data-count="1" type="senior"><a href="#" onclick="return false;"><span class="sreader mod">경로</span>1<span class="sreader">명</span></a></li>
											<li data-count="2" type="senior"><a href="#" onclick="return false;"><span class="sreader mod">경로</span>2<span class="sreader">명</span></a></li>
											<li data-count="3" type="senior" class=""><a href="#" onclick="return false;"><span class="sreader mod">경로</span>3<span class="sreader">명</span></a></li>
											<li data-count="4" type="senior" class=""><a href="#" onclick="return false;"><span class="sreader mod">경로</span>4<span class="sreader">명</span></a></li>
											<li data-count="5" type="senior"><a href="#" onclick="return false;"><span class="sreader mod">경로</span>5<span class="sreader">명</span></a></li>
											<li data-count="6" type="senior"><a href="#" onclick="return false;"><span class="sreader mod">경로</span>6<span class="sreader">명</span></a></li>
											<li data-count="7" type="senior"><a href="#" onclick="return false;"><span class="sreader mod">경로</span>7<span class="sreader">명</span></a></li>
											<li data-count="8" type="senior"><a href="#" onclick="return false;"><span class="sreader mod">경로</span>8<span class="sreader">명</span></a></li>
										</ul>
									</div>
									<div class="group special hide" id="nop_group_special" style="display: block;">
										<span class="title">우대</span>
										<ul>
											<li data-count="0" class="selected" type="special"><a href="#" onclick="return false;"><span class="sreader mod">우대</span>0<span class="sreader">명</span></a></li>
											<li data-count="1" type="special"><a href="#" onclick="return false;"><span class="sreader mod">우대</span>1<span class="sreader">명</span></a></li>
											<li data-count="2" type="special"><a href="#" onclick="return false;"><span class="sreader mod">우대</span>2<span class="sreader">명</span></a></li>
											<li data-count="3" type="special"><a href="#" onclick="return false;"><span class="sreader mod">우대</span>3<span class="sreader">명</span></a></li>
											<li data-count="4" type="special"><a href="#" onclick="return false;"><span class="sreader mod">우대</span>4<span class="sreader">명</span></a></li>
											<li data-count="5" type="special" class=""><a href="#" onclick="return false;"><span class="sreader mod">우대</span>5<span class="sreader">명</span></a></li>
											<li data-count="6" type="special" class=""><a href="#" onclick="return false;"><span class="sreader mod">우대</span>6<span class="sreader">명</span></a></li>
											<li data-count="7" type="special" class=""><a href="#" onclick="return false;"><span class="sreader mod">우대</span>7<span class="sreader">명</span></a></li>
											<li data-count="8" type="special" class=""><a href="#" onclick="return false;"><span class="sreader mod">우대</span>8<span class="sreader">명</span></a></li>
										</ul>
									</div> 
									
								</div>
							</div>
						<a href="javascript:void(0)" id="reservarionDiscountInfo">관람 할인 안내</a>
						</div>
						<!-- NUMBEROFPEOPLE 섹션 -->
						<div class="section section-screen-select">
							<!-- UI 변경으로 삭제 
							<div class="title">선택하신 상영관<span>/</span>시간</div>
							-->
							<!-- UI 변경
							<div class="screen-time">
								<span class="screen"><b></b></span>
								<span class="seats seat_all"></span>
								<span class="time"></span>
								<span class="seats seat_remain"></span>
							</div>
							-->
							<div id="user-select-info">
								<p class="theater-info">
									<span class="site">CGV 전주고사</span>
									<span class="screen">7관 2층</span>
									<span class="seatNum">남은좌석  <b class="restNum">170</b>/<b class="totalNum">170</b></span>
								</p>
								<p class="playYMD-info"><b>2024.03.20</b><b class="exe">(수)</b><b>16:00 ~ 18:56</b></p>
							</div>
						</div>
						<a class="change_time_btn" href="#" 
							onmousedown="if(event.stopPropagation){event.stopPropagation();}return false;" 
							onclick="ticketStep2TimeSelectPopupShow();return false;">
							<span>상영시간 변경하기</span>
						</a>
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
				<a type="button"
					href="<%=request.getContextPath() %>/ticket/ticketSeat" 
					class="btn-right-check" id="seatSelectionButton">
					<span>좌석선택</span>
				</a>
				</div>
			</div>
		</div>
	</div>
<%@ include file="../include/footer/userFooter.jsp" %>
<script src="<%=request.getContextPath() %>/resources/js/ticketing.js"></script>
<!-- <script src="<%=request.getContextPath() %>/resources/js/ticketingTest.js"></script> -->
</body>
</html>