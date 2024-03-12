<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>상세보기</title>

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
  <%@ include file="../include/nav/userNav.jsp" %>
  <hr style="color:#ccc;">

<!-- 상세보기 -->
  <div class="single-property section">
    <div class="container">
      <div class="row">
          <div class="col-lg-6 main-image detailimg">
            <img src="resources/images/dune_p2.jpg" alt="듄2포스터">
          </div>
          <div class="col-lg-6 main-content">
            <span class="category age">12세</span>
            <h4 class="moviename">듄: 파트2</h4>
            <p class="movieinfo"><b>2024.02.28 개봉 </b>| <b>165분</b> | <b>12세이상관람가</b> | <b>8,657명</b></p>
            <br>
            <p>황제의 모략으로 멸문한 가문의 유일한 후계자 폴.(티모시 샬라메)
			어머니 레이디 제시카(레베카 퍼거슨)와 간신히 목숨만 부지한 채 사막으로 도망친다.<br>
			그곳에서 만난 반란군들과 숨어 지내다 그들과 함께 황제의 모든 것을 파괴할 전투를 준비한다.<br>
			한편 반란군들의 기세가 높아질수록 불안해진 황제와 귀족 가문은 잔혹한 암살자 페이드 로타(오스틴 버틀러)를 보내 반란군을 몰살하려 하는데
			<br><br><strong>2월, 운명의 반격이 시작된다!</strong></p><br>
			<div class="icon-button">
               <a href="#"><i class="fa fa-calendar"></i>예매하기</a>
            </div>
          </div>
           
          <!-- 상세정보, 트레일러, 스틸컷 -->
          <div class="accordion" id="accordionExample">
          
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingOne">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                  <b>상세정보</b>
                </button>
              </h2>
              <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                <div class="accordion-body">
	                <ul>
	                	<li> 장르: 액션 / 미국</li>
	                	<li>감독: 드니 빌뇌브</li>
	                	<li>출연: 티모시 샬라메, 젠데이아, 레베카 퍼거슨, 조슈 브롤린, 오스틴 버틀러, 플로렌스 퓨, 데이브 바티스타</li>
	                </ul>
                </div>
              </div>
            </div>
            
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingTwo">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                  <b>스틸컷</b>
                </button>
              </h2>
              <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                	사진들
                </div>
              </div>
            </div>
            
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingThree">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                  <b>트레일러</b>
                </button>
              </h2>
              <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                영상들
                </div>
              </div>
            </div>
          </div>
      </div>
    </div>
  </div>

<!-- 댓글 -->
  <div class="section best-deal">


  </div>
  
  <%@ include file="../include/footer/userFooter.jsp" %>


  </body>
</html>