<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" >
	<link rel="stylesheet" href="/resources/css/noticeboard_write.css" type = "text/css">
</head>
<body>
	<div id = "pagetitle">
	공지사항 - 새 글 작성
	</div>
	<div id = "section">
		<div id = "ntc-tablewrap">
			<div class = "ntc-table">
				<div class = "ntc-table-L">제목</div>
				<div class = "ntc-table-R">
					<input type="text" style="width:calc(100% - 30px);height:30px;font-size:14pt" class="register-input" name="register-input8">
				</div>
			</div>			
			<div class = "ntc-table-D">
				<div class = "ntc-table-D-L">공지내용</div>
				<div class = "ntc-table-D-R">
					<textarea class = "register-input" style="width:calc(100% - 30px);font-size:14pt" rows="17"></textarea>
				</div>
			</div>
			<div class = "ntc-table-F">
				<a href="/noticeboard"><button class="write-comp">등록 완료하기</button></a>
			</div>
		</div>

	</div>
</body>
</html>