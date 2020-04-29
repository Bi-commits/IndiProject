<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" >
	<link rel="stylesheet" href="/resources/css/noticeboard.css" type = "text/css">	
</head>
<body>
	<div id = "pagetitle">
	공지사항
	</div>
	<div id = "section">
		<div class = "noticeb-inform">
		</div>
				<div class = "ntc-Top">
					<div class = "ntc-A1">글번호</div>
					<div class = "ntc-A2">글제목</div>
					<div class = "ntc-A3">작성자</div>
					<div class = "ntc-A4">작성날짜</div>
				</div>
				<!-- 목록 -->
				<div class = "ntc-list">
					<div class = "ntc-B1">3</div>
					<div class = "ntc-B2"><a href="/noticeboard_inner">테스트3</a></div>
					<div class = "ntc-B3">관리자3</div>
					<div class = "ntc-B4">2020.04.18</div>
				</div>
				<div class = "ntc-list">
					<div class = "ntc-B1">2</div>
					<div class = "ntc-B2"><a href="/noticeboard_inner">테스트2</a></div>
					<div class = "ntc-B3">관리자2</div>
					<div class = "ntc-B4">2020.04.13</div>
				</div>
				<div class = "ntc-list">
					<div class = "ntc-B1">1</div>
					<div class = "ntc-B2"><a href="/noticeboard_inner">테스트1</a></div>
					<div class = "ntc-B3">관리자1</div>
					<div class = "ntc-B4">2020.01.01</div>
				</div>
				<div class = "ntc-list">
					<div class = "ntc-B1">0</div>
					<div class = "ntc-B2"><a href="/noticeboard_inner">테스트0</a></div>
					<div class = "ntc-B3">관리자1</div>
					<div class = "ntc-B4">2020.01.01</div>
				</div>
		
				<div class = "div-btns">
					<a href="/noticeboard_write"><button class = "ntc-newbtn">새 글 쓰기</button></a>
				</div>
	</div>
</body>
</html>