<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인2</title>
<link href="resources/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
<script src="resources/js/jquery-3.7.1.min.js"></script>
<script src="resources/js/common.js"></script>

</head>
<body>
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-5">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4">로그인</h3>
								</div>
								<div class="card-body">
									<form name="loginForm" action="index" method="post" onsubmit="return false;">
										<div class="form-floating mb-3">
											<input class="form-control" id="id" name="id" type="text" placeholder="아이디" value="" /> 
											<label for="id">아이디</label>
										</div>
										<div class="form-floating mb-3">
											<input class="form-control" id="pw" name="pw" type="password" placeholder="비밀번호" /> 
											<label for="pw">비밀번호</label>
										</div>
										<div class="form-check mb-3">
											<input class="form-check-input" id="inputRememberId" name="inputRememberId" type="checkbox" value="check" /> 
											<label class="form-check-label" for="inputRememberId">아이디 기억하기</label>
										</div>
										<div class="d-flex align-items-center justify-content-between mt-4 mb-0">
											<button class="searchbtn btn btn-primary loginBtn" onclick="loginButtonClick();">로그인</button>
										</div>
									</form>
								</div>
								<div class="card-footer text-center py-3 d-flex align-items-center justify-content-between">
									<div class="small findId">
										<a href="findId">아이디 찾기</a>
									</div>
									<div class="small findPw">
										<a href="findPw">비밀번호 찾기</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
		<div id="layoutAuthentication_footer">
			  <footer>
			    <div class="container">
			      <div class="col-lg-8">
			        <p>Copyright © 2024 CINEMA Co. All rights reserved. </p>
			      </div>
			    </div>
			  </footer>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="resources/js/scripts.js"></script>
</body>
</html>