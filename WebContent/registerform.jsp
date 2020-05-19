<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<style>
		#textbox{
			width:350px;
			height:30px;
			font-family:"Trebuchet MS", Dotum;
			border: 1px solid #c9cdd2;
    		border-radius: 3px;
    		
		}
		.register_btn{
			width:350px;
			height:35px;
			color:#FFFFFF;
			background-color:#0054FF;
			border: 1px solid #FFFFFF;
			font-family:"Trebuchet MS", Dotum;
			border-radius: 3px;
			margin:10px;
		}
		
		.login_btn{
			width:350px;
			height:35px;
			color:#0054FF;
			background-color:#FFFFFF;
			border: 1px solid #FFFFFF;
			font-family:"Trebuchet MS", Dotum;
			border-radius: 3px;
		}
		
		.textbox_area{
			margin:20px;
		}
		
		
		.button_area{
			margin:15px 15px 50px 15px;
		}
	
		#memberLabel1{
			display:block;
			margin:0px 0px 0px -245px;
		}
		
		#memberLabel2{
			display:block;
			margin:0px 0px 0px -285px;
		}
		
		#memberLabel3{
			display:block;
			margin:0px 0px 0px -270px;
		}
		
		#textbox_area{
			margin:20px;
		}
	</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="login" align="center">
	<h1 style="margin:40px;">회원가입</h1>
	<form action="memberChk" method="post">
		<div class="textbox_area">
			<div id="textbox_area">
				<label id="memberLabel1">아이디(이메일)</label>
				<input type="text" id="textbox" name="id" placeholder="이메일 주소 입력">
			</div>
			<div id="textbox_area">
				<label id="memberLabel2">비밀번호</label>
				<input type="password" id="textbox" name="pwd" placeholder="비밀번호">
			</div>
			<div id="textbox_area">
				<label id="memberLabel3">휴대폰번호</label>
				<input type="text" id="textbox" name="phoneNumber" placeholder="숫자만 입력">
			</div>
		</div>
		<div class="button_area">
			<button type="submit" class="register_btn">회원가입</button><br>
			<button type="button" class="login_btn" onclick="location.href='login.jsp'">로그인</button>
		</div>
	</form>
</div>
</body>
</html>