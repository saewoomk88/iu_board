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
		var count = 1;
		var index = 0;
		$("#file_btn")
				.click(
						function() {
							if (count < 6) {
								var r = '<div class="form-group" id="fname'+index+'">';
								var r = r + '<label for="file">사진:</label>';
								var r = r
										+ '<input type="file" class="form-control" id="file" name="fname'+index+'">';
								var r = r
										+ '<span class="remove" title="'+index+'">X</span>';
								var r = r + '</div>';
								$("#file").append(r);
								count++;
								index++;
							} else {
								alert("파일은 최대 5개 입니다.");
							}
						});

		$("#file").on("click", ".remove", function() {
			var t = $(this).attr("title");
			$("#fname" + t).remove();
			count--;
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
				<form id="frm" action="./${board}Write.jsp" method="post"
					enctype="multipart/form-data">
					<div class="form-group">
						<label for="title">Title:</label> <input type="text"
							class="form-control" id="title" placeholder="Enter Title"
							name="title">
					</div>
					<div class="form-group">
						<label for="writer">Writer:</label> <input type="text"
							class="form-control" id="writer" readonly="readonly"
							value="${member.id}" name="writer">
					</div>

					<div class="form-group">
						<label for="contents">Contents:</label>
						<textarea rows="15" cols="" class="form-control" name="contents"></textarea>
					</div>
					<script type="text/javascript">
						CKEDITOR.replace('contents')
					</script>



					<input id="file_btn" type="button" value="추가"
						class="btn btn-default">
					<div class="files" id="file"></div>

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
