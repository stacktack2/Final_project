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

<title>관리자 극장 목록</title>

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
							극장 시간표 관리
						</h4>
						<div class="row mb-4">
							시간표 api 들어갈 위치
						</div>
						<!-- Basic Bootstrap Table -->
						<div class="row">
							<div class="card">
								<div class="table-responsive text-nowrap">
									<table class="table">
										<thead>
											<tr>
												<th>1관</th>
												<th>2관</th>
												<th>3관</th>
											</tr>
										</thead>
										<tbody class="table-border-bottom-0">
											<tr>
												<td>
													<div>09:40~11:40 / 파묘</div>
													<button class="right m-1 btn btn-primary">삭제</button>
													<button class="right m-1 btn btn-primary" data-bs-toggle="modal" data-bs-target="#backDropModal">수정</button>
												</td>
												<td>
													<div>09:40~11:40 / 파묘</div>
													<button class="right m-1 btn btn-primary">삭제</button>
													<button class="right m-1 btn btn-primary" data-bs-toggle="modal" data-bs-target="#backDropModal">수정</button>
												</td>
												<td>
													<div>09:40~11:40 / 파묘</div>
													<button class="right m-1 btn btn-primary">삭제</button>
													<button class="right m-1 btn btn-primary" data-bs-toggle="modal" data-bs-target="#backDropModal">수정</button>
												</td>
											</tr>
											<tr>
												<td>
													<div>12:40~14:00 / 팜스트릭스</div>
													<button class="right m-1 btn btn-primary">삭제</button>
													<button class="right m-1 btn btn-primary" data-bs-toggle="modal" data-bs-target="#backDropModal">수정</button>
												</td>
												<td>
													<div>12:40~14:00 / 팜스트릭스</div>
													<button class="right m-1 btn btn-primary">삭제</button>
													<button class="right m-1 btn btn-primary" data-bs-toggle="modal" data-bs-target="#backDropModal">수정</button>
												</td>
												<td>
													<div>12:40~14:00 / 팜스트릭스</div>
													<button class="right m-1 btn btn-primary">삭제</button>
													<button class="right m-1 btn btn-primary" data-bs-toggle="modal" data-bs-target="#backDropModal">수정</button>
												</td>
											</tr>
										</tbody>

									</table>
									<div class="mt-3"></div>
									
									<!-- 모달 -->
									<div class="modal fade" id="backDropModal"
										data-bs-backdrop="static" tabindex="-1" style="display: none;"
										aria-hidden="true">
										<div class="modal-dialog">
											<form class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="backDropModalTitle">Modal
														title</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="modal" aria-label="Close"></button>
												</div>
												<div class="modal-body">
													<div class="row">
														<div class="col mb-3">
															<label for="nameBackdrop" class="form-label">Name</label>
															<input type="text" id="nameBackdrop" class="form-control"
																placeholder="Enter Name">
														</div>
													</div>
													<div class="row g-2">
														<div class="col mb-0">
															<label for="emailBackdrop" class="form-label">Email</label>
															<input type="text" id="emailBackdrop"
																class="form-control" placeholder="xxxx@xxx.xx">
														</div>
														<div class="col mb-0">
															<label for="dobBackdrop" class="form-label">DOB</label> <input
																type="text" id="dobBackdrop" class="form-control"
																placeholder="DD / MM / YY">
														</div>
													</div>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-primary">저장</button>
												</div>
											</form>
										</div>
									</div>
									<!-- 모달끝 -->
									
									
								</div>
							</div>
						</div>
						

					
					</div>
				</div>
			</div>
		</div>

		<!-- Overlay -->

	</div>
	<!-- / Layout wrapper -->

<!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="<%=request.getContextPath()%>/resources/jquery/jquery.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/popper.js"></script>
    <script src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/perfect-scrollbar.js"></script>

    <script src="<%=request.getContextPath()%>/resources/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="<%=request.getContextPath() %>/resources/js/main.js"></script>

    <!-- Page JS -->
    <script src="<%=request.getContextPath() %>/resources/js/ui-modals.js"></script>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
  </body>
</html>