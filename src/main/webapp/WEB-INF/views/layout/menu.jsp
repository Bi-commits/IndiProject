<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
	<div id = "selector">
		SELECT A MENU	
	</div>
		<c:choose>
			<c:when test="${sessionScope.USER != null }">
				<div class = "navi">
					<div class = "ver"><a href="/">HOME</a></div>
					<div class = "ver"><a href="/noticeboard">공지사항</a></div>
					<div class = "ver"><a href="/manners">관람예절</a></div>
					<div class = "ver"><a href="/reservation">예약</a></div>
					<div class = "ver"><a href="/check">예약내역 확인</a></div>
				</div>
			</c:when>
			<c:otherwise>
				<div class = "navi">
					<div class = "ver"><a href="/">HOME</a></div>
					<div class = "ver"><a href="/noticeboard">공지사항</a></div>
					<div class = "ver"><a href="/manners">관람예절</a></div>
					<div class = "ver"><a href="/reservation">전시 목록</a></div>
				</div>
			</c:otherwise>
		</c:choose>
</body>
</html>