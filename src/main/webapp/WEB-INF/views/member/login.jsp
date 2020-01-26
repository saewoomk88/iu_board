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

<title>login</title>

<!-- Custom fonts for this theme -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
	$(function() {
		$("#join").click(function() {
			$(location).attr('href','./join')
		})
		$("#btn").click(function() {
			
		var msg='${param.msg}'
			if(msg != ''){
				alert(msg);
			}
		})
		history.replaceState({}, null, location.pathname);
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
	
	<!-- Masthead -->


	<!-- Portfolio Section -->
	<section class="page-section portfolio" id="portfolio">
		<div class="container-fluid">
			<div class="row">
				<form id="frm" action="login" method="post">
					<div class="form-group">
						<label for="id">ID:</label> <input type="text"
							class="form-control" id="id" name="id" placeholder="아이디">
					</div>
					<div class="form-group">
						<label for="pw">PW:</label> <input type="password"
							class="form-control" id="pw" placeholder="비밀번호" name="pw">
					</div>
					<input type="submit" id="btn" class="btn btn-default" value="로그인">
				
				</form>
				<button class="btn btn-default" id="join">회원가입</button>
			</div>
		</div>
	</section>


</body>

</html>
