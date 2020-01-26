<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav
	class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
	id="mainNav">
	<div class="container">
		<a class="navbar-brand js-scroll-trigger" href="${pageContext.request.contextPath}">IU
			Board</a>
		<button
			class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded"
			type="button" data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			Menu <i class="fas fa-bars"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item mx-0 mx-lg-1"><a
					class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
					href="${pageContext.request.contextPath}/notice/noticeList">Notice</a></li>
				<li class="nav-item mx-0 mx-lg-1"><a
					class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
					href="${pageContext.request.contextPath}/product/productist">Product</a></li>
				
				<c:choose>
				<c:when test="${empty member}">
				<li class="nav-item mx-0 mx-lg-1"><a
					class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
					href="${pageContext.request.contextPath}/member/login">Login</a></li>
				
				</c:when>
				<c:otherwise>
				<li class="nav-item mx-0 mx-lg-1"><a
					class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
					href="${pageContext.request.contextPath}/member/logout">Logout</a></li>
				<li class="nav-item mx-0 mx-lg-1"><a
					class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
					href="${pageContext.request.contextPath}/member/modify">myPage</a></li>
					<c:if test="${member.id eq 'iu' }">
					<li class="nav-item mx-0 mx-lg-1"><a
					class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
					href="${pageContext.request.contextPath}/member/list">list</a></li>		
					</c:if>
				</c:otherwise>
					
				</c:choose>
			</ul>
		</div>
	</div>
</nav>