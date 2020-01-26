<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Board One</title>
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
<body>
	<c:import url="../nav/nav.jsp"></c:import>
	<section class="page-section portfolio" id="portfolio">
	<h1 class="mt-4 board">${board}</h1>
	
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<td>번호</td>
			<td>${member.id}</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${member.name}</td>
		</tr>
		<tr>
			<td>email</td>
			<td>${member.email}</td>
		</tr>
		<tr>
			<td>phone</td>
			<td>${member.phone}</td>
		</tr>
		<tr>
			<td>주소</td>
			<td>${member.address}</td>
		</tr>
		<tr>
			<td>성별</td>
			<td>${member.gender}</td>
		</tr><tr>
			<td>가입일</td>
			<td>${member.j_date}</td>
		</tr>
		<tr>
			<td colspan="2">


				<div class="btn">
					<a href="${board }List">List</a>
				</div>
				<div class="btn">
					<a href="delete?num=${dto.num}">삭제</a>
				</div>
				<div class="btn">
					<a href="boardUpdate?num=${dto.num}">답변</a>
				</div>

			</td>
		</tr>
		
	</table>





	</section>
	<c:import url="../nav/footer.jsp"></c:import>

</body>
</html>