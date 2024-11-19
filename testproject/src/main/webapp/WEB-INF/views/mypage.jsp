<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Bangers&family=Gothic+A1&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap"
	rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link href="/css/icons.css" rel="stylesheet">
<link href="/css/common.css" rel="stylesheet">
<link href="/css/mypage.css" rel="stylesheet">
<script src="/js/mypage.js"></script>
<title>Document</title>




</head>

<body>
	<div class="container">

		<!-- 탑 메뉴 -->
		<jsp:include page="header.jsp"></jsp:include>

		<!-- 사이드(왼쪽) 메뉴 -->
		<jsp:include page="side.jsp"></jsp:include>

		<main class="content">
			<div class="track">
				<span style="font-size: 36px; font-weight: 700;">마이페이지</span><br>
				<br>
			</div>



			<div class="profilebox">

				<img
					src="${pageContext.request.contextPath}/uimg/${runner.user_photo}"
					class="profileimg">

				<div style="margin-top: 30px;">
					<span class="nickname">${runner.user_nickname}</span> <span
						class="gender">/ ${runner.user_gender}</span><br> <span
						class="name">${runner.user_name}</span> <span class="phone">${runner.user_phone1}-${runner.user_phone2}-${runner.user_phone3}</span><br>
					<span class="location">${runner.user_address1}
						${runner.user_address2}</span>


					<!-- 알람 아이콘 -->
					<div class="alert">
						<a href="asd" class="bell"><span class="material-symbols-outlined" style="width:22px; height:22px">notifications</span></a>

						<!-- 알람확인표시 -->
						<fmt:parseNumber value="${START1}" var="NUM_TIME1" />

						<c:forEach var="alarm" items="${dbalarm}">
							<fmt:parseNumber value="${alarm.alarm_date_readcount}"
								var="alarm_count" />
							<c:if test="${alarm_count == 0}">
								<div class="dot"></div>
							</c:if>
						</c:forEach>
					</div>
				</div>

			</div>


			<!-- 기록 박스 -->
			<div class="recordbox">
				<div align="center">
					<span class="content1">총 달린 거리</span><br> <br> <span
						class="content2">${runner.user_distance}</span>
				</div>

				<div class="crossline"></div>

				<div align="center">
					<span class="content1">총 달린 시간</span><br> <br> <span
						class="content2">${runner.user_runtime}</span>
				</div>

				<div class="crossline"></div>

				<div align="center">
					<span class="content1">평균 페이스</span><br> <br> <span
						class="content2">4'43"/KM</span>
					<!-- 평균 페이스 단위 수정 -->
				</div>
			</div>



			<!-- 메뉴판 -->
			<table>
				<colgroup>
					<col class="col1">
					<col class="col2">
				</colgroup>
				<tr>
					<td><span class="material-symbols-outlined"> sprint </span></td>
					<td><a href="runnertrack" class="mypagelist">내가 달린 트랙</a></td>
				</tr>

				<tr>
					<td><span class="material-symbols-outlined">edit_document</span></td>
					<td><a href="mywriting" class="mypagelist">내가 작성한 글</a></td>
				</tr>

				<tr>
					<td><span class="material-symbols-outlined"> recommend</span></td>
					<td><a href="/liked_board" class="mypagelist">추천 누른 글</a></td>

				</tr>

				<tr>
					<td><span class="material-symbols-outlined">notifications</span></td>
					<td><a href="asd" class="mypagelist">알람</a></td>
				</tr>

				<tr>
					<td><span class="material-symbols-outlined">person_edit</span></td>
					<td><a href="asd" class="mypagelist">정보수정</a></td>
				</tr>

				<tr>
					<td>&nbsp;<span class="material-symbols-outlined">person_remove</span></td>
					<td><a href="asd" class="mypagelist">회원탈퇴</a></td>
				</tr>
			</table>

		</main>
	</div>
</body>

</html>