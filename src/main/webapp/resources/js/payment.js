$(document).ready(function(){
	
	//성인 - 감소
	$("#adult-m").click(function(e){
		e.preventDefault();
		
		var target = $('.howmany-a').text();
		var num = parseInt(target, 10);
		num--;
		
		if(num < 0) {
			alert("더이상 줄일 수 없습니다");
			num = 0;
		}
		
		$('.howmany-a').text(num);
		
		
	});
	
	//성인 - 증가
	$("#adult-p").click(function(e){
		e.preventDefault();
		
		var target = $('.howmany-a').text();
		var num = parseInt(target, 10);
		num++;
		
		if(num > 7) {
			alert("최대 예약인원수는 7명입니다.");
			num = 7;
		}
		
		$('.howmany-a').text(num);
		
		
	});
	
	//성인 - 초기화
	$("#adult-r").click(function(e){
		e.preventDefault();
		
		var target = $('.howmany-a').text();
		var num = parseInt(target, 10);
		num = 0;
		
		$('.howmany-a').text(num);	
		
		
	});
	
	//청소년 - 감소
	$("#teen-m").click(function(e){
		e.preventDefault();
		
		var target = $('.howmany-t').text();
		var num = parseInt(target, 10);
		num--;
		
		if(num < 0) {
			alert("더이상 줄일 수 없습니다");
			num = 0;
		}
		
		$('.howmany-t').text(num);
		
		
	});
	
	//청소년 - 증가
	$("#teen-p").click(function(e){
		e.preventDefault();
		
		var target = $('.howmany-t').text();
		var num = parseInt(target, 10);
		num++;
		
		if(num > 7) {
			alert("최대 예약인원수는 7명입니다.");
			num = 7;
		}
		
		$('.howmany-t').text(num);
		
		
	});
	
	//청소년 - 초기화
	$("#teen-r").click(function(e){
		e.preventDefault();
		
		var target = $('.howmany-t').text();
		var num = parseInt(target, 10);
		num = 0;
		
		$('.howmany-t').text(num);
		
		
	});
	
	//어린이 - 감소
	$("#child-m").click(function(e){
		e.preventDefault();
		
		var target = $('.howmany-c').text();
		var num = parseInt(target, 10);
		num--;
		
		if(num < 0) {
			alert("더이상 줄일 수 없습니다");
			num = 0;
		}
		
		$('.howmany-c').text(num);
		
		
	});
	
	//어린이 - 증가
	$("#child-p").click(function(e){
		e.preventDefault();
		
		var target = $('.howmany-c').text();
		var num = parseInt(target, 10);
		num++;
		
		if(num > 7) {
			alert("최대 예약인원수는 7명입니다.");
			num = 7;
		}
		
		$('.howmany-c').text(num);
		
		
	});
	
	//어린이 - 초기화
	$("#child-r").click(function(e){
		e.preventDefault();
		
		var target = $('.howmany-c').text();
		var num = parseInt(target, 10);
		num = 0;
		
		$('.howmany-c').text(num);	
		
		
	});
	
///////////////////////////////////////////////////////////////////////////////
	
	
	//최종
	$("#paycheck").submit(function(e){
		console.log("paycheck1");
		e.preventDefault();
		
		var adultnumber = $(".howmany-a").text();				//성인 선택인원수
		var teennumber = $(".howmany-t").text();				//청소년 선택인원수
		var childnumber = $(".howmany-c").text();				//어린이 선택인원수
		
		console.log(adultnumber);
		console.log(teennumber);
		console.log(childnumber);
		if(adultnumber + teennumber + childnumber == 0) {
			alert("최소 한 명 이상 선택해주세요.");
			return;
		}
		
		var params = {
				E_name:				$("#E_name").val(),
				E_datebegin:		$("#E_datebegin").val(),
				E_dateend:			$("#E_dateend").val(),
				E_place:			$("#E_place").val(),
				E_image:			$("#E_image").val(),
				E_detailinfo:		$("#E_detailinfo").val(),
				E_adult:			$("#E_adult").val(),
				E_teen:				$("#E_teen").val(),
				E_child:			$("#E_child").val(),
				E_price:			$("#E_price").val()
		};
		console.log("payment :", params);
		
		$.ajax({
			type : "POST",
			url : "/payment",
			contentType:'application/json; charset=UTF-8',
			data:JSON.stringify(params)
		}).done(function(d){
			console.log(d);
			if(d > 0) {
				alert("예약성공");
				location.href = "/check";
			} else {
				alert("예약오류");
				return;
			}
		});
	});
	
	
	// 결제금액
	var finalprice = function(){
		var total = 0;		// 총가격
		
		//howmany : 인원수
		var howmanyadult = Number($(".howmany-a").text());
		var howmanyteen = Number($(".howmany-t").text());
		var howmanychild = Number($(".howmany-c").text());
		
		//pay : 연령대별 가격
		var payadult = Number($(".payadult").text());
		var payteen = Number($(".payteen").text());
		var paychild = Number($(".paychild").text());
		
		// 연령대별 총 가격(인원수 * 가격)
		var adultprice = (howmanyadult * payadult);
		var teenprice = (howmanyteen * payteen);
		var childprice = (howmanychild * paychild);
		
		// 총 가격
		total = adultprice + teenprice + childprice;
		$(".totalprice").text(total);
		finalprice(total);
	}
	
});


