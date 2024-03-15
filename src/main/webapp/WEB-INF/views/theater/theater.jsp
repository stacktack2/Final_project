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
	
	<div class="page-heading"
		style="background-image: url(/dflix/resources/images/page-heading-bg.jpg)">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h3>전주극장</h3>
				</div>
			</div>
		</div>
	</div>
	
	<div class="contact-page section">
		<div class="container">
		
			<div class="row">

				<div class="col-lg-12">
					<div class="section-heading">
						<h6>| Contact Us</h6><br>
						<p>
							주소 : 전북 전주시 덕진구 송천동 3번지<br> 연락처:1515-0101
						</p>
					</div>
					<div style="text-align: right">
						<p>-------------날짜 api-----------------</p>
					</div>
					<div class="row">
					
						<div class="col-lg-12 border-top border-dark p-3 m-3">
							<div>
								<h5>
								<img src="<%=request.getContextPath() %>/resources/images/12age.png" alt="12세" style="width:2%"/>
								듄-파트2
								</h5><br>
								<span>액션 | 166분</span>
							</div>
							<div class="mt-3">
								<span>▶ 1관 | 총 50석</span>
							</div>
							<div>
								<div style="width: 100px; height: 50px; text-align: center;" class="d-inline-block border border-grey">
									<a href="#"> 
										<b>13:00</b><br> 
										<span>43석</span>
									</a>
								</div>
								<div style="width: 100px; height: 50px; text-align: center;" class="d-inline-block border border-grey">
									<a href="#"> 
										<b>16:00</b><br> 
										<span>39석</span>
									</a>
								</div>
								<div style="width: 100px; height: 50px; text-align: center;" class="d-inline-block border border-grey">
									<a href="#"> 
										<b>19:00</b><br> 
										<span>2석</span>
									</a>
								</div>
							</div>
							<div class="mt-3">
								<span>▶ 2관 | 총 60석</span>
							</div>
							<div>
								<div style="width: 100px; height: 50px; text-align: center;" class="d-inline-block border border-grey">
									<a href="#"> 
										<b>13:00</b><br> 
										<span>43석</span>
									</a>
								</div>
								<div style="width: 100px; height: 50px; text-align: center;" class="d-inline-block border border-grey">
									<a href="#"> 
										<b>16:00</b><br> 
										<span>42석</span>
									</a>
								</div>
								<div style="width: 100px; height: 50px; text-align: center;" class="d-inline-block border border-grey">
									<a href="#"> 
										<b>19:00</b><br> 
										<span>13석</span>
									</a>
								</div>
							</div>
						</div>
						
						
						<div class="col-lg-12 border-top border-dark p-3 m-3">
							<div>
								<h5>
								<img src="<%=request.getContextPath() %>/resources/images/15age.png" alt="15세" style="width:2%"/>
								파묘
								</h5><br>
								<span>액션 | 166분</span>
							</div>
							<div class="mt-3">
								<span>▶ 1관 | 총 50석</span>
							</div>
							
							<div>
								<div style="width: 100px; height: 50px; text-align: center;" class="d-inline-block border border-grey">
									<a href="#"> 
										<b>13:00</b><br> 
										<span>43석</span>
									</a>
								</div>
								<div style="width: 100px; height: 50px; text-align: center;" class="d-inline-block border border-grey">
									<a href="#"> 
										<b>16:00</b><br> 
										<span>42석</span>
									</a>
								</div>
								<div style="width: 100px; height: 50px; text-align: center;" class="d-inline-block border border-grey">
									<a href="#"> 
										<b>19:00</b><br> 
										<span>13석</span>
									</a>
								</div>
							</div>
						</div>
						
					</div>
				</div>

			</div>
			
		</div>
	</div>



	<%@ include file="../include/footer/userFooter.jsp" %>
  </body>
</html>