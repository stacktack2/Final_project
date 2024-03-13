<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="ko" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="resources/"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<title>관리자 공지 상세</title>

<meta name="description" content="" />
<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet" />

<!-- CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/demo.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/perfect-scrollbar.css" />

<!-- JS -->
<script src="<%=request.getContextPath()%>/resources/js/helpers.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/config.js"></script>








</head>

<body>

	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">


			<%@ include file="../../include/nav/adminNav.jsp"%>

			<!-- 본문 컨테이너 -->
			<div class="layout-page">

				<!-- Content wrapper -->
				<div class="content-wrapper">
					<!-- 본문 시작 -->
					<div class="container-xxl flex-grow-1 container-p-y">
					
						<h4 class="fw-bold py-3 mb-4">
							공지 게시판
						</h4>
						<!-- Basic Bootstrap Table -->
						<div class="row h-50">
							<div class="card">
								<div class="table-responsive text-nowrap">
									<table class="table">
										<thead>
											<tr>
												<th>샘플 제목입니다.</th>
												<th class="right">2024.03.13</th>
											</tr>
										</thead>
										<tbody class="table-border-bottom-0 ">
											<tr>
												<td colspan=2>본문입니다.</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!--/ Basic Bootstrap Table -->
						<a href="noticeModify"><button style="margin-top:50px" class="right btn btn-primary">수정</button></a>
						<button style="margin-top:50px" class="btn btn-primary">삭제</button>
						
					
					</div>
				</div>
			</div>
		</div>

		<!-- Overlay -->

	</div>
	<!-- / Layout wrapper -->

</body>
</html>
