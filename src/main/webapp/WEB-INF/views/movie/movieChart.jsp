<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>현재상영작</title>

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
            <li><a href="#">회원가입 </a> | </li>
            <li><a href="#" target="_blank">로그인</a> | </li>
            <li><a href="#">내정보</a> | </li>
            <li><a href="#">고객센터</a></li>
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
                    <a href="index.html" class="logo">
                        <h1>CINEMA</h1>
                    </a>
                    <!-- 네비메뉴 -->
                    <ul class="nav">
                      <li class="dropdown">
                      	<a  href="#" data-bs-toggle="dropdown collapse" aria-expanded="false">영화</a>
                      	<ul class="dropdown-menu dropdown-menu-dark">
                      		<li><a class="dropdown-item" href="#">무비차트</a></li>
                      		<li><a class="dropdown-item" href="nowmovie.html">상영예정작</a></li>
                      	</ul>
                      </li>
                      <li class="dropdown">
                      	<a href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">예매</a>
                      	<ul class="dropdown-menu dropdown-menu-dark">
                      		<li><a class="dropdown-item" href="#">예매하기</a></li>
                      		<li><a class="dropdown-item" href="#">예매조회</a></li>
                      	</ul>
                      </li>
                      <li class="dropdown">
                      	<a href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">극장</a>
                      	<ul class="dropdown-menu dropdown-menu-dark">
                      		<li><a class="dropdown-item" href="#">전주극장</a></li>
                      		<li><a class="dropdown-item" href="#">익산극장</a></li>
                      		<li><a class="dropdown-item" href="#">군산극장</a></li>
                      	</ul>
                      </li>
                      <li></li>
                  </ul>   
                </nav>
            </div>
        </div>
    </div>
  </header>
  
<!-- 배너 -->
  <div class="page-heading header-text">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <span class="breadcrumb">영화</span>
          <h3>현재상영작</h3>
        </div>
      </div>
    </div>
  </div>

  <div class="section properties">
    <div class="container">
      <ul class="properties-filter">
        <li>
          <a class="is_active" href="#!" data-filter="*">전체</a>
        </li>
        <li>
          <a href="#!" data-filter=".adv">액션</a>
        </li>
        <li>
          <a href="#!" data-filter=".str">로맨스</a>
        </li>
        <li>
          <a href="#!" data-filter=".rac">애니</a>
        </li>
      </ul>
      
      <div class="row properties-box">
      
        <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 adv">
          <div class="item">
            <a href="property-details.html"><img src="resources/images/pamyo_p.jpg" alt="파묘포스터"></a>
            <span class="category">1</span>
            <h6>15</h6>
            <h4><a href="property-details.html">파묘</a></h4>
            <ul>
              <li>상영시간: <span>134분</span></li>
            </ul>
            <div class="main-button">
              <a href="movieView.html">상세보기</a>
              <a href="property-details.html">예매하기</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 str">
          <div class="item">
            <a href="property-details.html"><img src="resources/images/wonka_p.jpg" alt="웡카포스터"></a>
            <span class="category">2</span>
            <h6>ALL</h6>
            <h4><a href="property-details.html">웡카</a></h4>
            <ul>
              <li>상영시간: <span>116분</span></li>
            </ul>
            <div class="main-button">
              <a href="#">상세보기</a>
              <a href="property-details.html">예매하기</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 adv rac">
          <div class="item">
            <a href="property-details.html"><img src="resources/images/wonka_p.jpg" alt="웡카포스터"></a>
            <span class="category">2</span>
            <h6>ALL</h6>
            <h4><a href="property-details.html">웡카</a></h4>
            <ul>
              <li>상영시간: <span>116분</span></li>
            </ul>
            <div class="main-button">
              <a href="#">상세보기</a>
              <a href="property-details.html">예매하기</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 str">
          <div class="item">
            <a href="property-details.html"><img src="resources/images/wonka_p.jpg" alt="웡카포스터"></a>
            <span class="category">2</span>
            <h6>ALL</h6>
            <h4><a href="property-details.html">웡카</a></h4>
            <ul>
              <li>상영시간: <span>116분</span></li>
            </ul>
            <div class="main-button">
              <a href="#">상세보기</a>
              <a href="property-details.html">예매하기</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 rac str">
          <div class="item">
            <a href="property-details.html"><img src="resources/images/wonka_p.jpg" alt="웡카포스터"></a>
            <span class="category">2</span>
            <h6>ALL</h6>
            <h4><a href="property-details.html">웡카</a></h4>
            <ul>
              <li>상영시간: <span>116분</span></li>
            </ul>
            <div class="main-button">
              <a href="#">상세보기</a>
              <a href="property-details.html">예매하기</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 rac adv">
          <div class="item">
            <a href="property-details.html"><img src="resources/images/wonka_p.jpg" alt="웡카포스터"></a>
            <span class="category">2</span>
            <h6>ALL</h6>
            <h4><a href="property-details.html">웡카</a></h4>
            <ul>
              <li>상영시간: <span>116분</span></li>
            </ul>
            <div class="main-button">
              <a href="#">상세보기</a>
              <a href="property-details.html">예매하기</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 rac str">
          <div class="item">
            <a href="property-details.html"><img src="resources/images/wonka_p.jpg" alt="웡카포스터"></a>
            <span class="category">2</span>
            <h6>ALL</h6>
            <h4><a href="property-details.html">웡카</a></h4>
            <ul>
              <li>상영시간: <span>116분</span></li>
            </ul>
            <div class="main-button">
              <a href="#">상세보기</a>
              <a href="property-details.html">예매하기</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 rac adv">
          <div class="item">
            <a href="property-details.html"><img src="resources/images/wonka_p.jpg" alt="웡카포스터"></a>
            <span class="category">2</span>
            <h6>ALL</h6>
            <h4><a href="property-details.html">웡카</a></h4>
            <ul>
              <li>상영시간: <span>116분</span></li>
            </ul>
            <div class="main-button">
              <a href="#">상세보기</a>
              <a href="property-details.html">예매하기</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 rac adv">
          <div class="item">
            <a href="property-details.html"><img src="resources/images/wonka_p.jpg" alt="웡카포스터"></a>
            <span class="category">2</span>
            <h6>ALL</h6>
            <h4><a href="property-details.html">웡카</a></h4>
            <ul>
              <li>상영시간: <span>116분</span></li>
            </ul>
            <div class="main-button">
              <a href="#">상세보기</a>
              <a href="property-details.html">예매하기</a>
            </div>
          </div>
        </div>
      </div>
      
      <!-- 페이징 -->
      <div class="row">
        <div class="col-lg-12">
          <ul class="pagination">
            <li><a href="#">1</a></li>
            <li><a class="is_active" href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">>></a></li>
          </ul>
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