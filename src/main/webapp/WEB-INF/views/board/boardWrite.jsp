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

<title>board Write</title>

<!-- Custom fonts for this theme -->
<script src="//cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>
<script src="../resources/vendor/jquery/jquery.min.js"></script>
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
<script type="text/javascript">
	$(function() {
		$("#btn").click(function() {
			var title = $("#title").val();
			if (title != "") {
				$("#frm").submit();
			} else {
				alert("제목을 입력하세요");
			}
		});

	})
</script>
</head>

<body id="page-top">

	<!-- Navigation -->
	<c:import url="../nav/nav.jsp"></c:import>



	<!-- Portfolio Section -->
	<section class="page-section portfolio" id="portfolio">
		<div class="container-fluid">
			<div class="row">
				<form id="frm" action="${board}Write" method="post">
					<div class="form-group">
						<label for="name">Name:</label> <input type="text"
							class="form-control" id="name" readonly="readonly"
							value="${member.id }" name="name">
					</div>
					<div class="form-group">
						<label for="title">Title:</label> <input type="text"
							class="form-control" id="title" placeholder="Enter Title"
							name="title">
					</div>
					<div class="form-group">
						<label for="content">Content:</label>
						<textarea rows="15" cols="" class="form-control" name="content"></textarea>
					</div>
					<script type="text/javascript">
						CKEDITOR.replace('content')
					</script>

					<input type="button" id="btn" class="btn btn-default" value="등록">
				</form>
			</div>
		</div>
	</section>


	<!-- Footer -->
	<c:import url="../nav/footer.jsp"></c:import>

	<!-- Bootstrap core JavaScript -->

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
