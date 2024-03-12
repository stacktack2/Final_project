<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>현재상영작</title>

    <!-- CSS -->
    <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/fontawesome.css">
    <link rel="stylesheet" href="resources/css/templatemo-villa-agency.css">
    <link rel="stylesheet" href="resources/css/owl.css">
    <link rel="stylesheet" href="resources/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
    
  </head>
<body>
  <%@ include file="../include/nav/userNav.jsp" %>
  
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

<%@ include file="../include/footer/userFooter.jsp" %>

  </body>
</html>