<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" >
	<link rel="stylesheet" href="/resources/css/notice.css" type = "text/css">	
</head>

<body>
	<div id = "pagetitle">
	공지사항
	</div>
	<div id = "section">
		<div class = "notice-inform">
					※전시 일정 변경, 휴관일 변경 등 공지가 있을 시 이곳에 공지됩니다. <br>
					※기타 고객문의는 이메일(TheForte@arts.com)로 연락주시기 바랍니다.
		</div>
		
		<button class = "ntc-newbtn">새 글 쓰기</button>
		
		
		<div class = "accordionlist">
			<button class="accordion">코로나19로 인한 전시 일정 변경 안내</button>
			<div class="panel">
			  <p class = "ntcmain">
			  	<br>정부의 '사회적 거리두기' 대책에 동참하고자 부득이하게 일부 전시 일정을 연기합니다.
			  	<br>
			  	<br>-2020.04.08(수) 이후의 모든 전시가 취소 또는 연기됩니다.(정확한 일정은 추후 공지)
			  	<br>-환불을 원하시는 고객님께서는 TheForte@arts.com 으로 이름과 구매내역을 캡쳐해서 보내주시기 바랍니다. 
			  </p>
			  <textarea style="width:100%;" rows="10"></textarea>
			  <div class = "div-btns">
			  	<button class = "ntc-modifybtn">수정하기</button>
			  	<button class = "ntc-delbtn">삭제하기</button>
			  </div>
			</div>
			
			<button class="accordion">'어린이 미술아카데미' 운영 안내</button>
			<div class="panel">
			  <p class = "ntcmain">
			  	<br>The Forte에서는 어린이들의 예술적 꿈을 마음껏 펼칠 수 있는 시간을 마련하고자 매년 '어린이 미술아카데미' 일정을 운영하고 있습니다.
			  	<br>
			  	<br>
			  	<br>1.모집인원 : 25명(남녀 무관)
			  	<br>
			  	<br>2.교육일정 : 10.01(목) ~ 12.31(목)
			  	<br>
			  	<br>3.교육시간 : 14:00 ~ 18:00, 휴식시간 30분
			  	<br>
			  	<br>4.지원자격 :
			  	<br>	- 어린이(13세 이하, 보호자 1인 이상 동반하여야 가능)
			  	<br>	- 위 기간동안 성실히 참여할 수 있는 분
			  	<br>	
			  	<br>5.지원방법 : 전화 또는 이메일 지원만 가능
			  	<br>	- 010-1234-9876
			  	<br>	- TheForte@arts.com
			  	<br>	
			  	<br>여러분들의 많은 지원 바랍니다.  	  
			  </p>
			  <textarea style="width:100%;" rows="10"></textarea>
			  <button class = "ntc-modifybtn">수정하기</button>
			  <button class = "ntc-delbtn">삭제하기</button>
			</div>	
			
			<button class="accordion">Test</button>
			<div class="panel">
			  <p class = "ntcmain">
			  	<br>Test
			  </p>
			  <textarea style="width:100%;" rows="10"></textarea>
			  <button class = "ntc-modifybtn">수정하기</button>
			  <button class = "ntc-delbtn">삭제하기</button>
			</div>
		</div>
		
			
	</div>
	
	<script>
			var acc = document.getElementsByClassName("accordion");
			var i;
			
			for (i = 0; i < acc.length; i++) {
			  acc[i].addEventListener("click", function() {
			    this.classList.toggle("active");
			    var panel = this.nextElementSibling;
			    if (panel.style.display === "block") {
			      panel.style.display = "none";
			    } else {
			      panel.style.display = "block";
			    }
			  });
			}
	</script>
</body>
</html>