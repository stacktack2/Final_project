<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
	
    <title>dflix</title>

    <link href="<%=request.getContextPath() %>/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/fontawesome.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/templatemo-villa-agency.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/owl.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
  </head>
<body>

<%@ include file="../include/nav/userNav.jsp" %>
<div class="page-heading" style="background-image: url(/dflix/resources/images/page-heading-bg.jpg)">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <h3>전주극장</h3>
          <span>eodo</span>
        </div>
      </div>
    </div>
  </div>
  
    
<%@ include file="../include/footer/userFooter.jsp" %>


  </body>
</html>