<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
	
    <title>내 정보</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="resources/css/fontawesome.css">
    <link rel="stylesheet" href="resources/css/myinfo.css">
    <link rel="stylesheet" href="resources/css/owl.css">
    <link rel="stylesheet" href="resources/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
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
          <li><a href="myinfo">내정보</a> | </li>
          <li><a href="serviceCenter/noticeList">고객센터</a></li>
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
    			<div class="myTicketing-tit">
    				<h3>내 정보 변경</h3>
					<span>이메일 변경 시 이메일 인증 해주시기 바랍니다.</span>
				</div>
				<div class="myTicketing-box">
					<form id="formAccountSettings" action="#" method="POST" onsubmit="return false">
                        <div class="row">
                        
                          <div class="mb-3 col-md-6">
                            <label for="mid" class="form-label block">아이디</label>
                            <input
                              class="form-control reinput"
                              type="text"
                              id="mid"
                              name="mid"
                              autofocus
                            />
                           <button type="button" class="btn btn-sm btn-outline-primary">중복확인</button>
                          </div>
                          
                          <div class="mb-3 col-md-6">
                            <label for="mname" class="form-label">이름</label>
                            <input class="form-control" type="text" name="mname" id="mname" />
                          </div>
                          
                          <div class="mb-3 col-md-6">
                            <label for="password" class="form-label">비밀번호</label>
                            <input
                              type="password"
                              class="form-control"
                              id="password"
                              name="password"
                            />
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="passwordRe" class="form-label">비밀번호 확인</label>
                            <input
                              type="password"
                              class="form-control"
                              id="passwordRe"
                              name="passwordRe"
                            />
                          </div>
                          
						<div class="mb-3 col-md-6">
                            <label for="mnicknm" class="form-label block">닉네임</label>
                            <input class="form-control reinput" type="text" name="mnicknm" id="mnicknm" />
                            <button type="button" class="btn btn-sm btn-outline-primary">중복확인</button>
                          </div>
                          
                          <div class="mb-3 col-md-6">
                            <label for="email" class="form-label block">E-mail</label>
                            <input
                              class="form-control reinput"
                              type="email"
                              id="email"
                              name="email"
                            />
                            <button type="button" class="btn btn-sm btn-outline-primary">중복확인</button>
                          </div>
                          

                          <div class="mb-3 col-md-6">
                            <label class="form-label" for="mphone">휴대폰번호</label>
                            <div class="input-group input-group-merge">
                              <input
                                type="text"
                                id="mphone"
                                name="mphone"
                                class="form-control"
                              />
                            </div>
                          </div>
                          
                          <div class="mb-3 col-md-6">
                            <label class="form-label" for="gender">성별</label>
                            <select id="gender" class="select2 form-select">
                              <option value="">선택</option>
                              <option value="M">남</option>
                              <option value="F">여</option>
                            </select>
                          </div>

                        
                        <div class="mt-2">
                          <button type="submit" class="btn btn-primary me-2">회원가입</button>
                          <button type="reset" class="btn btn-outline-secondary">취소</button>
                        </div>
                        </div>
                     </form>
				</div>
    		</div>
    	</div>
    </div>
  </div>
<!-- 푸터 -->
  <footer>
    <div class="container">
      <div class="col-lg-8">
        <p>Copyright © 2024 CINEMA Co. All rights reserved. </p>
      </div>
    </div>
  </footer>

  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="resources/jquery/jquery.min.js"></script>
  <script src="resources/bootstrap/js/bootstrap.min.js"></script>
  <script src="resources/js/isotope.min.js"></script>
  <script src="resources/js/owl-carousel.js"></script>
  <script src="resources/js/counter.js"></script>
  <script src="resources/js/custom.js"></script>


  </body>
</html>