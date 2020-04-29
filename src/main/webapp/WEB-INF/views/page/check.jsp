<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" >
		<link rel="stylesheet" href="/resources/css/check.css" type = "text/css">
	</head>
<body>
	<div id = "pagetitle">
	예약내역 확인
	</div>
	<div id = "section">
				<div class = "rsv-inform">
					※회원님의 The Forte 전시예약내역입니다.<br>
					※예약하신 정보가 정확한지 다시 한번 확인하시기 바랍니다. 고객님의 부주의로 인한 책임은 지지 않습니다.<br>
					※매주 월요일은 휴관일입니다.<br>
					※예약 취소를 원하실 경우 취소 버튼을 클릭하시면 됩니다. <br>
					※기타 고객문의는 이메일(TheForte@arts.com)로 연락주시기 바랍니다.
				</div>
				<!-- 상단바 -->
				<div class = "ch-Top">
					<div class = "ch-T1">공연 정보</div>
					<div class = "ch-T2" id = "adult-ch">성인</div>
					<div class = "ch-T2" id = "teen-ch">청소년</div>
					<div class = "ch-T2" id = "child-ch">어린이</div>
					<div class = "ch-T3">취소</div>
					<div class = "ch-T4">예약날짜</div>
				</div>
				<!-- 목록 -->
					<div class = "ch-list">
						<div class = "ch-L1">
							<div class = "ch-image">
								<img alt="img" src="/resources/img/exh-img1.gif" class = "imgofch">
							</div>
							<div class = "ch-explain">
								<span>툴루즈 로트렉 展</span>
								<br>
								<br>
								<span>2020.01.14(화)</span> ~ <span>2020.05.03(일)</span>
								<br>
								<br>
								<span>Hall Andante</span>
							</div>		
						</div>
						<div class = "ch-L2">0</div>
						<div class = "ch-L2">3</div>
						<div class = "ch-L2">1</div>
						<div class = "ch-L3">
							<a href="/reservation"><button class = "cancelbtn">취소하기</button></a>
						</div>
						<div class = "ch-L4">2020.04.12(일)</div>
					</div>
				
				
				
	</div>
</body>
</html>