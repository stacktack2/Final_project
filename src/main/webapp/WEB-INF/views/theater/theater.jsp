<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
					<h3>${theaterVO.tname }</h3>
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
							주소 : ${theaterVO.taddr }<br> 연락처:${theaterVO.tcall }
						</p>
					</div>
					<div style="text-align: right">
						날짜 선택: <input type="text" name="attendday" id="attendday"/>
					</div>
					<div class="row">
					
					
						<c:forEach var="cinemaVO" items="${cinemaVOList }">

							<div class="col-lg-12 border-top border-dark p-3 m-3">
								<div>
									<h5>
										<img
											src="<%=request.getContextPath()%>/resources/images/12age.png"
											alt="12세" style="width: 2%" /> ${cinemaVO.cname }
									</h5>
									<br> <span>${cinemaVO.cgenreNm } | ${cinemaVO.cshowTime }분</span>
								</div>
								
								<c:forEach var="screenHallVO" items="${cinemaVO.screenHallVOList }">
									<div class="mt-3">
										<span>▶  ${screenHallVO.shallLocation} | 총 ${screenHallVO.shallSeat}석</span>
									</div>
									<div>
										<c:forEach var="screenVO" items="${screenHallVO.screenVO }">
											<div style="width: 100px; height: 50px; text-align: center;"
												class="d-inline-block border border-grey">
												<a href="#"> <b>${screenVO.sstartTime }~${screenVO.sendTime }</b><br> <span>남은 좌석 해야함</span>
												</a>
											</div>
										</c:forEach>
									</div>
								</c:forEach>
								
							</div>

						</c:forEach>



					</div>
				</div>

			</div>
			
		</div>
	</div>
	<%@ include file="../include/footer/userFooter.jsp" %>
	
	<script src="<%=request.getContextPath()%>/resources/jquery/jquery.js"></script>
	<!-- 날짜 api -->
	<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
	<script src="<%=request.getContextPath()%>/resources/js/theater.js"></script>
	<script>
	var attendday = <%=request.getParameter("attendday")%>;
		$(function() { 
			if(attendday == null || attendday == undefined || attendday == ""){
				let today = new Date();
				let year = today.getFullYear(); // 년도
				let month = today.getMonth() + 1;  // 월
				let date = today.getDate();  // 날짜
				attendday = year + "" + month + "" + date;
			}
			$('input[name="attendday"]').on('apply.daterangepicker', function(ev, picker) {
			  	var url ="theater?tno="+<%=request.getParameter("tno")%>+"&attendday="+picker.startDate.format('YYYYMMDD');
			  	$(location).attr('href',url);
			});
			
			
		});
		document.getElementById("attendday").value = attendday;
		
	</script>
	
  </body>
</html>