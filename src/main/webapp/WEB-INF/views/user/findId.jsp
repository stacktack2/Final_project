<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html
  lang="ko"
  class="light-style customizer-hide"
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
    <title>아이디 찾기</title>
    <meta name="description" content="" />
    
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/demo.css" />
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/perfect-scrollbar.css" />
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/page-auth.css" />
    
    <!-- JS -->
    <script src="<%=request.getContextPath() %>/resources/js/helpers.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/config.js"></script>
  
  </head>
  <body>
    <!-- Content -->
    <div class="container-xxl">
      <div class="authentication-wrapper authentication-basic container-p-y">
        <div class="authentication-inner py-4">
         
         <!-- Forgot id -->
          <div class="card">
            <div class="card-body">
              <!-- Logo -->
              <div class="app-brand justify-content-center">
                <a href="<%=request.getContextPath() %>/" class="app-brand-link gap-2">
                  <span class="app-brand-text demo text-body fw-bolder">dflix</span>
                </a>
              </div>
              <!-- /Logo -->
              
              <form id="formAuthentication" class="mb-3" action="index" method="POST">
                <div class="mb-3">
                  <label for="inputName" class="form-label">이름</label>
                  <input
                    type="text"
                    class="form-control"
                    id="inputName"
                    name="inputName"
                    autofocus
                  />
                </div>
                <div class="mb-3">
                  <label for="inputBirth" class="form-label">생년월일</label>
                  <input
                    type="text"
                    class="form-control"
                    id="inputBirth"
                    name="inputBirth"
                    autofocus
                  />
                </div>
                <div class="mb-3">
                  <label for="inputPhone" class="form-label">연락처</label>
                  <input
                    type="text"
                    class="form-control"
                    id="inputPhone"
                    name="inputPhone"
                    autofocus
                  />
                </div>
                <button class="btn btn-primary d-grid w-100">아이디 찾기</button>
              </form>
              <div class="text-center">
                <a href="login" class="d-flex align-items-center justify-content-center">
                  	로그인으로 돌아가기
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- / Content -->

    <!-- JS -->
    <script src="<%=request.getContextPath() %>/resources/jquery/jquery.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/popper.js"></script>
    <script src="<%=request.getContextPath() %>/resources/bootstrap/js/bootstrap.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/perfect-scrollbar.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/menu.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/main.js"></script>
  </body>
</html>
