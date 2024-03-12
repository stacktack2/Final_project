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
    <link rel="stylesheet" href="resources/css/templatemo-villa-agency.css">
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
          <li><a href="service">고객센터</a></li>
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

  
<!-- 슬라이드배너 -->
<nav>
	<div>나의 예매내역</div>
	<div>개인정보 변경</div>
	<div>회원탈퇴</div>
</nav>
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