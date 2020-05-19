<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<style>
		#gnb{padding:5px; float:left}
		#gnb .p{display:inline-block; height:33px; padding:0 20px;}
		#gnb .submenu{position:absolute; top:100px; left:0; width:100%; height:60px;}
		#gnb .submenu li{display:inline-block; padding:0 25px; line-height:30px;}
		#gnb .p > a:hover{color:red}
	
	</style>
	<script src="jquery-3.4.1.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script>
		$(function (){
			$("#gnb li").mouseover(function (){		
				$(this).children("ul").show();
				$(this).find("a").addClass("on");
			});
			$("#gnb li").mouseout(function (){		
				$(this).children("ul").hide();
				$(this).find("a").removeClass("on");
			});
			
		});

	</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<ul id="gnb">
		<li class="p">
			<a href="#">카테고리</a>
			<ul class="submenu">
				<li><a href="#">핸드메이드</a><br><a href="#">유아동, 완구</a></li>
				<li><a href="#">휴대폰,태블릿</a><br><a href="#">컴퓨터,주변기기</a></li>
				<li><a href="#">가구</a><br><a href="#">생활</a></li>
				<li><a href="#">문구</a><br><a href="#">스타굿즈</a></li>
			</ul>
		</li>
		<li class="p">
			<a class="link" href="#">자동차</a>
		</li>
		<li class="p">
			<a href="#">이벤트</a>
		</li>
		<li class="p">
			<a href="#">헬프센터</a>
		</li>
	</ul>
	<hr style="width:100%">
</body>
</html>