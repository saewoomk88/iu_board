<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>member List</title>

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
<style type="text/css">
<style type="text/css">
a:link{
	color: black;
}
a:visited{
	color: black;
}
a:hover {
	text-decoration: none;
}
</style>

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
							<th class="t1">ID ${iu }</th>
							<th class="t3">NAME${member.id}</th>
							<th class="t2">EMAIL</th>
							<th class="t2">PHONE</th>
							<th class="t4">ADDRESS</th>
							<th class="t5">GENDER</th>
							<th class="t6">J_DATE</th>
						</tr>
					</thead>
					<tbody>
						
					
					<%
					String[] n = request.getParameterValues("mem");
					System.out.println(n); %>
						<c:forEach items="${mem}" var="mDTO">
							<tr>
								<td>${mDTO.id}</td>
								<td>${mDTO.name}</td>
								<td>${mDTO.email}</td>
								<td>${mDTO.phone}</td>
								<td>${mDTO.address }</td>
								<td>${mDTO.gender }</td>
								<td>${mDTO.j_date }</td>
							</tr>
						</c:forEach>

						

					</tbody>
				</table>
			</div>

			<!-- Pagination -->

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
	<script src="../resources/vendor/jquery/jquery.min.js"></script>
	<script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="../resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Contact Form JavaScript -->
	<script src="../resources/js/jqBootstrapValidation.js"></script>
	<script src="../resources/js/contact_me.js"></script>

	<!-- Custom scripts for this template -->
	<script src="../resources/js/freelancer.min.js"></script>

</body>

</html>
