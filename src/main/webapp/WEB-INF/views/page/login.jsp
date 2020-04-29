<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" >
		<link rel="stylesheet" href="/resources/css/login.css" type = "text/css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script type="text/javascript" src="/resources/js/login.js"></script>
	</head>
<body>
	<div id = "pagetitle">
	로그인
	</div>
	<div id = "section">
		<form id="loginbox" method="post">
			<div id = "div-L">
				<div id = "L-top">
					<div id = "L-top-1">
						회원가입 시 입력했던 ID와 PW를 입력하세요.
					</div>
					<div id = "L-top-2">
						<input type="text" id="inputID" name="inputID" class="inputbox" placeholder="ID" style="font-size:14pt">					
						<input type="password" id="inputPW" name="inputPW" class="inputbox" placeholder="PW" style="font-size:14pt">
					</div>			
				</div>
		
				<div id = "L-bottom">
					<button id = "L-bottom-1" class = "bottombtn" type = "submit"> 로그인 </button>
				</div>
			</div>
		</form>
		<div id = "div-R">
			<ul>
				<li>로그인 시 The Forte에서 제공하는 보다 다양한 서비스를 이용하실 수 있습니다.</li>
				<li>비회원 예약 서비스는 제공하지 않습니다.</li>
				<li>ID가 없다면 먼저 회원가입을 진행하여 주시기 바랍니다. <a href="/signup"><span class = "redcolor">회원가입 페이지로 이동</span></a></li>
				<li>기타 고객문의는 이메일(TheForte@arts.com)로 연락주시기 바랍니다.</li>
			</ul>
		</div>			
	</div>
</body>
</html>