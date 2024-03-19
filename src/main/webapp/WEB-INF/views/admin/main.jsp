<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

    <title>관리자 메인</title>

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

	<!-- 차트css -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/apex-charts.css" />

    <!-- JS -->
    <script src="<%=request.getContextPath() %>/resources/js/helpers.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/config.js"></script>
  </head>
  <body>
  
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
       <%@ include file="../include/nav/adminNav.jsp" %>

        <!-- 본문 컨테이너 -->
        <div class="layout-page">
          
          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- 본문 -->
            <div class="container-xxl flex-grow-1 container-p-y">
              <div class="row">
                <!-- Bordered Table -->
              <div class="card">
                <h5 class="card-header">일별 박스오피스</h5>
                <div class="card-body">
                  <div class="table-responsive text-nowrap">
                    <table class="table table-bordered">
                      <thead>
                        <tr>
                          <th>순위</th>
                          <th>영화명</th>
                          <th>개봉일</th>
                          <th>매출액</th>
                          <th>누적매출액</th>
                          <th>관객수</th>
                          <th>누적관객수</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>
                            <strong>1</strong>
                          </td>
                          <td>파묘</td>
                          <td>2024.02.22.</td>
                          <td>1234567</td>
                          <td>1234567</td>
                          <td>1234567</td>
                          <td>1234567</td>
                        </tr>
                        <tr>
                          <td>
                            <strong>2</strong>
                          </td>
                          <td>듄:파트2</td>
                          <td>2024.02.22.</td>
                          <td>1234567</td>
                          <td>1234567</td>
                          <td>1234567</td>
                          <td>1234567</td>
                        </tr>
                        <tr>
                          <td>
                            <strong>3</strong>
                          </td>
                          <td>밥 말리: 원 러브</td>
                          <td>2024.02.22.</td>
                          <td>1234567</td>
                          <td>1234567</td>
                          <td>1234567</td>
                          <td>1234567</td>
                        </tr>
                        <tr>
                          <td>
                            <strong>4</strong>
                          </td>
                          <td>윙카</td>
                          <td>2024.02.22.</td>
                          <td>1234567</td>
                          <td>1234567</td>
                          <td>1234567</td>
                          <td>1234567</td>
                        </tr>
                        <tr>
                          <td>
                            <strong>5</strong>
                          </td>
                          <td>윙카</td>
                          <td>2024.02.22.</td>
                          <td>1234567</td>
                          <td>1234567</td>
                          <td>1234567</td>
                          <td>1234567</td>
                        </tr>
                        <tr>
                          <td>
                            <strong>6</strong>
                          </td>
                          <td>윙카</td>
                          <td>2024.02.22.</td>
                          <td>1234567</td>
                          <td>1234567</td>
                          <td>1234567</td>
                          <td>1234567</td>
                        </tr>
                        <tr>
                          <td>
                            <strong>7</strong>
                          </td>
                          <td>윙카</td>
                          <td>2024.02.22.</td>
                          <td>1234567</td>
                          <td>1234567</td>
                          <td>1234567</td>
                          <td>1234567</td>
                        </tr>
                        <tr>
                          <td>
                            <strong>8</strong>
                          </td>
                          <td>윙카</td>
                          <td>2024.02.22.</td>
                          <td>1234567</td>
                          <td>1234567</td>
                          <td>1234567</td>
                          <td>1234567</td>
                        </tr>
                        <tr>
                          <td>
                            <strong>9</strong>
                          </td>
                          <td>윙카</td>
                          <td>2024.02.22.</td>
                          <td>1234567</td>
                          <td>1234567</td>
                          <td>1234567</td>
                          <td>1234567</td>
                        </tr>
                        <tr>
                          <td>
                            <strong>10</strong>
                          </td>
                          <td>윙카</td>
                          <td>2024.02.22.</td>
                          <td>1234567</td>
                          <td>1234567</td>
                          <td>1234567</td>
                          <td>1234567</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <!--/ Bordered Table -->

              </div>

            </div>
            <!-- /본문끝 -->
			<%@ include file="../include/footer/adminFooter.jsp" %>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      
    </div>
    <!-- / Layout wrapper -->

  </body>
</html>
