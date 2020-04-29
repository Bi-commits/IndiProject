<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" >
		<link rel="stylesheet" href="/resources/css/payment.css" type = "text/css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script type="text/javascript" src="/resources/js/payment.js"></script>
	</head>
	
	<script>
function onlyNumber(event){
    event = event || window.event;
    var keyID = (event.which) ? event.which : event.keyCode;
    if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
        return;
    else
        return false;
}
 
function removeChar(event) {
    event = event || window.event;
    var keyID = (event.which) ? event.which : event.keyCode;
    if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
        return;
    else
        event.target.value = event.target.value.replace(/[^0-9]/g, "");
}

</script>

<body>
	<div id = "pagetitle">
	결제
	</div>
	<div id = "section">
	
	<!-- 맨위 안내부분 -->
		<div class = "pay-inform">
				※우리 전시관의 개장시간은 10시, 폐장시간은 19시입니다.<br>
				※이에 따라 18시 이후부터는 입장이 불가합니다. 이 점 숙지하시기 바랍니다.<br>
				※매주 월요일은 휴관일입니다.<br>
				※예매 후 관람 기간 내에 1F 로비 앞 안내데스크에서 본인 일치여부를 확인받은 후 티켓을 지급해드립니다. <br>
				※예매는 <span class = "redcolor">전시 첫 날부터 마지막 날까지</span> 자유롭게 가능합니다. <br>
				※<span class = "redcolor">정해진 기간 내에 관람하지 못한 경우 티켓 값은 절대 환불되지 않으니</span> 주의하시기 바랍니다. <br>
				※예매 시 혼잡을 방지하고자 <span class = "redcolor">연령대 별 최대 예매 인원은 7명까지 가능합니다.</span> 10명을 초과할 경우 이메일(TheForte@arts.com)으로 신청하시기 바랍니다. <br>
				※당일 관람을 원하시는 경우에 한하여 현장에서 티켓을 판매하고 있습니다.(1F 로비 앞 안내데스크) <br>
				※기타 고객문의는 이메일(TheForte@arts.com)로 연락주시기 바랍니다.
		</div>
		
		<form id = "paycheck" action="/payment" method="POST">
	<!-- 선택한 전시 정보 -->
			<div class = "pay-list">
				<div class = "pay-image">
					<img alt="img" src="/resources/img/${data.result.E_image}" class = "imgofexh" id = "E_image">
				</div>
				<div class = "exh-explain">
					<span id = "E_name">${data.result.E_name}</span>
					<br>
					<br>
					<span id = "E_datebegin">${data.result.E_datebegin}</span> ~ <span id = "E_dateend">${data.result.E_dateend}</span>
					<br>
					<br>
					<span id = "E_place">${data.result.E_place}</span>
				</div>
			</div>
		
	<!-- 전시회의 가격 -->
			<div class = "pay-price">
				<h3>전시회 가격</h3>
				<p class = "payadult" id = "E_adult">성인 : ${data.result.E_adult}원</p>
				<p class = "payteen" id = "E_teen">청소년 : ${data.result.E_teen}원</p>
				<p class = "paychild" id = "E_child">어린이 : ${data.result.E_child}원</p>
			</div>
		
	<!-- 연령별 요금적용 안내(고정) -->
			<div class = "pay-ageinfo">
				<h3>※연령별 요금적용 안내</h3>
				<p>성인 : 20세 이상</p>
				<p>청소년 : 14세 이상 19세 이하</p>
				<p>어린이 : 13세 이하
			</div>
		
	<!-- 결제창(카드번호) -->
			 <div class = "pay-card">
				<h3>카드번호 입력</h3>
				
					<div class = "card-box-F">
						<div class = "card-box-L">카드사</div>
						<div class = "card-box-R">
							<select class = "cardname" style="width:225px;height:30px;font-size:14pt">
								<option value="" selected="selected">선택하세요</option>
								<option value="우리">우리</option>
								<option value="신한">신한</option>
								<option value="농협">농협</option>
								<option value="기업">기업</option>
								<option value="국민">국민</option>	
							</select>
						</div>
					</div>
					<div class = "card-box">
						<div class = "card-box-L">카드번호</div>
						<div class = "card-box-R">
							<input type="text" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' maxlength="4" style="width:20%;height:30px;font-size:14pt" class="card-input" name="card-input2-A">
							<input type="text" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' maxlength="4" style="width:20%;height:30px;font-size:14pt" class="card-input" name="card-input2-B">
							<input type="text" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' maxlength="4" style="width:20%;height:30px;font-size:14pt" class="card-input" name="card-input2-C">
							<input type="text" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' maxlength="4" style="width:20%;height:30px;font-size:14pt" class="card-input" name="card-input2-D">
						</div>
					</div>
					<div class = "card-box">
						<div class = "card-box-L">유효기간</div>
						<div class = "card-box-R">
							<input type="text" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' maxlength="2" style="width:45%;height:30px;font-size:14pt" class="card-input" name="card-input3-A" placeholder="YEAR(년)">
							<input type="text" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' maxlength="2" style="width:45%;height:30px;font-size:14pt" class="card-input" name="card-input3-B" placeholder="MONTH(월)">
						</div>
					</div>
				
				<br>
				
			 </div>
		
	<!-- 결제창(인원수) -->
			<div class = "pay-cash">
				<h3>인원수 선택</h3>
				<div class = "cash-box">
					<div class = "cash-box-L">성인</div>
					<div class = "cash-box-R-A">
						<a href = "#none"><button class = "cashbtn adult" id = "adult-m"> - </button></a>
						<span class = "howmany-a">0</span>
						<a href = "#none"><button class = "cashbtn adult" id = "adult-p"> + </button></a>
						<a href = "#none"><button class = "cashbtn reset" id = "adult-r"> R </button></a>
					</div>
				</div>
				<div class = "cash-box">
					<div class = "cash-box-L">청소년</div>
					<div class = "cash-box-R-T">
						<a href = "#none"><button class = "cashbtn teen" id = "teen-m"> - </button></a>
						<span class = "howmany-t">0</span>
						<a href = "#none"><button class = "cashbtn teen" id = "teen-p"> + </button></a>
						<a href = "#none"><button class = "cashbtn reset" id = "teen-r"> R </button></a>
					</div>
				</div>
				<div class = "cash-box">
					<div class = "cash-box-L">어린이</div>
					<div class = "cash-box-R-C">
						<a href = "#none"><button class = "cashbtn child" id = "child-m"> - </button></a>
						<span class = "howmany-c">0</span>
						<a href = "#none"><button class = "cashbtn child" id = "child-p"> + </button></a>
						<a href = "#none"><button class = "cashbtn reset" id = "child-r"> R </button></a>
					</div>
				</div>
				<p class = "totalprice" id = "E_price">총 가격 : ${data.result.E_price }원</p>		
			</div>
		
	<!-- 상세정보(dinfo) -->
			<div class = "pay-dinfo">
				<p id = "E_detailinfo">상세정보</p>
				${data.result.E_detailinfo }
			 </div>
	
		
	<!-- 최하단 버튼 -->
			<div class = "pay-btn">
						<a href="/check"><button class = "rsvbtn" id = "rsvtopay">예약 완료하기</button></a>
						
			</div>
		</form>	
				
				
	</div>
</body>
</html>