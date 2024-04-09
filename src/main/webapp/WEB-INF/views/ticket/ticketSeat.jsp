<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<title>예매 | 영화속으로 Dflix</title>
<!-- CSS -->
<%@ include file="../include/header/ticketingHeader.jsp"%>
</head>
<body>
	<%@ include file="../include/nav/userNav.jsp"%>
	<!-- contanier -->
	<div id="tikect-container">
		<!-- 네비 -->
		<div class="tk-navi">
			<div class="right">
				<a class="button-schedule"
					href="<%=request.getContextPath()%>/theater"> <span>상영시간표</span>
				</a> <a class="button-reset"> <span>예매 다시하기</span>
				</a>
			</div>
		</div>
		<!-- seat 섹션 -->
		<div class="seat-section">
			<!-- 섹션 seat bg -->
			<div class="seat-section-bg">
				<!-- seat 헤드 -->
				<div class="seat-section-head">
					<h3 class="">인원 / 좌석</h3>
				</div>
				<!-- seat 바디 -->
				<div class="section-seat-body">
					<div class="person_screen">
						<div class="person-number">
							<div class="pn-container">
								<div class="max-personNumber">* 최대 8명 선태 가능</div>
								<div class="group_adult" style="display: block;">
									<span class="title">일반</span>
									<ul>
										<li data-count="0" class="selected" type="adult">
											<a href="#" onclick="return false;" style="color: white;"> 
												<span class="sreader mod">일반</span>0
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="1" type="adult">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>1
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="2" type="adult">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>2
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="3" type="adult">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>3
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="4" type="adult">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>4
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="5" type="adult">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>5
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="6" type="adult">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>6
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="7" type="adult">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>7
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="8" type="adult">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>8
												<span class="sreader">명</span>
											</a>
										</li>
									</ul>
								</div>
								<div class="group_youth" style="display: block;">
									<span class="title">청소년</span>
									<ul>
										<li data-count="0" class="selected" type="youth">
											<a href="#" onclick="return false;" style="color: white;">
												<span class="sreader mod">일반</span>0
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="1" type="youth">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>1
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="2" type="youth">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>2
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="3" type="youth">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>3
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="4" type="youth">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>4
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="5" type="youth">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>5
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="6" type="youth">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>6
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="7" type="youth">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>7
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="8" type="youth">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>8
												<span class="sreader">명</span>
											</a>
										</li>
									</ul>
								</div>
								<div class="group_senior" style="display: block;">
									<span class="title">경로</span>
									<ul>
										<li data-count="0" class="selected" type="senior">
											<a href="#" onclick="return false;" style="color: white;">
												<span class="sreader mod">일반</span>0
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="1" type="senior">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>1
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="2" type="senior">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>2
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="3" type="senior">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>3
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="4" type="senior">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>4
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="5" type="senior">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>5
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="6" type="senior">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>6
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="7" type="senior">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>7
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="8" type="senior">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>8
												<span class="sreader">명</span>
											</a>
										</li>
									</ul>
								</div>
								<div class="group_special" style="display: block;">
									<span class="title">우대</span>
									<ul>
										<li data-count="0" class="selected" type="special">
											<a href="#" onclick="return false;" style="color: white;">
												<span class="sreader mod">일반</span>0
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="1" type="special">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>1
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="2" type="special">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>2
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="3" type="special">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>3
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="4" type="special">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>4
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="5" type="special">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>5
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="6" type="special">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>6
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="7" type="special">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>7
												<span class="sreader">명</span>
											</a>
										</li>
										<li data-count="8" type="special">
											<a href="#" onclick="return false;">
												<span class="sreader mod">일반</span>8
												<span class="sreader">명</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
							<a href="javascript:void(0)" id="reservarionDiscountInfo">관람
								할인 안내</a>
						</div>
						<div id="user-select-info">
							<p class="theater-info">
								<span class="site">CGV 전주고사</span>
								<span class="screen">1관 2층</span>
								<span class="seatNum">남은좌석
									<b class="restNum">231</b>/
									<b class="totalNum">231</b>
								</span>
							</p>
							<p class="playYMD-info">
								<b>2024.03.19</b> <b class="exe">(화)</b> <b>11:00 ~ 13:56</b>
							</p>
						</div>
					</div>
				</div>
				<!-- 섹션 seat 선택 -->
				<div class="theater_minimap">
					<div class="theater">
						<div class="screen" title="SCREEN" style="width: 652px;">
							<span class="text">SCREEN</span>
						</div>
						<div class="seats">
							<div class="row" style="top: 0px;">
								<div class="label">A</div>
								<div class="seat_group">
									<div class="group">
										<div class="seat handicap" style="left: 110px" data-left="128" data-left_zoom="192">
											<a href="#" onclick="return false;">
												<span class="no">6</span>
												<span class="sreader"> 장애인석 Light</span>
												<span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat handicap" style="left: 126px" data-left="112" data-left_zoom="168">
											<a href="#" onclick="return false;">
												<span class="no">7</span>
												<span class="sreader"> 장애인석 Light</span>
												<span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat handicap" style="left: 142px" data-left="128" data-left_zoom="192">
											<a href="#" onclick="return false;">
												<span class="no">8</span>
												<span class="sreader"> 장애인석 Light</span>
												<span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat handicap" style="left: 158px" data-left="112" data-left_zoom="168">
											<a href="#" onclick="return false;">
												<span class="no">9</span>
												<span class="sreader"> 장애인석 Light</span>
												<span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat handicap" style="left: 174px" data-left="128" data-left_zoom="192">
											<a href="#" onclick="return false;">
												<span class="no">10</span>
												<span class="sreader"> 장애인석 Light</span>
												<span class="sreader mod"></span>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row" style="top: 16px;">
								<div class="label">B</div>
								<div class="seat_group">
									<div class="group">
										<div class="seat rating_economy" style="left: 30px" data-left="112" data-left_zoom="168">
											<a href="#" onclick="return false;">
												<span class="no">1</span>
												<span class="sreader"> Light</span>
												<span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat rating_economy" style="left: 46px" data-left="128" data-left_zoom="192">
											<a href="#" onclick="return false;">
												<span class="no">2</span>
												<span class="sreader"> Light</span>
												<span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat rating_economy" style="left: 62px" data-left="112" data-left_zoom="168">
											<a href="#" onclick="return false;">
												<span class="no">3</span>
												<span class="sreader"> Light</span>
												<span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat rating_economy" style="left: 78px" data-left="128" data-left_zoom="192">
											<a href="#" onclick="return false;">
												<span class="no">4</span>
												<span class="sreader"> Light</span>
												<span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat rating_economy" style="left: 94px" data-left="112" data-left_zoom="168">
											<a href="#" onclick="return false;">
												<span class="no">5</span>
												<span class="sreader"> Light</span>
												<span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat rating_economy" style="left: 110px" data-left="128" data-left_zoom="192">
											<a href="#" onclick="return false;">
												<span class="no">6</span>
												<span class="sreader">Light</span>
												<span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat rating_economy" style="left: 126px" data-left="112" data-left_zoom="168">
											<a href="#" onclick="return false;">
												<span class="no">7</span>
												<span class="sreader"> Light</span>
												<span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat rating_economy" style="left: 142px" data-left="128" data-left_zoom="192">
											<a href="#" onclick="return false;">
												<span class="no">8</span>
												<span class="sreader"> Light</span>
												<span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat rating_economy" style="left: 158px" data-left="112" data-left_zoom="168">
											<a href="#" onclick="return false;">
												<span class="no">9</span>
												<span class="sreader"> Light</span>
												<span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat rating_economy" style="left: 174px" data-left="128" data-left_zoom="192">
											<a href="#" onclick="return false;">
												<span class="no">10</span>
												<span class="sreader"> Light</span>
												<span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat rating_economy" style="left: 190px" data-left="128" data-left_zoom="192">
											<a href="#" onclick="return false;">
												<span class="no">11</span>
												<span class="sreader"> Light</span>
												<span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat rating_economy" style="left: 206px" data-left="128" data-left_zoom="192">
											<a href="#" onclick="return false;">
												<span class="no">12</span>
												<span class="sreader"> Light</span>
												<span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat rating_economy" style="left: 222px" data-left="128" data-left_zoom="192">
											<a href="#" onclick="return false;">
												<span class="no">13</span>
												<span class="sreader"> Light</span>
												<span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat rating_economy" style="left: 238px" data-left="128" data-left_zoom="192">
											<a href="#" onclick="return false;">
												<span class="no">14</span>
												<span class="sreader"> Light</span> 
												<span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat rating_economy" style="left: 254px" data-left="128" data-left_zoom="192">
											<a href="#" onclick="return false;">
												<span class="no">15</span>
												<span class="sreader"> Light</span> 
												<span class="sreader mod"></span>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row" style="top: 32px;">
								<div class="label">C</div>
								<div class="seat_group">
									<div class="group">
										<div class="seat" style="left: 30px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">1</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 46px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">2</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 62px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">3</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 78px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">4</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 94px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">5</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 110px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">6</span>
												<span class="sreader">Light</span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 126px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">7</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 142px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">8</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 158px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">9</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 174px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">10</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 190px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">11</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 206px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">12</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 222px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">13</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 238px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">14</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 254px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">15</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row" style="top: 48px;">
								<div class="label">D</div>
								<div class="seat_group">
									<div class="group">
										<div class="seat" style="left: 30px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">1</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 46px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">2</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 62px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">3</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 78px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">4</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 94px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">5</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 110px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">6</span>
												<span class="sreader">Light</span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 126px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">7</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 142px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">8</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 158px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">9</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 174px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">10</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 190px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">11</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 206px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">12</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 222px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">13</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 238px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">14</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 254px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">15</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row" style="top: 64px;">
								<div class="label">E</div>
								<div class="seat_group">
									<div class="group">
										<div class="seat" style="left: 30px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">1</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 46px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">2</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 62px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">3</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 78px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">4</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 94px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">5</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 110px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">6</span>
												<span class="sreader">Light</span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 126px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">7</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 142px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">8</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 158px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">9</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 174px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">10</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 190px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">11</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 206px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">12</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 222px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">13</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 238px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">14</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 254px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">15</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row" style="top: 80px;">
								<div class="label">F</div>
								<div class="seat_group">
									<div class="group">
										<div class="seat" style="left: 30px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">1</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 46px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">2</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 62px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">3</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 78px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">4</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 94px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">5</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 110px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">6</span>
												<span class="sreader">Light</span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 126px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">7</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 142px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">8</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 158px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">9</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 174px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">10</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 190px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">11</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 206px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">12</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 222px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">13</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 238px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">14</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 254px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">15</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row" style="top: 96px;">
								<div class="label">G</div>
								<div class="seat_group">
									<div class="group">
										<div class="seat" style="left: 30px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">1</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 46px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">2</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 62px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">3</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 78px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">4</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 94px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">5</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 110px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">6</span>
												<span class="sreader">Light</span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 126px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">7</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 142px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">8</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 158px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">9</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 174px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">10</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 190px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">11</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 206px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">12</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 222px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">13</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 238px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">14</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 254px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">15</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row" style="top: 112px;">
								<div class="label">H</div>
								<div class="seat_group">
									<div class="group">
										<div class="seat" style="left: 30px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">1</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 46px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">2</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 62px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">3</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 78px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">4</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 94px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">5</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 110px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">6</span>
												<span class="sreader">Light</span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 126px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">7</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 142px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">8</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 158px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">9</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 174px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">10</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 190px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">11</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 206px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">12</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 222px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">13</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 238px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">14</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 254px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">15</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row" style="top: 128px;">
								<div class="label">I</div>
								<div class="seat_group">
									<div class="group">
										<div class="seat" style="left: 30px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">1</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 46px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">2</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 62px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">3</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 78px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">4</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 94px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">5</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 110px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">6</span>
												<span class="sreader">Light</span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 126px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">7</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 142px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">8</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 158px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">9</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 174px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">10</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 190px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">11</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 206px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">12</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 222px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">13</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 238px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">14</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 254px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">15</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row" style="top: 144px;">
								<div class="label">J</div>
								<div class="seat_group">
									<div class="group">
										<div class="seat" style="left: 30px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">1</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 46px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">2</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 62px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">3</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 78px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">4</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 94px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">5</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 110px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">6</span>
												<span class="sreader">Light</span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 126px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">7</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 142px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">8</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 158px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">9</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 174px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">10</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 190px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">11</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 206px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">12</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 222px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">13</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 238px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">14</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 254px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">15</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row" style="top: 160px;">
								<div class="label">K</div>
								<div class="seat_group">
									<div class="group">
										<div class="seat" style="left: 30px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">1</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 46px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">2</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 62px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">3</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 78px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">4</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 94px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">5</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 190px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">11</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 206px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">12</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 222px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">13</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 238px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">14</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 254px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">15</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row" style="top: 176px;">
								<div class="label">L</div>
								<div class="seat_group">
									<div class="group">
										<div class="seat" style="left: 30px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">1</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 46px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">2</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 62px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">3</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 78px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">4</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 94px" data-left="112"
											data-left_zoom="168">
											<a href="#" onclick="return false;"> <span class="no">5</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 206px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">12</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 222px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">13</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 238px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">14</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
										<div class="seat" style="left: 254px" data-left="128"
											data-left_zoom="192">
											<a href="#" onclick="return false;"> <span class="no">15</span>
												<span class="sreader"></span> <span class="sreader mod"></span>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="legend" style="width: 125px;">
							<div class="seat-icon-desc">
								<span class="icon selected"><span class="icon"></span>선택</span>
								<span class="icon reserved"><span class="icon"></span>예매완료</span>
								<span class="icon notavail"><span class="icon"></span>선택불가</span>
							</div>
							<div class="seat-type">
								<span class="radiobutton type-rating_economy" style="">Light석
									<span class="icon"></span>
								</span>
								<span class="radiobutton type-handicap" style="">장애인석
									<span class="icon"></span>
								</span>
							</div>
						</div>
				</div>
			</div>
		</div>
		<!-- 진행버튼 -->
						<div id="ticket_tnb" class="tnb_container">
							<div class="tnb">
								<a type="button"
									href="<%=request.getContextPath()%>/ticket/ticketing"
									class="btn-backmovie-check" id="seatSelectionButton"> <span>영화선택</span>
								</a>
								<div class="info movie">
									<span class="movie_poster"> 
									<img src="${cposter }"
										alt="" style="display: inline;">
									</span>
									<div class="row movie_title colspan2" style="display: block;">
										<span class="data letter-spacing-min ellipsis-line2">
											<a id="selectionMovieTitle" style="margin-left: 10px;">${cname }</a>
											<input type="hidden" name="cno" value="${cno }" id="cno">
											<input type="hidden" name="cposter" value="${cposter }" id="cposter">
											<input type="hidden" name="cname" value="${cname }" id="cname">
											<input type="hidden" name="cwatchGradeNm" value="${cwatchGradeNm }" id="cwatchGradeNm">
										</span>
									</div>
									<div class="row movie_rating" style="text-align: 5px;position: relative;left: 25px;display: block;">
										${cwatchGradeNm }
										</div>
										<div class="placeholder" title="영화선택" style="display: none;"></div>
									</div>
									<div class="info theater">
										<div class="row name" style="display: block;">
											<span class="header">극장</span>
											<span class="data letter-spacing-min ellipsis-line1">
												<a title="" id="selectionTheater">${tname }</a>
												<input type="hidden" name="tname" value="${tname }" id="tname">
												<input type="hidden" name="tno" value="${tno }" id="tno">
											</span>
										</div>
										<div class="row date" style="display: block;">
											<span class="header">일시</span>
											<span class="data" title="">
												<a id="dateDay">${dateDay }</a>
												<a id="dateTime">${sstartTime }</a>
												<input type="hidden" name="sday" value="${sday }" id="sday">
												<input type="hidden" name="sstartTime" value="${sstartTime }" id="sstartTime">
											</span>
										</div>
										<div class="row screen" style="display: block;">
											<span class="header">상영관</span>
											<span class="data" id="selectionLocation">
												<a id="selShallType">${shallType }</a>
												<a id="selShallLocation">${shallLocation }</a>
											</span>
											<input type="hidden" name="shallno" value="${shallno }" id="shallno">
											<input type="hidden" name="shallType" value="${shallType }" id="shallType">
											<input type="hidden" name="shallLocation" value="${shallLocation }" id="shallLocation">
										</div>
										<div class="row number" style="display: block;">
											<span class="header">인원</span>
											<span class="data"></span>
										</div>
										<div class="placeholder" title="극장선택" style="display: none;"></div>
									</div>
								<div class="info path">
									<div class="row colspan4">
										<span class="path-step2" title="좌석선택">&nbsp;</span>
										<span class="path-step3" title="결제">&nbsp;</span>
									</div>
								</div>
								<button type="button"
									class="btn-right-check" id="seatSelectionButton"> <span>결제하기</span>
								</button>
							</div>
						</div>
	</div>
	<%@ include file="../include/footer/userFooter.jsp"%>
</body>
</html>