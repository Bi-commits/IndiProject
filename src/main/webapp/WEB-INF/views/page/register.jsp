<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" >
	<link rel="stylesheet" href="/resources/css/register.css" type = "text/css">	
</head>

<body>
	<div id = "pagetitle">
	새 전시 등록
	</div>
	<div id = "section">
		<div class = "register-inform">
					※모든 항목을 빠짐없이 입력 후 등록을 누르면 등록이 완료됩니다. <br>
					
		</div>
		<div id = "tablewrap">
			<div class = "table">
				<div class = "table-L">전시 제목</div>
				<div class = "table-R">
					<input type="text" style="width:225px;height:30px;font-size:14pt" class="register-input" name="register-input1">
				</div>
			</div>
			<div class = "table">
				<div class = "table-L">장소</div>
				<div class = "table-R">
					<input type="text" style="width:225px;height:30px;font-size:14pt" class="register-input" name="register-input2">
				</div>
			</div>
			<div class = "table">
				<div class = "table-L">전시회 시작 날짜</div>
				<div class = "table-R">
					<input type="text" style="width:225px;height:30px;font-size:14pt" class="register-input" name="register-input3">
				</div>
			</div>
			<div class = "table">
				<div class = "table-L">전시회 종료 날짜</div>
				<div class = "table-R">
					<input type="text" style="width:225px;height:30px;font-size:14pt" class="register-input" name="register-input4">
				</div>
			</div>
			<div class = "table">
				<div class = "table-L">사진 등록</div>
				<div class = "table-R">
					<button class = "imgbtn"> 사진 첨부 </button>
					newexhibition.jpg
				</div>
			</div>
			<div class = "table">
				<div class = "table-L">가격(성인)</div>
				<div class = "table-R">
					<input type="text" style="width:225px;height:30px;font-size:14pt" class="register-input" name="register-input6">
				</div>
			</div>
			<div class = "table">
				<div class = "table-L">가격(청소년)</div>
				<div class = "table-R">
					<input type="text" style="width:225px;height:30px;font-size:14pt" class="register-input" name="register-input7">
				</div>
			</div>
			<div class = "table">
				<div class = "table-L">가격(어린이)</div>
				<div class = "table-R">
					<input type="text" style="width:225px;height:30px;font-size:14pt" class="register-input" name="register-input8">
				</div>
			</div>			
			<div class = "table-D">
				<div class = "table-D-L">상세정보</div>
				<div class = "table-D-R">
					<textarea class = "register-input" style="width:calc(100% - 30px);font-size:14pt" rows="8"></textarea>
				</div>
			</div>
			<div class = "table-F">
				<button class="register-comp">등록 완료하기</button>
			</div>
		</div>
		
		
		
		
		
			
	</div>
	
	
</body>
</html>