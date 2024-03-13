<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
	
    <title>내 정보</title>
    <%@ include file="../include/header/myinfoHeader.jsp" %>
  </head>
<body>
<!--최상단 -->
<div class="sub-header">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-8">
      </div>
      <div class="col-lg-4 col-md-4">
        <ul class="topmenu">
          <li><a href="login">로그아웃</a> | </li>
          <li><a href="<%=request.getContextPath() %>/myinfo">내정보</a> | </li>
          <li><a href="<%=request.getContextPath() %>/serviceCenter/noticeList">고객센터</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>
                 
<!-- 헤더 -->
<header class="header-area header-sticky">
  <div class="container">
      <div class="row">
          <div class="col-12">
              <nav class="main-nav">
                  <a href="/dflix" class="logo">
					<h1>DFLIX</h1>
                  </a>
                  <!-- 네비메뉴 -->
                  <ul class="nav">
                    <li class="dropdown">
                    	<a  href="#" data-bs-toggle="dropdown collapse" aria-expanded="false">영화</a>
                    	<ul class="dropdown-menu dropdown-menu-dark ulbg-whtie">
                    		<li><a class="dropdown-item item-hover" href="movieChart">무비차트</a></li>
                    		<li><a class="dropdown-item item-hover" href="movieSchedule">상영예정작</a></li>
                    	</ul>
                    </li>
                    <li class="dropdown">
                    	<a href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">예매</a>
                    	<ul class="dropdown-menu dropdown-menu-dark ulbg-whtie">
                    		<li><a class="dropdown-item item-hover" href="#">예매하기</a></li>
                    		<li><a class="dropdown-item item-hover" href="#">예매조회</a></li>
                    	</ul>
                    </li>
                    <li class="dropdown">
                    	<a href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">극장</a>
                    	<ul class="dropdown-menu dropdown-menu-dark ulbg-whtie">
                    		<li><a class="dropdown-item item-hover" href="#">전주극장</a></li>
                    		<li><a class="dropdown-item item-hover" href="#">익산극장</a></li>
                    		<li><a class="dropdown-item item-hover" href="#">군산극장</a></li>
                    	</ul>
                    </li>
                    <li></li>
                </ul>
                    <form class="d-flex" role="search">
		        <input class="form-control me-2 searchinput" type="search" placeholder="Search" aria-label="Search">
		        <button class="btn btn-outline-success searchbtn" type="submit">Search</button>
		      </form>   
              </nav>
          </div>
      </div>
  </div>
</header>

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
							<a href="http://www.cgv.co.kr/user/movielog/">
								<h3>인기있는 영화</h3>
									<span>가장 재밌는 영화 <br>순위를 알고 싶다면?</span>
							</a>
						</div>
						<div class="box-inner watched">
							<a href="http://www.cgv.co.kr/user/movielog/watched.aspx" title="내가 본 영화">
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