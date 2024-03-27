<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html
  lang="ko"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="resources/"
  data-template="vertical-menu-template-free"
>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />
    <title>회원가입</title>
    <meta name="description" content="" />
    <!-- CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/demo.css" />
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- JS -->
    <script src="<%=request.getContextPath() %>/resources/js/helpers.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/config.js"></script>
    <style>
    	.col-md-6{margin: 0 auto;}
    	.mt-2{margin-left: 30%; padding-top:20px;}
    </style>
  </head>
  <body>
          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->
            <div class="container-xxl flex-grow-1 container-p-y">
             <!-- Logo -->
              <div class="app-brand justify-content-center toplogo">
                <a href="<%=request.getContextPath() %>/" class="app-brand-link gap-2">
                  <span class="app-brand-text demo text-body fw-bolder">dflix</span>
                </a>
              </div>
              <div class="row">
                <div class="col-md-6">
                  <div class="card mb-8">
                    <h5 class="card-header center fw-semibold d-block">회원가입</h5>
                    
                    <!-- 회원가입 상세 -->
                    <hr class="my-0" />
                    <div class="card-body">
                      <form id="formAccountSettings" class="joinform" action="joinOk" method="POST">
                        <div class="row">
                          <div class="mb-3 col-md-10">
                            <label for="mid" class="form-label block text-light fw-semibold">
                            	아이디
                            </label>
                            <input
                              class="form-control reinput"
                              type="text"
                              id="mid"
                              name="mid"
                              autofocus
                            />
                           <button type="button" class="btn btn-sm btn-outline-primary">중복확인</button>
                          </div>
                         
                          <div class="mb-3 col-md-8">
                            <label for="mname" class="form-label  block text-light fw-semibold">이름</label>
                            <input class="form-control" type="text" name="mname" id="mname" />
                          </div>
                          
                          <div class="mb-3 col-md-8">
                            <label for="mpw" class="form-label block text-light fw-semibold">비밀번호</label>
                            <input
                              type="password"
                              class="form-control"
                              id="mpw"
                              name="mpw"
                            />
                          </div>
                          <div class="mb-3 col-md-8">
                            <label for="mpwRe" class="form-label block text-light fw-semibold">비밀번호 확인</label>
                            <input
                              type="password"
                              class="form-control"
                              id="mpwRe"
                              name="mpwRe"
                            />
                          </div>
                          
						<div class="mb-3 col-md-10">
                            <label for="mnickNm" class="form-label block text-light fw-semibold">닉네임</label>
                            <input class="form-control reinput" type="text" name="mnickNm" id="mnickNm" />
                            <button type="button" class="btn btn-sm btn-outline-primary">중복확인</button>
                          </div>
                          
                          <div class="mb-3 col-md-10">
                            <label for="memail" class="form-label block text-light fw-semibold">E-mail</label>
                            <input
                              class="form-control reinput"
                              type="email"
                              id="memail"
                              name="memail"
                            />
                            <button type="button" class="btn btn-sm btn-outline-primary">중복확인</button>
                          </div>
                          

                          <div class="mb-3 col-md-8">
                            <label class="form-label block text-light fw-semibold" for="mphone">휴대폰번호</label>
                            <div class="input-group input-group-merge">
                              <input
                                type="text"
                                id="mphone"
                                name="mphone"
                                class="form-control"
                              />
                            </div>
                          </div>
                          
                          <div class="mb-3 col-md-8">
                            <label class="form-label block text-light fw-semibold" for="mbirth">생년월일</label>
                            <div class="input-group input-group-merge">
                              <input
                                type="text"
                                id="mbirth"
                                name="mbirth"
                                class="form-control"
                                placeholder="8글자로 쓰세요"
                              />
                            </div>
                          </div>
                       
                        <div class="mb-3 col-md-8">
                          <small class="text-light fw-semibold d-block">성별</small>
                          <div class="form-check form-check-inline mt-3">
                            <input
                              class="form-check-input"
                              type="radio"
                              name="mgender"
                              id="mgender_m"
                              value="f"
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
                            />
                            <label class="form-check-label" for="mgender_f">여</label>
                          </div>
                        </div>

						<div class="mb-3 col-md-8">
                          <small class="text-light fw-semibold d-block">권한</small>
                          <div class="form-check form-check-inline mt-3">
                            <input
                              class="form-check-input"
                              type="radio"
                              name="authority"
                              id="ROLE_ADMIN"
                              value="ROLE_ADMIN"
                            />
                            <label class="form-check-label" for="ROLE_ADMIN">관리자</label>
                          </div>
                          <div class="form-check form-check-inline">
                            <input
                              class="form-check-input"
                              type="radio"
                              name="authority"
                              id="ROLE_USER"
                              value="ROLE_USER"
                            />
                            <label class="form-check-label" for="ROLE_USER">회원</label>
                          </div>
                        </div>
                        
                        <div class="mt-2">
                          <button type="submit" class="btn btn-primary me-2"
                          >회원가입</button>
                          <button type="reset" class="btn btn-outline-secondary">리셋</button>
                        </div>
                       	</div>
                      </form>
                  </div>

                </div>
              </div>
            </div>
            <!-- / Content -->
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->

    <!-- JS -->
    <script src="<%=request.getContextPath() %>/resources/jquery/jquery.js"></script>
    <script src="<%=request.getContextPath() %>/resources/popper/popper.js"></script>
    <script src="<%=request.getContextPath() %>/resources/bootstrap/js/bootstrap.js"></script>
    <script src="<%=request.getContextPath() %>/resources/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/menu.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/main.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/pages-account-settings-account.js"></script>

  </body>
</html>
