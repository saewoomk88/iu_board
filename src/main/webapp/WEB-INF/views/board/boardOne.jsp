<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Board One</title>
</head>
<body>

	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<form action="modify" method="post">
			<input type="hidden" name="num" value="${dto.num}">
			<tr>
				<td> 번호  ${board}</td>
				<td> ${dto.num}</td>
			</tr>
			<tr>
				<td> 히트 ${board } </td>
				<td> ${dto.hit} </td>
			</tr>
			<tr>
				<td> 이름 </td>
				<td> <input type="text" name="bName" value="${dto.name}"></td>
			</tr>
			<tr>
				<td> 제목 </td>
				<td> <input type="text" name="bTitle" value="${dto.title}"></td>
			</tr>
			<tr>
				<td> 내용 </td>
				<td> <textarea rows="10" name="bContent" >${dto.content}</textarea></td>
			</tr>
			<tr >
				<td colspan="2"> <input type="submit" value="수정"> &nbsp;&nbsp; <a href="list">목록보기</a> &nbsp;&nbsp; <a href="delete?num=${notice.num}">삭제</a> &nbsp;&nbsp; <a href="boardUpdate?num=${notice.num}">답변</a></td>
			</tr>
		</form>
	</table>
	
</body>
</html>