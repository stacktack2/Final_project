<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
                <div class="col-md-12">

                  <div class="card mb-4">
                    <h5 class="card-header center">회원가입</h5>

                    
                    <!-- 회원가입 상세 -->
                    <hr class="my-0" />
                    <div class="card-body">
                      <form id="formAccountSettings" action="#" method="POST" onsubmit="return false">
                        <div class="row">
                        
                          <div class="mb-3 col-md-6">
                            <label for="mid" class="form-label block">아이디</label>
                            <input
                              class="form-control reinput"
                              type="text"
                              id="mid"
                              name="mid"
                              autofocus
                            />
                           <button type="button" class="btn btn-sm btn-outline-primary">중복확인</button>
                          </div>
                          
                          <div class="mb-3 col-md-6">
                            <label for="mname" class="form-label">이름</label>
                            <input class="form-control" type="text" name="mname" id="mname" />
                          </div>
                          
                          <div class="mb-3 col-md-6">
                            <label for="password" class="form-label">비밀번호</label>
                            <input
                              type="password"
                              class="form-control"
                              id="password"
                              name="password"
                            />
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="passwordRe" class="form-label">비밀번호 확인</label>
                            <input
                              type="password"
                              class="form-control"
                              id="passwordRe"
                              name="passwordRe"
                            />
                          </div>
                          
						<div class="mb-3 col-md-6">
                            <label for="mnicknm" class="form-label block">닉네임</label>
                            <input class="form-control reinput" type="text" name="mnicknm" id="mnicknm" />
                            <button type="button" class="btn btn-sm btn-outline-primary">중복확인</button>
                          </div>
                          
                          <div class="mb-3 col-md-6">
                            <label for="email" class="form-label block">E-mail</label>
                            <input
                              class="form-control reinput"
                              type="email"
                              id="email"
                              name="email"
                            />
                            <button type="button" class="btn btn-sm btn-outline-primary">중복확인</button>
                          </div>
                          

                          <div class="mb-3 col-md-6">
                            <label class="form-label" for="mphone">휴대폰번호</label>
                            <div class="input-group input-group-merge">
                              <input
                                type="text"
                                id="mphone"
                                name="mphone"
                                class="form-control"
                              />
                            </div>
                          </div>
                          
                          <div class="mb-3 col-md-6">
                            <label class="form-label" for="gender">성별</label>
                            <select id="gender" class="select2 form-select">
                              <option value="">선택</option>
                              <option value="M">남</option>
                              <option value="F">여</option>
                            </select>
                          </div>

                        
                        <div class="mt-2">
                          <button type="submit" class="btn btn-primary me-2">회원가입</button>
                          <button type="reset" class="btn btn-outline-secondary">취소</button>
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
