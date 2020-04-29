<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" >
		<link rel="stylesheet" href="/resources/css/reservation.css" type = "text/css">
	</head>
	
<script>
	function loginfirst(){
		alert("먼저 로그인을 진행해주세요.");
	}

</script>
<body>

	<c:choose>
		<c:when test="${sessionScope.USER != null }">
			<div id = "pagetitle">
			예약
			</div>
		</c:when>
		<c:otherwise>
			<div id = "pagetitle">
			전시 목록
			</div>
		</c:otherwise>
	</c:choose>
	<div id = "section">
				<div class = "rsv-inform">
				※우리 전시관의 개장시간은 10시, 폐장시간은 19시입니다.<br>
				※이에 따라 18시 이후부터는 입장이 불가합니다. 이 점 숙지하시기 바랍니다.<br>
				※매주 월요일은 휴관일입니다.<br>
				※예매 후 관람 기간 내에 1F 로비 앞 안내데스크에서 본인 일치여부를 확인받은 후 티켓을 지급해드립니다. <br>
				※예매는 <span class = "redcolor">전시 첫 날부터 마지막 날까지</span> 자유롭게 가능합니다. <br>
				※<span class = "redcolor">정해진 기간 내에 관람하지 못한 경우 티켓 값은 절대 환불되지 않으니</span> 주의하시기 바랍니다. <br>
				※당일 관람을 원하시는 경우에 한하여 현장에서 티켓을 판매하고 있습니다.(1F 로비 앞 안내데스크) <br>
				※기타 고객문의는 이메일(TheForte@arts.com)로 연락주시기 바랍니다.		
				</div>
				
			<c:forEach var="row" items="${data.result}" varStatus="status">
					<div class = "exh-list">
						<div class = "exh-image">
							<img alt="img" src="/resources/img/${row.E_image}" class = "imgofexh">
						</div>
						<div class = "exh-explain">
							<span>${row.E_name}</span>
							<br>
							<br>
							<span>${row.E_datebegin}</span> ~ <span>${row.E_dateend}</span>
							<br>
							<br>
							<span>${row.E_place}</span>
						</div>
						<div class = "exh-pay">
							<c:choose>
								<c:when test="${sessionScope.USER != null }">
									<a href="/reservation/detail?choice=${row.E_No}"><button class = "exhbtn">예매</button></a>
								</c:when>
							
								<c:otherwise>
									<a href="/login"><button onclick="javascript:loginfirst()" class = "exhbtn">예매</button></a>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
			</c:forEach>
				
	</div>
</body>
</html>