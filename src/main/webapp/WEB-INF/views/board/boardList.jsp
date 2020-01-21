<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>board List</title>

<!-- Custom fonts for this theme -->

<link
	href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- Theme CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/freelancer.min.css"
	rel="stylesheet">

</head>

<body id="page-top">

	<!-- Navigation -->
	<c:import url="../nav/nav.jsp"></c:import>

	<!-- Masthead -->


	<!-- Portfolio Section -->
	<section class="page-section portfolio" id="portfolio">
		<div>
			<div class="row tablee">
				<table class="table table-responsive">
					<thead>
						<tr>
							<th class="t1">Num</th>
							<th class="t3">Name</th>
							<th class="t2">Title</th>
							<th class="t2">Content</th>
							<th class="t4">Date</th>
							<th class="t5">Hit</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list }" var="dto">
							<tr class="tr">
								<td>${dto.num}</td>
								<td>${dto.name}</td>
								<td class="num"><a href="${board }One?num=${dto.num}">
									 ${dto.title}
								</a></td>
								<td>${dto.content}</td>
								<td>${dto.date }</td>
								<td>${dto.hit }</td>
							</tr>

						</c:forEach>

					</tbody>
				</table>
			</div>

			<!-- Pagination -->

			<div class="button">
				<a href="${board}Write"><span>Write</span></a>
			</div>
			<ul class="pagination justify-content-center">
				<c:if test="${pager.curBlock>1}">
					<li class="page-item"><a class="page-link"
						href="./${board}List?curPage=${pager.startNum-1}"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							<span class="sr-only">Previous</span>
					</a></li>
				</c:if>
				<c:forEach begin="${pager.startNum }" end="${pager.lastNum }"
					var="i">
					<li class="page-item"><a class="page-link"
						href="./${board }List?curPage=${i}">${i }</a></li>
				</c:forEach>
				<c:if test="${pager.curBlock<pager.totalBlock }">
					<li class="page-item"><a class="page-link"
						href="${board }List?curPage=${pager.lastNum+1}"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
							class="sr-only">Next</span>
					</a></li>
				</c:if>
			</ul>

		</div>
	</section>


	<c:import url="../nav/footer.jsp"></c:import>

	<!-- Bootstrap core JavaScript -->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
	<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Contact Form JavaScript -->
	<script src="/resources/js/jqBootstrapValidation.js"></script>
	<script src="/resources/js/contact_me.js"></script>

	<!-- Custom scripts for this template -->
	<script src="/resources/js/freelancer.min.js"></script>

</body>

</html>
