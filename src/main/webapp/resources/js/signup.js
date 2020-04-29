$(document).ready(function(){
	var option = {
			  type: "",
			  url: "/signup",
			  data: "",
			  contentType: 'application/json; charset=UTF-8'
	};
	
	//ID중복확인
	$("#checkyourid").click(function(){
		option.url = "/idcheck";
		
		if($("#M_ID").val().length < 6 || ($("#M_ID").val().length > 12)) {
			console.log("checkfailure");
			alert("6자 이상 12자 이내로 입력하시오.");
			return;
		}
		
		var params = {
				M_ID	:	$("#M_ID").val()
		};
		console.log(params);
		option.data = JSON.stringify(params);
		option.type = "PATCH";
		$.ajax(option).done(function(data){
			if(data == 1) {
				alert("이미 존재하는 ID입니다.");
				$("#M_ID").val();
			} else {
				alert("사용 가능한 ID입니다.");
			}
		});
	});
	
	
	
	//최종
	$("#signupbox").submit(function(e){
		console.log("signup1");
		e.preventDefault();
		
		if($("#M_ID").val().length < 6 || ($("#M_ID").val().length > 12)) {
			console.log("checkfailure");
			alert("6자 이상 12자 이내로 입력하시오.");
			return;
		}
		
		var pwd1 = $("#M_PW").val();
		var pwd2 = $("#M_PWR").val();
		
		if(pwd1 != pwd2) {
			alert("비밀번호가 일치하지 않습니다.");
			return;
		}
		
		var params = {
				M_name: 		$("#M_name").val(),
				M_ID: 			$("#M_ID").val(),
				M_PW: 			$("#M_PW").val(),
				M_email: 		$("#M_email").val(),
				M_birth:		$("#M_birth").val(),
				M_phone: 		$("#M_phone").val()
		};
		console.log("signupdata :", params);
		
		$.ajax({
			type:"POST",
			url:"/signup",
			contentType:'application/json; charset=UTF-8',
			data:JSON.stringify(params)
		}).done(function(d){
			console.log(d);
			if(d > 0) {
				alert("회원가입 성공");
	            location.href = "/login";
	         } else {
	        	alert("항목을 빠짐없이 입력해주세요");
	            location.href = "/signup";
	         }
		});
	});
	
	
/*	//ID중복체크
	$("#doublecheck").click(function(){
		console.log("idCheck");
		option.url = "/idcheck";
		if(($("#M_ID").val().length < 8) || ($("#M_ID").val().length > 12)) {
			alert("8자 이상 12자 이하로 입력하시오");
			return;
		}
		
		var params = {
				"M_ID"	:	$("#M_ID").val()
		};
		console.log(params);
		option.data = JSON.stringify(params);
		option.type = "PATCH";
		$.ajax(option).done(function(data){
			if(data == 1) {
				alert("이미 있는 아이디입니다");
				$("#M_ID").val();
			} else {
				alert("사용 가능");
			}
		});
	});*/
	
});