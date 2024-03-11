<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link href="assets/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
<script src="assets/js/jquery-3.7.1.min.js"></script>
<script src="assets/js/common.js"></script>

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
									<h3 class="text-center font-weight-light my-4">아이디 찾기</h3>
								</div>
								<div class="card-body">
									<div class="small mb-3 text-muted">
										<span class="block">* 이름과 생년월일과 연락처를 입력하고 아이디 찾기 버튼을 눌러주세요.</span> 
										<span class="block">* 생년월일은 8글자로 입력해주세요.(ex 19990101)</span>  
										<span class="block">* 연락처는 '-'와 공백없이 입력해주세요.(ex 01011111111)</span> 
										<span class="block">* 사용자를 선택해주세요.</span>
									</div>
									<form method="post" action="#" name="searchIdForm" id="searchIdForm" onsubmit="return false;">
										<div class="form-floating mb-3">
											<input class="form-control" id="inputName" name="inputName" type="text" placeholder="이름" />
											<label for="inputName">이름</label>
										</div>
										<div class="form-floating mb-3">
											<input class="form-control" id="inputBirth" name="inputBirth" type="text" placeholder="생년월일" />
											<label for="inputBirth">생년월일</label>
										</div>
										<div class="form-floating mb-3">
											<input class="form-control" id="inputPhone" name="inputPhone" placeholder="연락처" />
											<label for="inputPhone">연락처</label>
										</div>
										<div class="d-flex align-items-center justify-content-between mt-4 mb-0">
											<button type="button" class="btn btn-primary mx-auto" onclick="searchId();">아이디 찾기</button>
										</div>
									</form>
								</div>
								<div
									class="card-footer text-center py-3 d-flex align-items-center">
									<div class="searchbtn small findId mx-auto">
										<a href="login.html">로그인</a>
									</div>
									<div class="small findPw mx-auto">
										<a href="findpw.html">비밀번호 찾기</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
		<div id="layoutAuthentication_footer">
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; CINEMA 2024</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="assets/js/scripts.js"></script>
</body>
</html>