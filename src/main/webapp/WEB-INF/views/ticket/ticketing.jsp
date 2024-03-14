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
		<div class="navi">
			<div class="right">
				<div class="button">
					<a>
						<span>상영시간표</span>
					</a>
				</div>
				<div class="button">
					<a>
						<span>예매 다시하기</span>
					</a>
				</div>
			</div>
		</div>
	</div>

  
<%@ include file="../include/footer/userFooter.jsp" %>
</body>
</html>