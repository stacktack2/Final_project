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
    		<div class="profile-img">
    			<img alt="프로필사진" src="resources/profileImg/nomal.png">
    		</div>
    		<div class="profile-box">
    			<strong>이준택님</strong>
    			<em>cotaek2</em>
    			<span>
    				닉네임 : 
    				<i>닉네임을 설정해주세요.</i>
    			</span>
    		</div>
    	<!-- 극장 선택 -->
    	<div class="favorite-theater">
   			<ul class="theaters">
   				<li>
   					<a href="#">
   						<span>1<em>순위</em></span>
   						전주극장
   					</a>
   				</li>
   			</ul>
   			<ul class="theaters">
   				<li>
   					<a href="#">
   						<span>2<em>순위</em></span>
   						익산극장
   					</a>
   				</li>
   			</ul>
   			<ul class="theaters">
   				<li>
   					<a href="#">
   						<span>3<em>순위</em></span>
   						군산극장
   					</a>
   				</li>
   			</ul>
    	</div>
    	</div>
    	<!-- 내 정보 내역 -->
    	<div class="myinfo-content">
    		<!-- 서브메뉴 -->
    		<div class="myinfo-submenu">
    			<ul>
    				<li>
    					<a href="myinfo">나의 예매내역</a>
    				</li>
    			</ul>
    			<ul>
    				<li>
    					<a href="changeMyinfo">개인정보 변경</a>
    				</li>
    			</ul>
    			<ul>
    				<li>
    					<a href="withdrawal">회원탈퇴</a>
    				</li>
    			</ul>
    		</div>
    		<!-- 본문내용 -->
    		<div class="myinfo-detail">
				<div class="sect-mycgv-reserve movielog col3">
					<div class="box-polaroid">
						<div class="box-inner preegg">
							<a href="<%=request.getContextPath()%>/movie/movieChart">
								<h3>인기있는 영화</h3>
								<span>가장 재밌는 영화 <br>순위를 알고 싶다면?</span>
							</a>
						</div>
						<div class="box-inner watched">
							<a href="<%=request.getContextPath()%>/ticket/ticketing">
								<h3>기대되는 영화</h3>
								<span>보고 싶은 영화가 <br>있다면? 예매하자</span>
							</a>
						</div>
				    </div>
				</div>
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