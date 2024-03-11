<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link href="resources/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
<script src="resources/js/jquery-3.7.1.min.js"></script>
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
									<h3 class="text-center font-weight-light my-4">비밀번호 찾기</h3>
								</div>
								<div class="card-body">
									<div class="small mb-3 text-muted">
										<span class="block">* 이름과 생년월일과 연락처를 모두 입력한 다음버튼을 눌러주세요</span>
										<span class="block">* 생년월일은 6글자로 입력해주세요 (ex 19990101)</span> 
										<span class="block">* 연락처는 -와 공백없이 입력해주세요(ex 01011111111)</span> 
										<span class="block">* 인증수단 정보를 입력한 뒤 다음 버튼을 누르면 해당 이메일로
											인증번호가 발송됩니다</span>
									</div>
									<form method="post" action="#" name="searchPwForm" id="searchPwForm" onsubmit="return false;">
										<div class="form-floating mb-3">
											<input class="form-control" id="inputId" name="id" type="text" placeholder="아이디" /> 
											<label for="inputId">아이디</label>
										</div>
										<div class="form-floating mb-3">
											<input class="form-control" id="inputName" name="name" type="text" placeholder="이름" /> 
											<label for="inputName">이름</label>
										</div>
										<div class="form-floating mb-3">
											<input class="form-control" id="inputBirth" name="birth" type="text" placeholder="생년월일" /> 
											<label for="inputBirth">생년월일</label>
										</div>
										<div class="form-floating mb-3">
											<input class="form-control" id="inputPhone" name="phone" placeholder="연락처" />
											<label for="inputPhone">연락처</label>
										</div>
										<div class="form-floating mb-3 col-md-8 d-inline-block">
											<input class="form-control" id="inputEmail" name="email" placeholder="이메일" />
											<label for="inputEmail">이메일</label>
										</div>
										<div class="form-floating d-inline-block">
											<input class="btn btn-outline-success" type="button" value="인증하기" onclick="sendEmail();" />
										</div>
										<div class="form-floating mb-3 col-md-8 d-inline-block">
											<input class="form-control" id="inputCode" name="code" placeholder="인증코드" />
											<label for="inputCode">인증코드</label>
										</div>
										<div class="form-floating d-inline-block">
											<input class="btn btn-outline-success" type="button" value="인증확인" onclick="codeCheck();" />
										</div>
										<div class="form-floating d-inline-block">
											<input class="btn" id="Timer" type="button" value="" readonly/>
										</div>
										<div class="d-flex align-items-center justify-content-between mt-4 mb-0">
											<button type="button" class="btn btn-primary mx-auto" onclick="searchPw();">비밀번호 찾기</button>
										</div>
									</form>
								</div>
								<div class="card-footer text-center py-3">
									<div class="searchbtn small">
										<a href="login.html">로그인</a>
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
					<div class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; CINEMA 2024</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="resources/js/scripts.js"></script>
	<script src="resources/js/common.js"></script>
</body>
</html>