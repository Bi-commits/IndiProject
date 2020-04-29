<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" >
		<link rel="stylesheet" href="/resources/css/signup.css" type = "text/css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script type="text/javascript" src="/resources/js/signup.js"></script>
	</head>
<body>
	<div id = "pagetitle">
	회원가입
	</div>
	<div id = "section">
		<div class="signup-inform">
		※모든 항목을 빠짐없이 기재하여 주시기 바랍니다. <br>
		※정확한 정보를 입력하지 않을 경우 불이익이 있을 수 있습니다. <br>
		※ID는 6~12자의 영문과 숫자 조합으로 입력 가능합니다. <br>
		※PW는 최대 16자까지 가능합니다.
		</div>
		<form id = "signupbox" action="/signup" method = "POST">
			<div id = "tablewrap">
				<div class = "table">
					<div class = "table-L">이름</div>
					<div class = "table-R">
						<input type="text" style="width:225px;height:30px;font-size:14pt" class="signup-input" id = "M_name" name="M_name" required="required">                     
					</div>
				</div>
				<div class = "table">
					<div class = "table-L">ID</div>
					<div class = "table-R">
						<input type="text" style="width:225px;height:30px;font-size:14pt" class="signup-input" id = "M_ID" name="M_ID" required="required">
						<button type="button" id="checkyourid">ID 중복확인</button>
					</div>
				</div>
				<div class = "table">
					<div class = "table-L">PW</div>
					<div class = "table-R">
						<input type="password" style="width:225px;height:30px;font-size:14pt" class="signup-input" id = "M_PW" name="M_PW" required="required" maxlength = "16">
					</div>
				</div>
				<div class = "table">
					<div class = "table-L">PW 확인</div>
					<div class = "table-R">
						<input type="password" style="width:225px;height:30px;font-size:14pt" class="signup-input" id = "M_PWR" name="M_PWR" required="required" maxlength = "16">
					</div>
				</div>
				<div class = "table">
					<div class = "table-L">E-mail</div>
					<div class = "table-R">
						<input type="email" style="width:225px;height:30px;font-size:14pt" class="signup-input" id = "M_email" name="M_email" required="required">
					</div>
				</div>
				<div class = "table">
					<div class = "table-L">생년월일<br>(주민번호 앞자리)</div>
					<div class = "table-R">
						<input type="text" style="width:225px;height:30px;font-size:14pt" class="signup-input" id = "M_birth" name="M_birth" required="required" maxlength = "6" onKeyup="this.value=this.value.replace(/[^0-9]/g,'')">
						(주민번호 앞 6자리 입력)
					</div>
				</div>				
				<div class = "table">
					<div class = "table-L">휴대폰번호</div>
					<div class = "table-R">
						<input type="text" style="width:225px;height:30px;font-size:14pt" class="signup-input" id = "M_phone" name="M_phone" required="required" maxlength= "11" onKeyup="this.value=this.value.replace(/[^0-9]/g,'')">
						('-' 는 생략)
					</div>
				</div>
				<div class = "table-F">
					<a href="/login"><button class="signup-comp">가입 완료하기</button></a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>