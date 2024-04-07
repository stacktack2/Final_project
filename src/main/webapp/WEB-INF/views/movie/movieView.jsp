<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>영화 상세보기</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath() %>/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/fontawesome.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/templatemo-villa-agency.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/owl.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/animate.css">
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
            <img src="${movieDetail.cposter }" alt="${movieDetail.cname }">
          </div>
          <div class="col-lg-6 main-content">
            <span class="category age">{movieDetail.cwatchGradeNm }</span>
            <h4 class="moviename">{movieDetail.cname }</h4>
            <p class="movieinfo"><b>${movieDetail.copenDate } 개봉 </b>| <b>${movieDetail.cshowTime }분</b> | <b>누적관객수</b></p>
            <br>
            <p>${movieDetail.cintro}</p><br>
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
	                	<li>장르: ${movieDetail.cgenreNm}</li>
	                	<li>감독: ${movieDetail.cdirectorNm}</li>
	                	<li>출연: ${movieDetail.cactorNm}</li>
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