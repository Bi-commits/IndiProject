$(document).ready(function(){
	
	$("#loginbox").submit(function(e){
		e.preventDefault();
		
		var params = {
				M_ID: $("#inputID").val(),
				M_PW: $("#inputPW").val()
		};
		console.log("logindata :", params);
		
		$.ajax({
			type: "POST",
			url:  "/login",
			contentType:'application/json; charset=UTF-8',
			data:JSON.stringify(params)
		}).done(function(d){
			console.log(d);
			
			if(d.number == 1) {						// 1 : 해당 ID 없음
				alert(d.MSG);
				location.href = "/login";
			} else if(d.number == 2) {				// 2 : ID,PW 모두 일치
				alert(d.MSG);
				location.href = "/";
			} else {								// 3 : PW 불일치
				alert(d.MSG);
				location.href = "/login";
			}
			
		});
	});
	
});