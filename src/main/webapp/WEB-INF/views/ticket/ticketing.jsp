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
								id="" class="rank-select background-on">예매율순</a>
							<a href="" onclick="abcSelect();return false;" 
								id="" class="abc-select">가나다순</a>
						</div>
						<div></div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="../include/footer/userFooter.jsp" %>
<script>
	window.onload = function(){
		removeBackgroundImage();
	}
	
	function removeBackgroundImage() {
		let abcSelect = document.getElementsByClassName("abc-select")[0];
		let rankSelect = document.getElementsByClassName("rank-select")[0];
		
        abcSelect.style.backgroundImage = "none";
    }

	function rankSelect() {
		let rankSelect = document.getElementsByClassName("rank-select")[0];
		
		rankSelect.style.backgroundImage = "initial";
	}
	
	function abcSelect() {
		let abcSelect = document.getElementsByClassName("abc-select")[0];
		
		abcSelect.style.backgroundImage = "initial";
	}
</script>
</body>
</html>