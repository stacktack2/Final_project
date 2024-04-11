<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>내 정보 변경 </title>

    <script src="<%=request.getContextPath() %>/resources/jquery/jquery.min.js"></script>
    <style>
    	.col-md-6{margin: 0 auto;}
    	form span{display:block;}
    	from lable.form-label{
			color:gray !important;
		}
		form h3{padding:20px 0; color:#444; }
    </style>
    <script>
		//이름
		let inputNm = document.getElementById("mname");
	   	if(inputNm == "" ||inputNm == null ){
	   		name_check = true;
	   	}
		function checkName(obj){
			let regId = /^[가-힣]{2,8}$/;
			let regRs = regId.test(obj.value); 
			let mnameSpan = document.getElementById("mnameSpan"); 
			if(obj.value == "" || obj.value === null || obj.value === undefined){
				name_check = true;
			}else if(regRs){
				mnameSpan.innerHTML = '사용가능합니다.';
				mnameSpan.style.color = 'green';
				name_check = true;
			}else{
				mnameSpan.innerHTML = '2글자 ~ 8글자의 한글만 사용가능합니다.';
				mnameSpan.style.color = 'red';
				name_check = false;
			}
		}
    	//비밀번호
    	let inputPw = document.getElementById("mpw");
    	if(inputPw == "" ||inputPw == null){
    		pw_check = true;
    	}
    	function checkPw(obj){
    		let regId = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*])[a-zA-Z\d!@#$%^&*]{8,}$/g;
    		let regRs = regId.test(obj.value); 
    		let mpwSpan = document.getElementById("mpwSpan");
    		
    		if(obj.value == "" || obj.value == null || obj.value == undefined){
    			pw_check = true;
    		}else if(!regRs){
    			mpwSpan.innerHTML ='비밀번호는 8자 이상 영문 소문자, 영문 대문자, 숫자, 특수문자를 사용해야합니다.<br>특수문자는 !,@,#,$,%,^,&,* 만 가능합니다.';
    			mpwSpan.style.color = 'red';
    			pw_check = false;
    		}else{
    			mpwSpan.innerHTML = '사용가능합니다.';
    			mpwSpan.style.color = 'green';
    			pw_check = true;
    		}
    	}
    	//비밀번호 확인
    	let inputPwRe = document.getElementById("mpwRe");
    	if(inputPwRe == "" ||inputPwRe == null){
    		pwRe_check = true;
    	}
    	function checkPwRe(){
    		let confirmPw = inputPw == inputPwRe;
    		let mpwReSpan = document.getElementById("mpwReSpan"); 
    		if(inputPwRe == "" || inputPwRe == null || inputPwRe == undefined){
    			pwRe_check = true;
    		}else if(confirmPw){
    			mpwReSpan.innerHTML = '비밀번호가 같습니다.';
    			mpwReSpan.style.color = 'green';
    			pwRe_check = true;
    		}else if(!confirmPw){
    			mpwReSpan.innerHTML = '비밀번호가 같지 않습니다.';
    			mpwReSpan.style.color = 'red';
    			pwRe_check = false;
    		}else{
    			return !confirmPw;
    		}
    	}
    	//생년월일
    	let inputBirth = document.getElementById("mbirth");
    	if(inputBirth == "" ||inputBirth == null){
    		birth_check = true;
    	}
    	function checkBirth(obj){
    		let regId = /^(19|20)\d\d(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|3[01])$/;
    		let regRs = regId.test(obj.value); 
    		let mbirthSpan = document.getElementById("mbirthSpan"); 
    		if(inputBirth == "" || inputBirth === null || inputBirth === undefined){
    			birth_check =  true;
    		}else if(regRs){
    			mbirthSpan.innerHTML = '사용가능합니다.';
    			mbirthSpan.style.color = 'green';
    			birth_check = true;

    		}else{
    			mbirthSpan.innerHTML = '생년월일 8자리를 숫자로 입력해주세요.';
    			mbirthSpan.style.color = 'red';
    			birth_check = false;
    		}
    	}
    	//휴대폰번호
    	let inputPhone = document.getElementById("mphone");
    	if(inputPhone == "" ||inputPhone == null){
    		phone_check = true;
    	}
    	function checkPhone(obj){
    		let regId = /^\d{10,11}/g;
    		let regRs = regId.test(obj.value); 
    		let mphoneSpan = document.getElementById("mphoneSpan"); 
    		if(inputPhone == "" || inputPhone === null || inputPhone === undefined){
    			phone_check = true;
    		}else if(regRs){
    			mphoneSpan.innerHTML = '사용가능합니다.';
    			mphoneSpan.style.color = 'green';
    			phone_check = true;
    		}else{
    			mphoneSpan.innerHTML = '10~11자리 숫자를 입력해주세요.';
    			mphoneSpan.style.color = 'red';
    			phone_check = false;
    		}
    	}
    	
      	function validation(){
           	let pw_check = false;
           	let pwRe_check = false;
           	let name_check = false;
           	let birth_check = false;
           	let phone_check = false;
           	let gender_check = false;
           	let email_check = false;

           	if(pw_check && pwRe_check && name_check && 
       				birth_check && phone_check && gender_check && email_check){
       					document.frm.submit();
       		}
       	}	
</script>  
</head>
<body>
<%@ include file="../include/header/myinfoHeader.jsp" %>
<%@ include file="../include/nav/userNav.jsp" %>

<!-- body -->
  <div class="properties section">
    <div class="myinfo-container">
    	<!-- 프로필 -->
    	<div class="profile">
    		<div class="profile-box">
	    		<sec:authorize access="isAuthenticated()">
				<strong><%-- <sec:authentication property="principal.mname"/> 님 --%>${user.mname} 님</strong>
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
				<div class="changeMyinfo-box">
				   <div class="card-body">
	    			
					<form id="formAccountSettings" name="frm" class="changeInfoFrom" action="changeMyinfo" method="POST" onsubmit="return validation();">
                        <h3>내정보 변경</h3>
                        <div class="row">

                          <div class="mb-3 col-md-8">
                            <label for="mname" class="form-label  block fw-semibold">이름</label>
                            <input 
                            	class="form-control" 
                            	type="text" 
                            	name="mname" 
                            	id="mname"
                           		oninput="checkName(this);" 
                           			 
                           />
                           <span id="mnameSpan"></span>
                          </div>
                          
                          <div class="mb-3 col-md-8">
                            <label for="mpw" class="form-label block fw-semibold">비밀번호</label>
                            <input
                              type="password"
                              class="form-control"
                              id="mpw"
                              name="mpw"
                              oninput="checkPw(this);checkPwRe();"
                            />
                            <span id="mpwSpan"></span>
                          </div>
                          <div class="mb-3 col-md-8">
                            <label for="mpwRe" class="form-label block fw-semibold">비밀번호 확인</label>
                            <input
                              type="password"
                              class="form-control"
                              id="mpwRe"
                              name="mpwRe"
                              oninput="checkPwRe();"
                            />
                            <span id="mpwReSpan"></span>
                          </div>
                          
                          <div class="mb-3 col-md-8">
                            <label for="memail" class="form-label block fw-semibold">E-mail</label>
                            <input
                              class="form-control reinput"
                              type="email"
                              id="memail"
                              name="memail"
                              oninput="checkEmail(this);"
                              
                            />
                            <span id="memailSpan"></span>
                          </div>
                          
                          <div class="mb-3 col-md-8">
                            <label class="form-label block fw-semibold" for="mphone">휴대폰번호</label>
                            <div class="input-group input-group-merge">
                              <input
                                type="text"
                                id="mphone"
                                name="mphone"
                                class="form-control"
                                oninput="checkPhone(this);"
                               
                              />
                            </div>
                            <span id="mphoneSpan"></span>
                          </div>
                          
                          <div class="mb-3 col-md-8">
                            <label class="form-label block fw-semibold" for="mbirth">생년월일</label>
                            <div class="input-group input-group-merge">
                              <input
                                type="text"
                                id="mbirth"
                                name="mbirth"
                                class="form-control"
                                placeholder="8글자로 쓰세요"
                                oninput="checkBirth(this);"
                                
                              />
                            </div>
                            <span id="mbirthSpan"></span>
                          </div>
                       
                        <div class="mb-3 col-md-8">
                          <small class="fw-semibold d-block">성별</small>
                          <div class="form-check form-check-inline mt-3">
                            <input
                              class="form-check-input"
                              type="radio"
                              name="mgender"
                              id="mgender_m"
                              value="m"
                              onclick="checkGender(this)"
                            />
                            <label class="form-check-label" for="mgender_m">남</label>
                          </div>
                          <div class="form-check form-check-inline">
                            <input
                              class="form-check-input"
                              type="radio"
                              name="mgender"
                              id="mgender_f"
                              value="f"
                              onclick="checkGender(this)"
                            />
                            <label class="form-check-label" for="mgender_f">여</label>
                          </div>
                          <span id="mgenderSpan"></span>
                        </div>
                        
                        <div class="mt-2">
                          <button type="submit" class="btn btn-primary me-2">수정하기</button>
                        </div>
                       	</div>
                      </form>
                      </div>
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
  </body>
</html>