<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	console.log(${result});
	<c:if test="${result==1}">
		<script>
			alert("모집 글쓰기 성공");
			location.href="mate_board";
		</script>
	</c:if>
	<c:if test="${result!=1}">
		<script>
			alert("모집 글쓰기 실패");
			history.go(-1);
		</script>
	</c:if>
</body>
</html>