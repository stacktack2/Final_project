<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<!-- 좌측 메뉴바 -->
        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="<%=request.getContextPath() %>/admin/main" class="app-brand-link">
              <span class="app-brand-text demo menu-text fw-bolder ms-2">dflix</span>
            </a>
            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
              <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
          </div>

          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
            <!-- 관리자메인 -->
            <li class="menu-item active">
              <a href="<%=request.getContextPath() %>/admin/main" class="menu-link">
                <div data-i18n="관리자 메인">관리자 메인</div>
              </a>
            </li>
			<li class="menu-item">
              <a href="<%=request.getContextPath() %>/admin/movieMg/movieMgList" class="menu-link menu-toggle">
                <div data-i18n="영화 관리">영화 관리</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="<%=request.getContextPath() %>/admin/theaters/theatersMgList" class="menu-link menu-toggle">
                <div data-i18n="극장 관리">극장 관리</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="<%=request.getContextPath() %>/admin/notice/noticeList" class="menu-link menu-toggle">
                <div data-i18n="공지관리">공지관리</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="<%=request.getContextPath() %>/admin/inquiry/inquiryList" class="menu-link menu-toggle">
                <div data-i18n="문의관리">문의관리</div>
              </a>
            </li>
          </ul>
        </aside>
</body>
</html>