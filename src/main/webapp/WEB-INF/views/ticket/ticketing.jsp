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
				<a class="button-schedule" href="<%=request.getContextPath()%>/#">
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
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="../include/footer/userFooter.jsp" %>
<script src="<%=request.getContextPath() %>/resources/js/ticketing.js"></script>
</body>
</html>