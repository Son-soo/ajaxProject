<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#buttonSubmit").on("click",function(){
			$.ajax({
				url:'./ajaxServer.jsp',
				type:'post',
				data:{nickName:'이클'},
				dataType : 'json',
				success:function(data){       //data = {"nickName" : "이클"}
				
					console.log("요청 성공");
					console.log(data.nickName)
					$("#nickname").text(data.nickName);
				}
			});
		});
	});
</script>
</head>
<body>
	<input id="buttonSubmit" type="button" value="제출">
	<p id="nickname"></p>
	<p> ajax 통신 성공 </p>
</body>
</html>