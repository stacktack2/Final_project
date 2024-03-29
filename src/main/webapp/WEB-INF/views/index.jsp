<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
	
    <title>Dflix</title>

    <link href="<%=request.getContextPath() %>/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/fontawesome.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/templatemo-villa-agency.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/owl.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
  </head>
<body>

  <%@ include file="include/nav/userNav.jsp" %>

<!-- 슬라이드배너 -->
  <div class="main-banner">
    <div class="owl-carousel owl-banner">
      <div class="item item-1">
        <div class="header-text">
          <span class="category">2024.02.28 <em>듄:파트2</em></span>
          <h2>2월,<br> 운명의 반격이 시작된다!</h2>
        </div>
      </div>
      <div class="item item-2">
        <div class="header-text">
          <span class="category">2024.02.22 <em>파묘</em></span>
          <h2>“전부 잘 알 거야…<br> 묘 하나 잘못 건들면<br> 어떻게 되는지”</h2>
        </div>
      </div>
      <div class="item item-3">
        <div class="header-text">
          <span class="category">2024.01.31 <em>웡카</em></span>
          <h2>세상에서 가장 달콤한 여정<br>좋은 일은 모두 꿈에서부터 시작된다!</h2>
        </div>
      </div>
    </div>
  </div>

<!-- 티저 -->
  <div class="video section">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 offset-lg-4">
          <div class="section-heading text-center">
            <h6>| Tiser View</h6>
            <h2>듄:파트2 티저 <br>보러가기</h2>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="video-content">
    <div class="container">
      <div class="row">
        <div class="col-lg-10 offset-lg-1">
          <div class="video-frame">
            <img src="<%=request.getContextPath() %>/resources/images/dune5.jpg" alt="듄">
            <a href="https://youtu.be/81JOj5-xNGc?si=XlZvYAZQJjee7N6d" target="_blank"><i class="fa fa-play"></i></a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="fun-facts">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="wrapper">
            <div class="row">
              <div class="col-lg-4">
                <div class="counter">
                  <h2 class="timer count-title count-number" data-to="1" data-speed="1000"></h2>
                   <p class="count-text ">전세계 박스오피스<br>4.2억만 달러 달성</p>
                </div>
              </div>
              <div class="col-lg-4">
                <div class="counter">
                  <h2 class="timer count-title count-number" data-to="2" data-speed="1000"></h2>
                  <p class="count-text ">아카데미 시상식에서<br>6관왕 수상</p>
                </div>
              </div>
              <div class="col-lg-4">
                <div class="counter">
                  <h2 class="timer count-title count-number" data-to="3" data-speed="1000"></h2>
                  <p class="count-text ">시즌1 국내에서<br>162만 관객 동원</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
<!-- 현재상영작 -->
  <div class="properties section">
    <div class="container">
    
      <div class="row">
        <div class="col-lg-4 offset-lg-4">
          <div class="section-heading text-center">
            <h6>| TOP6</h6>
            <h2>현재상영작</h2>
            <form>
            	<button type="button" id="upsertButton">upsert</button>
            </form>
          </div>
        </div>
        <a href="<%=request.getContextPath() %>/movie/movieChart" class="more">더보기 ></a>
      </div>
      <div class="row">
      	<c:forEach items="${movieChart }" var="movieChart">
        <div class="col-lg-4 col-md-6">
          <div class="item">
            <img src="<%=request.getContextPath() %>/resources/images/${movieChart.ccode }_p.jpg" alt="${movieChart.cname }포스터">
            <span class="category">${movieChart.cwatchGradeNm }</span>
            <h6>${movieChart.crank }위</h6>
            <h4>${movieChart.cname }</h4>
            <ul>
              <li>상영시간: <span>${movieChart.cshowTime }</span></li>
            </ul>
            <div class="main-button">
              <a href="<%=request.getContextPath() %>/movie/movieView">상세보기</a>
              <a href="#">예매하기</a>
            </div>
          </div>
        </div>
        </c:forEach>
        <%-- <div class="col-lg-4 col-md-6">
          <div class="item">
            <img src="<%=request.getContextPath() %>/resources/images/wonka_p.jpg" alt="웡카포스터">
            <span class="category">ALL</span>
            <h6>2위</h6>
            <h4>웡카</h4>
            <ul>
              <li>상영시간: <span>116분</span></li>
            </ul>
            <div class="main-button">
              <a href="<%=request.getContextPath() %>/movie/movieView">상세보기</a>
              <a href="#">예매하기</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6">
          <div class="item">
            <img src="<%=request.getContextPath() %>/resources/images/dune_p2.jpg" alt="듄2포스터">
            <span class="category">12</span>
            <h6>3위</h6>
            <h4>듄: 파트2</h4>
            <ul>
              <li>상영시간: <span>165분</span></li>
            </ul>
            <div class="main-button">
              <a href="<%=request.getContextPath() %>/movie/movieView">상세보기</a>
              <a href="#">예매하기</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6">
          <div class="item">
            <img src="<%=request.getContextPath() %>/resources/images/sopoong_p.jpg" alt="소풍포스터">
            <span class="category">12</span>
            <h6>4위</h6>
            <h4>소풍</h4>
            <ul>
              <li>상영시간: <span>113분</span></li>
            </ul>
            <div class="main-button">
              <a href="<%=request.getContextPath() %>/movie/movieView">상세보기</a>
              <a href="#">예매하기</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6">
          <div class="item">
            <img src="resources/images/kal_p.jpg" alt="귀칼포스터">
            <span class="category">15</span>
            <h6>5위</h6>
            <h4>귀멸의 칼날: 인연의 기적, 그리고 합동 강화 훈련으로</h4>
            <ul>
              <li>상영시간: <span>103분</span></li>
            </ul>
            <div class="main-button">
              <a href="<%=request.getContextPath() %>/movie/movieView">상세보기</a>
              <a href="#">예매하기</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6">
          <div class="item">
            <img src="<%=request.getContextPath() %>/resources/images/simin_p.jpg" alt="시민덕희포스터">
            <span class="category">15</span>
            <h6>6위</h6>
            <h4>시민덕희</h4>
            <ul>
              <li>상영시간: <span>114분</span></li>
            </ul>
            <div class="main-button">
              <a href="<%=request.getContextPath() %>/movie/movieView">상세보기</a>
              <a href="#">예매하기</a>
            </div>
          </div>
        </div> --%>
      </div>
    </div>
  </div>
  
  <!-- 상영예정작 -->
    <div class="properties section">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 offset-lg-4">
          <div class="section-heading text-center">
            <h6>| TOP6</h6>
            <h2>상영예정작</h2>
          </div>
        </div>
        <a href="<%=request.getContextPath() %>/movie/movieSchedule" class="more">더보기></a>
      </div>
      <div class="row">
        <div class="col-lg-4 col-md-6">
          <div class="item">
            <img src="<%=request.getContextPath() %>/resources/images/pop_p.jpg" alt="">
            <span class="category">15</span>
            <h6>D-14</h6>
            <h4>밥 말리: 원 러브</h4>
            <ul>
              <li>상영시간: <span>107분</span></li>
              <li>개봉일: <span>2024.03.14</span></li>
            </ul>
            <div class="main-button">
              <a href="<%=request.getContextPath() %>/movie/movieView">상세보기</a>
              <a href="#">예매하기</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6">
          <div class="item">
            <img src="<%=request.getContextPath() %>/resources/images/land_p.jpg" alt="포스터">
            <span class="category">15</span>
            <h6>D-14</h6>
            <h4>랜드 오브 배드</h4>
            <ul>
              <li>상영시간: <span>116분</span></li>
              <li>개봉일: <span>2024.03.14</span></li>
            </ul>
            <div class="main-button">
              <a href="<%=request.getContextPath() %>/movie/movieView">상세보기</a>
              <a href="#">예매하기</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6">
          <div class="item">
            <img src="<%=request.getContextPath() %>/resources/images/love_p.jpg" alt="">
            <span class="category">15</span>
            <h6>D-20</h6>
            <h4>왓츠 러브</h4>
            <ul>
              <li>상영시간: <span>165분</span></li>
              <li>개봉일: <span>2024.03.20</span></li>
            </ul>
            <div class="main-button">
              <a href="<%=request.getContextPath() %>/movie/movieView">상세보기</a>
              <a href="#">예매하기</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6">
          <div class="item">
            <img src="<%=request.getContextPath() %>/resources/images/fast_p.jpg" alt="">
            <span class="category">15</span>
            <h6>D-6</h6>
            <h4>패스트 라이브즈</h4>
            <ul>
              <li>상영시간: <span>113분</span></li>
              <li>개봉일: <span>2024.03.06</span></li>
            </ul>
            <div class="main-button">
              <a href="<%=request.getContextPath() %>/movie/movieView">상세보기</a>
              <a href="#">예매하기</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6">
          <div class="item">
            <img src="<%=request.getContextPath() %>/resources/images/pool_p.jpg" alt="">
            <span class="category">15</span>
            <h6>D-6</h6>
            <h4>가여운 것들</h4>
            <ul>
              <li>상영시간: <span>103분</span></li>
              <li>개봉일: <span>2024.03.06</span></li>
            </ul>
            <div class="main-button">
              <a href="<%=request.getContextPath() %>/movie/movieView">상세보기</a>
              <a href="#">예매하기</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6">
          <div class="item">
            <img src="<%=request.getContextPath() %>/resources/images/spy_p.jpg" alt="시민덕희포스터">
            <span class="category">15</span>
            <h6>D-20</h6>
            <h4>극장판 스파이 패밀리 코드 : 화이트</h4>
            <ul>
              <li>상영시간: <span>114분</span></li>
              <li>개봉일: <span>2024.03.20</span></li>
            </ul>
            <div class="main-button">
              <a href="<%=request.getContextPath() %>/movie/movieView">상세보기</a>
              <a href="#">예매하기</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
<!-- 찾아오시는 길 -->
  <div class="contact section">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 offset-lg-4">
          <div class="section-heading text-center">
            <h6>| dflix 전주점</h6>
             <h2>찾아오시는 길</h2>
          </div>
        </div>
      </div>
    </div>
  </div>

   <div class="contact-content">
    <div class="container">
      <div class="row">
        <div class="col-lg-10 offset-lg-1">
        	<!-- 지도 -->
          <div id="map">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25873.92121563474!2d127.11292625642456!3d35.843114464841335!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357023cf24351681%3A0x7b826dc435477ec4!2zQ0dWIOyghOyjvOqzoOyCrA!5e0!3m2!1sko!2skr!4v1710292440378!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>          </div>
          <div class="row">
            <div class="col-lg-6">
				주차 3시간 무료
            </div>
          </div>
        </div>

      </div>
    </div>
  </div> 
<%@ include file="include/footer/userFooter.jsp" %>


  </body>
  

</html>