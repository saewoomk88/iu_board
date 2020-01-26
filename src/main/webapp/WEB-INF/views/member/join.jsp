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
	<script src="../resources/vendor/jquery-easing/jquery.easing.min.js"></script>
<script type="text/javascript">
	$(function() {
		
		$("#id").blur(function() {
			var id = $('#id').val();
			if(id.length>=6){
				
					alert("합격");
					return true;
			
			}else{
				alert("6글자 이상");
				
				return false;
			}
		});
		
		$("#pw").blur(function() {
			var exp= /^([0-9]+[a-z])+$/;
			var pw = $('#pw').val();
			if(pw.match(exp) || pw.length>=6 && pw.length<=12){
				
					alert("합격");
					return true;
			
			}else{
				alert("정규식,길이 땡");
				
				return false;
			}
		});
		
		$("#btn").click(function() {
			var id = $("#frm").val();
			
			if (id != "") {
				$("#frm").submit();
			} else {
				alert("입력안한 곳이 있습니다.");
			}
		
		});
		
		
		

	})
</script>
<style type="text/css">
#frm {
	margin-top: 20px;
}
</style>
</head>

<body id="page-top">

	<!-- Navigation -->
	<c:import url="../nav/nav.jsp"></c:import>



	<!-- Portfolio Section -->
	<section class="page-section portfolio" id="portfolio">
		<div class="container-fluid">
			<div class="row">
				<form id="frm" action="join" method="post">
					<div class="form-group">
						<label for="id">ID:</label> <input type="text"
							class="form-control" id="id"
							name="id">
					</div>
					<div class="form-group">
						<label for="pw">PW:</label> <input type="password"
							class="form-control" id="pw"
							name="pw">
					</div>
					<div class="form-group">
						<label for="name">NAME:</label> <input type="text"
							class="form-control" id="name"
							name="name">
					</div>
					<div class="form-group">
						<label for="email">email:</label> <input type="email"
							class="form-control" id="email"
							name="email">
					</div>
					<div class="form-group">
						<label for="phone">phone:</label> <input type="text"
							class="form-control" id="phone" placeholder="-없이 입력하세요"
							name="phone">
					</div>
					<div class="form-group">
						<label for="address">주소:</label> <input type="text"
							class="form-control" id="address"
							name="address">
					</div>
						<div class="form-group">
						<label for="gender">성별:</label>남 <input type="radio"
							class="form-control" id="gender"
							name="gender" value="man">
							여
							<input type="radio"
							class="form-control" id="gender"
							name="gender" value="woman">
					</div>
				

					<input type="button" id="btn" class="btn btn-default" value="가입">
				</form>
			</div>
		</div>
	</section>


	<!-- Footer -->
	<c:import url="../nav/footer.jsp"></c:import>

	<!-- Bootstrap core JavaScript -->

	<script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	

	<!-- Contact Form JavaScript -->
	<script src="../resources/js/jqBootstrapValidation.js"></script>
	<script src="../resources/js/contact_me.js"></script>

	<!-- Custom scripts for this template -->
	<script src="../resources/js/freelancer.min.js"></script>

</body>

</html>
