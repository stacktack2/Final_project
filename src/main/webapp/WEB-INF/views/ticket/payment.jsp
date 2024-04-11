<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
				
			</div>
		</div>
		<!-- seat 섹션 -->
		<div class="seat-section">
			<!-- 섹션 seat bg -->
			<div class="seat-section-bg">
				<!-- seat 헤드 -->
				<div class="seat-section-head">
					<h3 class="">예매 정보</h3>
				</div>
				<!-- seat 바디 -->
				<div class="section-seat-body">
					<div class="person_screen">
						<div class="person-number">
							<div class="pn-container">
								<div class="max-personNumber">* 최대 8명 선태 가능</div>
								<div class="group_adult" style="display: block;">
									<span class="title">일반</span>
									<ul class="personAdult">
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
							</div>
						</div>
						<div id="user-select-info">
							<p class="theater-info">
								<span class="site">${cname }</span>
								<span class="screen">${shallLocation }</span>
								<span class="seatNum">남은좌석
									<b class="restNum">231</b>/
									<b class="totalNum">231</b>
								</span>
							</p>
							<p class="playYMD-info">
								<b>${dateDay }</b> <b>${sstartTime }~${sendTime }</b>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../include/footer/userFooter.jsp"%>
<script src="<%=request.getContextPath() %>/resources/js/ticketSeat_event.js"></script>
</body>
</html>