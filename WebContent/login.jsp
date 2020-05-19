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
    		margin:0px 0px 10px 0px;
		}
		.signup_btn{
			width:350px;
			height:35px;
			color:#FFFFFF;
			background-color:#0054FF;
			border: 1px solid #FFFFFF;
			font-family:"Trebuchet MS", Dotum;
			border-radius: 3px;
		}
		
		.textbox_area{
			margin:15px;
		}
		
		.checkbox_area{
			margin:0px 15px 50px -75px;
		}
		
		.button_area{
			margin:15px 15px 50px 15px;
		}
		
		.signup_btn{
			margin:5px;
		}
		
		.error_msg{
			display:block;
			margin:0px 0px 0px -178px;
		}
	</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="login" align="center">
	<h1>로그인</h1>
	<form action="loginChk" method="post">
		<div class="textbox_area">
			<input type="text" id="textbox" name="id" placeholder="아이디(이메일)">
			<div class="error_msg">이메일을 입력해주세요.</div><br>
			<input type="password" id="textbox" name="pwd" placeholder="비밀번호"><br>
			<div class="checkbox_area">
				<label class="idpreserve">
					아이디 저장
					<input type="checkbox" id="idpreserve">
				</label>
				<label class="loginsustain">
					로그인 상태유지
					<input type="checkbox" id="loginsustain">
				</label>
			</div>
		</div>
		<div class="button_area">
			<button type="submit" class="signup_btn">로그인</button><br>
			<div class="login_find">
				<span class="re_password">
					<a class="re_password_btn" href="findid.jsp">아이디찾기</a>
				</span>
				<span class="gap">|</span>
				<span class="re_password">
					<a class="re_password_btn" href="findpassword.jsp">비밀번호찾기</a>
				</span>
			</div>
		</div>
		<div class="sign_up">
			<span>처음이신가요?</span>
			<span><a href="register.jsp">회원가입</a></span>
		</div>
	</form>
</div>
</body>
</html>