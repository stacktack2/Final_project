<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
	
    <title>내 정보 | 영화속으로 Dflix</title>
    <%@ include file="../include/header/myinfoHeader.jsp" %>
  </head>
<body>
<%@ include file="../include/nav/userNav.jsp" %>

<!-- body -->
  <div class="properties section">
    <div class="myinfo-container">
    	<!-- 프로필 -->
    	<div class="profile">
    		<div class="profile-box">
	    		<sec:authorize access="isAuthenticated()">
				<strong><sec:authentication property="principal.mname"/> 님</strong>
				<em><sec:authentication property="principal.username"/></em>
				<br> 
				</sec:authorize>
    		</div>
    	</div>
    	<!-- 내 정보 내역 -->
    	<div class="myinfo-content">
    		<!-- 서브메뉴 -->
    		<div class="myinfo-submenu">
    			<ul>
    				<li>
    					<a href="<%=request.getContextPath() %>/myInfo">나의 예매내역</a>
    				</li>
    			</ul>
    			<ul>
    				<li>
    					<a href="<%=request.getContextPath() %>/myInfo/changeMyinfo">개인정보 변경</a>
    				</li>
    			</ul>
    			<ul>
    				<li>
    					<a href="<%=request.getContextPath() %>/myInfo/withdrawal">회원탈퇴</a>
    				</li>
    			</ul>
    		</div>
    		<!-- 본문내용 -->
    		<div class="myinfo-detail">
				<!-- My 예매내역 -->
    			<div class="myTicketing-tit">
    				<h3>MY 예매내역</h3>
					<p><em>${myTicketList.size()}건</em></p>
					<span>예매번호로만 티켓을 찾을 수 있으니 반드시 확인 부탁드립니다.</span>
				</div>
				<div class="myTicketing-box">
					<div class="box-inner"> 
				  	<table class=" row navbar navbar-example navbar-expand-lg bg-light mb-3 list-group">
						<c:forEach var="item" items="${myTicketList}">
						<tr>
							<th>예매번호:</th>
							<td>${item.ticketno}</td>
						</tr>
						<tr>
							<th>영화명:</th>
							<td>${item.shallType}/ ${item.cname}</td>
						</tr>
						<tr>
							<th>극장:</th>
							<td>${item.tname}/${item.shallLocation} </td>
						</tr>
						<tr>
							<th>일시:</th>
							<td>${item.sday} ${item.sstartTime} ~ ${item.sendTime} </td>
						</tr>
						<tr>
							<th>인원:</th>
							<td>${ticketdetail.size()}명</td>
						</tr>
						<tr>
							<th>좌석</th>
							<td>
								<c:forEach var="detail" items="${ticketdetail}">
	                                <c:if test="${detail.ticketno == ticket.ticketno}">
	                                    ${detail.sseatno} ${detail.sseatCol} ${detail.sseatRow} 
	                                </c:if>
                            	</c:forEach>
							</td>
						</tr>
						<tr>
							<th></th>
							<td><button class="btn btn-danger btn-sm float-right deleteBtn">예매 취소</button></td>
						</tr>
						</c:forEach>
					</table>
					 </div>
				<form action="myTicketDelete" method="post" name="myTicketDel">
					<input type="hidden" name="ticketno" id="${item.ticketno}">
				</form>
				</div>
    		</div>
    	</div>
    </div>
  </div>
	<!-- 푸터 -->
	<%@ include file="../include/footer/userFooter.jsp" %>
  </body>
</html>