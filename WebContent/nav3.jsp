<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<style>
		#topMenu{
			height:30px;
			width:850px;
			background-color:#2d2d2d;
		}
		#topMenu ul{
			list-style-type:none;
			margin:0px;
			padding:0px
		}
		#topMenu ul li{
			color:white;
			float:left;
			line-height:30px;
			vertical-align:middle;
			text-align:center;
			position:relative;
		}
				
		.menuLink1{
			text-decoration:none;
			display:block;
			width:150px;
			font-size:12px;
			font-weight:bold;
			font-family:"Trebuchet MS", Dotum;
			color:white;
		}
		
		.menuLink2{
			text-decoration:none;
			display:block;
			width:150px;
			font-size:12px;
			font-weight:bold;
			font-family:"Trebuchet MS", Dotum;
			color:white;
		}
		.topMenuLi:hover .menuLink{
			color:red;
			background-color:#4d4d4d;
		}
		
		.submenuLink{
			color:#2d2d2d;
			background-color:white;
			border:solid 1px black;
			margin-top:-1px;
			text-decoration:none;
			display:block;
			width:150px;
			font-size:12px;
			font-weight:bold;
			font-family:"Trebuchet MS", Dotum;
		}
		
		.longLink{
			width:190px;
			display:inline-block;
		}
		
		.submenu{
			position:absolute;
			overflow:hidden;
			width:900px;
			height:200px;
			display:none;
		}
		
		.submenuLi{		
		}
		.topMenuLi:hover .submenu{
			height:93px;
		}
		.submenuLink:hover{
			color:red;
			background-color:#dddddd;
		}
	</style>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script>
		$(function (){
			$('.menuLink1').mouseover(function (){	
				 $('.submenu').slideToggle('slow');
				
			});
			$('.menuLink1').mouseout(function (){		
				$('.submenu').slideToggle('slow');
				
			});
			
		});

	</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
	<nav id="topMenu">
		<ul> 
			<li class="topMenuLi"> 
				<a class="menuLink1" href="#">카테고리</a> 
				<ul class="submenu"> 
					<li>
						<a href="#" class="submenuLink longLink">핸드메이드</a><br>
						<a href="#" class="submenuLink longLink">유아동,완구</a>
					</li>
					<li>
						<a href="#" class="submenuLink longLink">휴대폰,태블릿</a><br>
						<a href="#" class="submenuLink longLink">컴퓨터,주변기기</a>
					</li> 
					<li>
						<a href="#" class="submenuLink longLink">가구</a><br> 
						<a href="#" class="submenuLink longLink">생활</a>
					</li> 
					<li>
						<a href="#" class="submenuLink longLink">문구</a><br> 
						<a href="#" class="submenuLink longLink">스타굿즈</a>
					</li> 
				</ul> 
			</li> 
			<li>|</li> 
			<li class="topMenuLi" style="float:right"> 
				<a class="menuLink2" href="#">판매하기</a>
			</li> 
			<li style="float:right">|</li> 
		</ul> 
	</nav>
	</div>
</body>
</html>