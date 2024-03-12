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
            <a href="index.html" class="app-brand-link">
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
              <a href="index.html" class="menu-link">
                <div data-i18n="Analytics">관리자 메인</div>
              </a>
            </li>

            <!-- 영화관리 -->
            <li class="menu-item">
              <a href="#" class="menu-link menu-toggle">
                <div data-i18n="Layouts">영화관리</div>
              </a>

              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="#" class="menu-link">
                    <div data-i18n="Without menu">서브메뉴 1</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="#" class="menu-link">
                    <div data-i18n="Without navbar">서브메뉴 2</div>
                  </a>
                </li>
              </ul>
            </li>
            
            <!-- 극장관리 -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <div data-i18n="Layouts">극장관리</div>
              </a>

              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="#" class="menu-link">
                    <div data-i18n="Without menu">서브메뉴 1</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="#" class="menu-link">
                    <div data-i18n="Without navbar">서브메뉴 2</div>
                  </a>
                </li>
              </ul>
            </li>
            
            <!-- 공지관리 -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <div data-i18n="Layouts">공지관리</div>
              </a>

              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="#" class="menu-link">
                    <div data-i18n="Without menu">서브메뉴 1</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="#" class="menu-link">
                    <div data-i18n="Without navbar">서브메뉴 2</div>
                  </a>
                </li>
              </ul>
            </li>
            
            <!-- 문의관리 -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <div data-i18n="Layouts">문의관리</div>
              </a>

              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="#" class="menu-link">
                    <div data-i18n="Without menu">서브메뉴 1</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="#" class="menu-link">
                    <div data-i18n="Without navbar">서브메뉴 2</div>
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </aside>
</body>
</html>