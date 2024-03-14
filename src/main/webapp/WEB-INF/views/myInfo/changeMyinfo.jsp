<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>내 정보 변경 | 영화속으로 Dflix</title>
    <%@ include file="../include/header/myinfoHeader.jsp" %>
  </head>
<body>
<%@ include file="../include/nav/userNav.jsp" %>

<!-- body -->
  <div class="properties section">
    <div class="myinfo-container">
    	<!-- 프로필 -->
    	<div class="profile">
    		<div class="profile-img">
    			<img alt="프로필사진" src="resources/profileImg/nomal.png">
    		</div>
    		<div class="profile-box">
    			<strong>이준택님</strong>
    			<em>cotaek2</em>
    			<span>
    				닉네임 : 
    				<i>닉네임을 설정해주세요.</i>
    			</span>
    		</div>
    	<!-- 극장 선택 -->
    	<div class="favorite-theater">
   			<ul class="theaters">
   				<li>
   					<a href="#">
   						<span>1<em>순위</em></span>
   						전주극장
   					</a>
   				</li>
   			</ul>
   			<ul class="theaters">
   				<li>
   					<a href="#">
   						<span>2<em>순위</em></span>
   						익산극장
   					</a>
   				</li>
   			</ul>
   			<ul class="theaters">
   				<li>
   					<a href="#">
   						<span>3<em>순위</em></span>
   						군산극장
   					</a>
   				</li>
   			</ul>
    	</div>
    	</div>
    	<!-- 내 정보 내역 -->
    	<div class="myinfo-content">
    		<!-- 서브메뉴 -->
    		<div class="myinfo-submenu">
    			<ul>
    				<li>
    					<a href="myinfo">나의 예매내역</a>
    				</li>
    			</ul>
    			<ul>
    				<li>
    					<a href="changeMyinfo">개인정보 변경</a>
    				</li>
    			</ul>
    			<ul>
    				<li>
    					<a href="withdrawal">회원탈퇴</a>
    				</li>
    			</ul>
    		</div>
    		<!-- 본문내용 -->
    		<div class="myinfo-detail">
    			<div class="changeMyinfo-tit">
    				<h3>내 정보 변경</h3>
					<span>이메일 변경 시 이메일 인증 해주시기 바랍니다.</span>
				</div>
				<div class="changeMyinfo-box">
					<form id="formAccountSettings" action="#" method="POST" onsubmit="return false">
					<div class="changeMyinfo-frm-div">
						<!-- 아이디 -->
						<div class="frm-div">
							<label for="mid" class="frm-label"><span>*</span>아이디</label>
                            <input class="form-control frm-input" type="text"
                              		id="mid" name="mid" autofocus/>
							<button type="button" class="btn btn-sm btn-outline-primary">중복확인</button>
						</div>
                        
                        <!-- 이름 -->  
						<div class="frm-div">
							<label for="mname" class="frm-label"><span>*</span>이름</label>
							<input class="form-control frm-input" type="text" 
									id="mname" name="mname"/>
						</div>
                        
                        <!-- 비밀번호 -->  
						<div class="frm-div">
							<label for="password" class="frm-label"><span>*</span>비밀번호</label>
							<input class="form-control frm-input" type="password"  
									id="password" name="password"/>
						</div>
						
						<!-- 비밀번호 변경 -->
						<div class="frm-div">
							<label for="passwordRe" class="frm-label"><span>*</span>비밀번호 확인</label>
							<input class="form-control frm-input" type="password"
									id="passwordRe" name="passwordRe"/>
						</div>
                        
                        <!-- 닉네임 -->  
						<div class="frm-div">
                            <label for="mnicknm" class="frm-label"><span>*</span>닉네임</label>
                            <input class="form-control frm-input" type="text" 
                            		id="mnicknm" name="mnicknm"/>
                            <button type="button" class="btn btn-sm btn-outline-primary">중복확인</button>
						</div>
						
						<!-- email -->
						<div class="frm-div">
							<label for="email" class="frm-label"><span>*</span>E-mail</label>
							<input class="form-control frm-input" type="email"
									id="email" name="email"/>
                            <button type="button" class="btn btn-sm btn-outline-primary">중복확인</button>
						</div>
                          
						<!-- 휴대폰번호 -->
						<div class="frm-div">
							<label for="mphone" class="frm-label"><span>*</span>휴대폰번호</label>
							<input class="form-control frm-input" type="text" id="mphone" name="mphone"/>
						</div>
                        
                        <!-- 성별 -->  
						<div class="frm-div">
							<label for="gender" class="frm-label"><span>*</span>성별</label>
							<select id="gender" class="select2 form-select frm-select">
								<option value="">선택</option>
								<option value="M">남</option>
								<option value="F">여</option>
							</select>
						</div>

                        <!-- 개인정보 변경 버튼 -->
                        <div class="mt-2">
                          <button type="submit" class="btn btn-primary me-2">변경</button>
                          <button type="reset" class="btn btn-outline-secondary">취소</button>
                        </div>
					</div>
					</form>
				</div>
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