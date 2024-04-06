<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
	
    <title>내 정보 | 영화속으로 Dflix</title>
    <%@ include file="../include/header/myinfoHeader.jsp" %>
  </head>
<body>
<%@ include file="../include/nav/userNav.jsp" %>

<!-- body -->
  <div class="properties section">
    <div class="myinfo-container">
    	<!-- 프로필 -->
    	<div class="profile">
    		<div class="profile-box">
	    		<sec:authorize access="isAuthenticated()">
				<strong><sec:authentication property="principal.mname"/> 님</strong>
				<em><sec:authentication property="principal.username"/></em>
				<br> 
				</sec:authorize>
    		</div>
    	</div>
    	<!-- 내 정보 내역 -->
    	<div class="myinfo-content">
    		<!-- 서브메뉴 -->
    		<div class="myinfo-submenu">
    			<ul>
    				<li>
    					<a href="<%=request.getContextPath() %>/myInfo">나의 예매내역</a>
    				</li>
    			</ul>
    			<ul>
    				<li>
    					<a href="<%=request.getContextPath() %>/myInfo/changeMyinfo">개인정보 변경</a>
    				</li>
    			</ul>
    			<ul>
    				<li>
    					<a href="<%=request.getContextPath() %>/myInfo/withdrawal">회원탈퇴</a>
    				</li>
    			</ul>
    		</div>
    		<!-- 본문내용 -->
    		<div class="myinfo-detail">
				<!-- My 예매내역 -->
    			<div class="myTicketing-tit">
    				<h3>MY 예매내역</h3>
					<p><em>0건</em></p>
					<span>예매번호로만 티켓을 찾을 수 있으니 반드시 확인 부탁드립니다.</span>
				</div>
				<div class="myTicketing-box">
					<div class="box-inner"> 고객님의 최근 예매내역이 존재하지 않습니다. </div>
				</div>
    		</div>
    	</div>
    </div>
  </div>
	<!-- 푸터 -->
	<%@ include file="../include/footer/userFooter.jsp" %>
  </body>
</html>