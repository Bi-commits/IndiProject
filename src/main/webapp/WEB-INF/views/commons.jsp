<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" >
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>commons</title>
		<link rel="stylesheet" href="/resources/css/commons.css" type = "text/css">

		
	</head>
<body>

	<!-- Header부분 -->
	<div id = "header">
		<div id = "header-inner">
			<div class = "empty"></div>
			<div class = "header-logo-part">
		 		<a href="/"><img alt="img" src="/resources/css/img/mainlogo-header.png"></a>
			</div>
			<!-- 로그인을 하지 않았을 경우 -->		  
			<div class = "login-not">
				<div class = "headline">
					<span class = "hl-left"> The Forte </span><br><span class = "hl-right">방문을 환영합니다.</span><br><br>
					
					<div class = "btntag">
						<a href="/login"><button class = "headerbtn">로그인</button></a>
						<a href="/signup"><button class = "headerbtn">회원가입</button></a>
					</div>
				</div>
			</div>
			
			<!-- 로그인을 성공하였을 경우 -->
			<!--
			<div class = "login-ok">
				<div class = "headline">
					<span class = "hl-left"> 최재연님</span><br><span class = "hl-right">방문을 환영합니다.</span><br><br>
					
					<div class = "btntag">
						<a href="/login"><button class = "headerbtn">로그아웃</button></a>			
					</div>
				</div>
			</div>
			-->
		</div>		
	</div>
	
	<!-- 본문 -->
	<div id = "main">

		<div id = "menubar">
			<div id = "selector">
				SELECT A MENU	
			</div>
			<div class = "navi">
				<div class = "ver"><a href="/">HOME</a></div>
				<div class = "ver">예약</div>
				<div class = "ver">예약내역 확인</div>
				<div class = "ver">문의게시판</div>
				<div class = "ver">공지사항</div>
				<div class = "ver">오시는길</div>
			</div>
		</div>
		
		<div id = "mainpage">
			<div id = "pagetitle">
			HOME
			</div>
			<div id = "section">
				
				
				
			</div>
		</div>
	
	</div>
	
	<!-- Footer부분 -->
	<div id = "footer">
		<div id = "footer-inner">
			<div class = "footer-logo-part">
		 		<img alt="img" src="/resources/css/img/mainlogo-footer.png">
			</div>
			<div class = "text-part">
		E-mail : TheForte@arts.com <br>
		copyrighted ⓒ <span class = "bold">The Forte.</span> All rights Reserved.<br>
		모든 저작권은 예술의전당과 대림미술관에 있습니다.
			</div>
		</div>
	</div>
</body>
</html>