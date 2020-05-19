<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
	<style>
		*{
			vertical-align: baseline; font-weight: 400; color: rgb(51, 51, 51); margin: 0px; padding: 0px; border-width: 0px;
   			border-style: initial; border-color: initial; border-image: initial;
		}
		:lang(ko){
			font-family: "Noto Sans KR", sans-serif, 돋움, Dotum, Arial; -webkit-font-smoothing: antialiased;
		}
		
		.product{
			max-width:980px;
			margin:0 auto;
		}
		.regist_top{ 
			margin-bottom:10px; border:1px solid #e5e5ed; text-align:center;
		}
		.regist_box_top{ margin:0 auto; padding:17px 0; text-align:center; display: inline-block;
		}
		.regist_box{ 
			background-color:#fff; border:1px solid #ddd; margin-bottom:30px;
		}
		.dealmethod{
			margin-block-start:0em;
			margin-block-end:0em;
			margin-inline-start:0px;
			margin-inline-end:0px;
			padding-inline-start:0px;
			list-style:none;
		
		}
		
		#mainDiv{
			height:75px;
			margin:0 20px 20px;
		
		}
		.description{
			width:95%; height:1500px; margin:30px 30px 0 30px;
		}
		.description dl{
			width:100%; margin:0 0 35px;
		}
		.description dl dt{
			width:20%; float:left; line-height:40px; letter-spacing:-.8px; font-weight:700;
		}
		.description dl dd{
			width:80%; float:left; position:relative;
		}		
		.description dl dt label{
			font-weight:700; font-size:15px;
		}
		
		.description dl dt span.photo_max{
			font-size:12px; margin-left:5px;
		}
		
		ul{
			display:block; margin-block-start:1em; margin-block-end:1em; margin-inline-start:0px; margin-inline-end:0px;
			padding-inline-start:42px; list-style:none;
		}
		.hellopay_box_area{
			display:block; height:20px;
		}
		.hellopay_box_area ul li{
			float:left;
		}
		
		.hellopay_direct_notice{
			margin:11px 0 0; background-color:#f5f6f7; padding:7px 10px; border-radius:3px; height:20px; width:630px;
		}
		li{
			display:list-item; text-align:-webkit-match-parent; float:left;
		}
		.option_checkbox{
			padding-left:24px; font-size:14px; margin-right:30px; float:left;
		}
		.normal_notice{
			color:#72787f; letter-spacing:-.8px; font-size:13px; float:left;
		}
		
		.regist_image_dl{
			height:580px;
			margin:0;
		
		}
		.image_list{
			width:720px; height:510px; padding-inline-start: 0px; margin-block-start:0em; margin-block-end:0em;
		}
		
		.image_list li{
			width:148px; float:left; border:1px solid #e8ebeb; background-color:#fff; margin-right:16px; margin-bottom:20px;
		}
		.multiple{
			display:none;
		}
		.up_img_box{
			position:relative; outline:1px solid #ddd; background-color:#fff; width:148px; height:148px;
		}
		
		.item_img{
			position:absolute; width:148px; height:148px; left:5; top:5;
		}
		img{
			vertical-align:top;
		}
		.up_img_label{
			position:absolute; top:0; background-color:#0484f6; color:#fff; font-size:14px;
			letter-spacing:-.3px; padding: 4px 0px; text-align:center; width:78px;
		}
		.up_img_description{
			margin:-10px 0 10px; position:relative; height:30px;
		}
		.up_img_description_title{
			color:#939393; letter-spacing:-.3px; font-size:14px; float:left;
		}
		.up_img_description img{
			width:15px; float:left; margin-left:5px; margin-top:2px;
		}
		.up_img_description .up_img_hover{
			display:none;
		}
		
		.watermark_box_area{
			padding:12px 0 20px;
		}
		.can_barter_check{
			padding-top:0; position:relative; display:inline-block; cursor:pointer;
		}
		.no_feature_option{
			margin-right:0; padding-left:24px; font-size:14px; float:left; display:block; position:relative;
			cursor:pointer; color:#444; line-height:21px;
		}
		.checkbox{
			position:absolute; top:2px; left:0; height:15px; width:15px; background:#fff; border:1px solid #c9cdd2;
		}
		
		input[type=radio]{
			position:absolute; height:15px; width:15px; background:#fff; border:1px solid #c9cdd2; border-radius:100%;
		}
		.question{
			width:15px; float:left; margin-left:8px; margin-top:1px;
		}
		
		#title{
			height:44px;
		}
		
		.subcategory{
			-webkit-appearance:none;
			font-size:14px;
			width:155px;
			height:38px;
			border-radius:2px;
			padding:10px;
			background-color:#fff;
			line-height:17px;
		
		}
		#category{
			height:44px;
		}
		
		#content{
		 	height:173px;
		}
		
		.sell_method_box{
			height:41px;
		}
		input[type=text]{
			-webkit-appearance:none; padding:8px 3px 8px 9px; font-size:14px; outline:none; box-sizing:border-box; line-height:20px;
			border:1px solid #e8ebed; 
		}
		.title_input{
			width:100%; height:38px; text-align:left;
		}
		.item_recommend_box{
			margin-top:6px;
		}
		.item_select_box{
			position:relative; width:155px; float:left;
		}
		.item_select_box select{
			-webkit-appearance:none; font-size:14px; width:155px; height:38px; padding:10px; background-color:#fff;
			border:1px solid #e8ebed; line-height:17px; border-radius:2px;
		}
		
		option{
			font-weight:normal; white-space:pre; min-height:1.2em; padding:0px 2px 1px;
		}
		.
		.item_select_margin{
			margin-left:11px;
		}
		
		.introduce{
			-webkit-writing-mode:horizontal-tb!important;
			text-rendering:auto;
			letter-spacing:normal;
			word-spacing:normal;
			text-transform:none;
			display:inline-block;
			text-align:start;
			resize:auto;
			width:80%;
			height:168px;
			border:1px solid #e8ebed; padding:8px 3px 8px 9px;
		}
		
		.tag_open_btn{
			display:inline-block; width:85px; height:38px; line-height:38px; border:1px solid #e0e0e0; text-align:center; 
			cursor:pointer; font-size:11px;
		}
		.item_status_list{
			height:56px;
			display: block;
   		 	list-style-type: none;
    		margin-block-start: 0em;
    		margin-block-end: 0em;
    		margin-inline-start: 0px;
    		margin-inline-end: 0px;
    		padding-inline-start: 0px;
		}
		.item_status{
			display:inline-block; width:85px; line-height:38px; text-align:center; cursor:pointer;
			margin-right:10px; 
		}
		
		.text_wrapper{
			border:1px solid #e8ebed; color:#545353; cursor:pointer; display:inline-block; width:85px; 
			line-height:38px; text-align:center;  margin-right:10px;
		}
		.text_wrapper_click{
			border:1px solid #0484f6; background-color:#0484f6;
			display:inline-block; width:85px; height:38px; line-height:38px; text-align:center; 
			cursor:pointer; margin-right:10px; 
		}
		.text_click{
			color:#fff; font-size:11px;
		}
		
		.text{
			font-size:11px;
		}
		.hellopay_option_box{
			height:41px; margin:0 20px 30px;
		}
		.box_price_area{
			margin:0
		}
		
		.box_price_text{
			margin-left:8px;
		}
		
		.sell_type_input{
			width:281px; height:38px; text-align:right;
		
		}
		.etc_options{
			margin:10px 0 0;
		}
		
		.feature_option{
			margin-right:0;
		}
		
		dt span{
			font-size:15px; color:#989898;
		}
		.close_button{
			position:absolute; display:inline-block; width:14px; height:14px; overflow:hidden; top:13px; left:310px;
		}
		
		.my_location_input{
			width:392px; float:left; margin-right: 10px;
		}
		.my_location_map{
			float:left; margin-right:10px; background:#fff; width:91px;; height:36px; cursor:pointer;
			border:1px solid #e8ebed; 
		}
		.my_location_map span{
			color:#545353; font-size:13px; height:100%; display:block; text-align:center; line-height:36px;
		}
		
		.item_notice{
			margin:20px 20px 0;
		}
		.text_bold{
			font-size:13px; font-weight:700;
		}
		.text_bottom{
			font-size:12px; color:#545353; margin-top:9px; line-height:1.5; letter-spacing:-.8px;
		}
		
		.item_submit_box{
			text-align:center; margin:20px 20px 45px;
		}
		
		.item_area_submit_box{
			width:100%;
		}
		.btn_item_cancel{
			width:177px; background-color:#adb1c5; color:#fff; padding:18px 0; font-size:15px; margin-right:35px;
		}
		.btn_item_submit{
			width:177px; background-color:#0484f6; color:#fff; padding:18px 0; font-size:15px;
		}
		
		.description dl dt span{
			font-size:15px; color:#989898;
		}
		
		input[type=radio]{
		display: none;
		}
	</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="jquery-3.4.1.min.js"></script>
<script>
	function selectCt(e) {
		var categorycl01 = [ "수제패션", "기타수제품" ];
		var categorycl01Val = [ "cp01-1", "cp01-2" ];
		var categorycl02 = [ "삼성", "애플", "LG", "기타 휴대폰", "태블릿", "액세서리,주변기기" ];
		var categorycl02Val = [ "cp02-1", "cp02-2", "cp02-3", "cp02-4",
				"cp02-5", "cp02-6" ];
		var categorycl03 = [ "침실가구", "거실가구", "수납가구", "주방가구" ];
		var categorycl03Val = [ "cp03-1", "cp03-2", "cp03-3", "cp03-4" ];
		var categorycl04 = [ "문구용품", "사무용품" ];
		var categorycl04Val = [ "cp04-1", "cp04-2" ];
		var categorycl05 = [ "신생아,유아의류", "아동의류", "유아동잡화", "유아동생활용품" ];
		var categorycl05Val = [ "cp05-1", "cp05-2", "cp05-3", "cp05-4" ];
		var categorycl06 = [ "노트북", "데스크탑", "모니터", "컴퓨터부품" ]
		var categorycl06Val = [ "cp06-1", "cp06-2", "cp06-3", "cp06-4" ];
		var target = document.getElementById('categoryPage');

		target.options.length = 0;

		if (e.value == "cl01") {
			var d = categorycl01;
			var f = categorycl01Val;
		} else if (e.value == "cl02") {
			var d = categorycl02;
			var f = categorycl02Val;
		} else if (e.value == "cl03") {
			var d = categorycl03;
			var f = categorycl03Val;
		} else if (e.value == "cl04") {
			var d = categorycl04;
			var f = categorycl04Val;
		} else if (e.value == "cl05") {
			var d = categorycl05;
			var f = categorycl05Val;
		} else if (e.value == "cl06") {
			var d = categorycl06;
			var f = categorycl06Val;
		}

		for (x in d) {
			var opt = document.createElement("option");
			opt.value = f[x];
			opt.innerHTML = d[x];
			target.appendChild(opt);
		}

	}
</script>
<script>
	$(function() {
		$("#gdsImg0").change(function() {
			if (this.files && this.files[0]) {
				var reader = new FileReader;
				reader.onload = function(data) {
					$("#scr0").attr("src", data.target.result).width(148);
				}
				reader.readAsDataURL(this.files[0]);
			}
		});
		
		$("#gdsImg1").change(function() {
			if (this.files && this.files[0]) {
				var reader = new FileReader;
				reader.onload = function(data) {
					$("#scr1").attr("src", data.target.result).width(148);
				}
				reader.readAsDataURL(this.files[0]);
			}
		});
		
		$("#gdsImg2").change(function() {
			if (this.files && this.files[0]) {
				var reader = new FileReader;
				reader.onload = function(data) {
					$("#scr2").attr("src", data.target.result).width(148);
				}
				reader.readAsDataURL(this.files[0]);
			}
		});
		
		$("#gdsImg3").change(function() {
			if (this.files && this.files[0]) {
				var reader = new FileReader;
				reader.onload = function(data) {
					$("#scr3").attr("src", data.target.result).width(148);
				}
				reader.readAsDataURL(this.files[0]);
			}
		});
		
		$("#gdsImg4").change(function() {
			if (this.files && this.files[0]) {
				var reader = new FileReader;
				reader.onload = function(data) {
					$("#scr4").attr("src", data.target.result).width(148);
				}
				reader.readAsDataURL(this.files[0]);
			}
		});
		
		$("#gdsImg5").change(function() {
			if (this.files && this.files[0]) {
				var reader = new FileReader;
				reader.onload = function(data) {
					$("#scr5").attr("src", data.target.result).width(148);
				}
				reader.readAsDataURL(this.files[0]);
			}
		});
		
		$("#gdsImg6").change(function() {
			if (this.files && this.files[0]) {
				var reader = new FileReader;
				reader.onload = function(data) {
					$("#scr6").attr("src", data.target.result).width(148);
				}
				reader.readAsDataURL(this.files[0]);
			}
		});
		
		$("#gdsImg7").change(function() {
			if (this.files && this.files[0]) {
				var reader = new FileReader;
				reader.onload = function(data) {
					$("#scr7").attr("src", data.target.result).width(148);
				}
				reader.readAsDataURL(this.files[0]);
			}
		});
		
		$("#gdsImg8").change(function() {
			if (this.files && this.files[0]) {
				var reader = new FileReader;
				reader.onload = function(data) {
					$("#scr8").attr("src", data.target.result).width(148);
				}
				reader.readAsDataURL(this.files[0]);
			}
		});
		
		$("#gdsImg9").change(function() {
			if (this.files && this.files[0]) {
				var reader = new FileReader;
				reader.onload = function(data) {
					$("#scr9").attr("src", data.target.result).width(148);
				}
				reader.readAsDataURL(this.files[0]);
			}
		});
		
		$("#gdsImg10").change(function() {
			if (this.files && this.files[0]) {
				var reader = new FileReader;
				reader.onload = function(data) {
					$("#scr10").attr("src", data.target.result).width(148);
				}
				reader.readAsDataURL(this.files[0]);
			}
		});
		
		$("#gdsImg11").change(function() {
			if (this.files && this.files[0]) {
				var reader = new FileReader;
				reader.onload = function(data) {
					$("#scr11").attr("src", data.target.result).width(148);
				}
				reader.readAsDataURL(this.files[0]);
			}
		});

	});
	
	function submitOk(){
		document.getElementById("fo").submit();
	}
</script>
<script>
	function chkStatus1(obj, num){
		var index = [1, 2, 3, 4];
		for(x in index){
			console.log(x);
			document.getElementById("text_wrap"+index[x]).style.backgroundColor = "#FFFFFF";
			document.getElementById("text_wrap"+index[x]).style.border = "1px solid #E8EBED"
			document.getElementById("text"+index[x]).style.color = "#000000";	
		}		
		document.getElementById("text_wrap"+num).style.backgroundColor = "#0484f6";
		document.getElementById("text_wrap"+num).style.border = "1px solid #E8EBED"
		document.getElementById("text"+num).style.color = "#FFFFFF";
	}
	
	function chkStatus2(obj, num){
		var index2 = [1, 2, 3, 4, 5];
		for(y in index2){
			document.getElementById("text_wrap0"+index2[y]).style.backgroundColor = "#FFFFFF";
			document.getElementById("text_wrap0"+index2[y]).style.border = "1px solid #E8EBED"
			document.getElementById("text0"+index2[y]).style.color = "#000000";	
		}
		document.getElementById("text_wrap0"+num).style.backgroundColor = "#0484f6";
		document.getElementById("text_wrap0"+num).style.border = "1px solid #E8EBED"
		document.getElementById("text0"+num).style.color = "#FFFFFF";
		
	}
</script>
</head>
<body>
<jsp:useBean id="pdao" class="Info.ProductDataDAO" />
<jsp:useBean id="cdao" class="category.CategoryDAO" />
	<form id="fo" action="register.jsp" method="post" enctype="multipart/form-data">
	<div class="product">
		<div class="regist_top">
			<div class="regist_box_top">
				<div style="font-weight:700">상품 등록</div>
			</div>
		</div>
		<div class="regist_box">
			<div class="description">
				<dl id="mainDiv">
					<dt><label style="color:rgb(51,51,51);">거래방법</label></dt>
					<dd>
						<div class="hellopay_box_area">
							<ul class="dealmethod">
								<li>
									<input type="radio" name="payment" value="safe">
									<label class="option_checkbox">안전결제</label>
								</li>
								<li>
									<input type="radio" name="payment" value="direct">
									<label class="option_checkbox">직거래</label>
								</li>
							</ul>
						</div>
						<div class="hellopay_direct_notice">
							<span class="normal_notice">헬로페이만 선택 후 등록시 노출, 할인 혜택 지원으로 빠른 판매를 도와드립니다.</span>
						</div>
					</dd>				
				</dl>
				<dl class="regist_image_dl" id="registImage">
					<dt>
						<label style="color:rgb(51,51,51);">상품사진</label>
						<span class="photo_max">*최대 12장</span>
					</dt>
					<dd>
						<ul class="image_list">
							<div>
								<li>
									<div class="up_img_box">
										<input type="file" name="file0" id="gdsImg0" multiple class="multiple"/>
										<img src="img_car_pic_basic.png" class="item_img"
											alt="상품 등록 이미지" onclick="document.all.file0.click();" id="scr0"
											name="picture00">
									</div>
								</li>
							</div>
							<div>
								<li>
									<div class="up_img_box">
										<input type="file" name="file1" id="gdsImg1" multiple class="multiple"/>
										<img src="img_car_pic_basic.png" class="item_img"
											alt="상품 등록 이미지" onclick="document.all.file1.click();" id="scr1"
											name="picture01">
									</div>
								</li>
							</div>
							<div>
								<li>
									<div class="up_img_box">
										<input type="file" name="file2" id="gdsImg2" multiple class="multiple"/>
										<img src="img_car_pic_basic.png" class="item_img"
											alt="상품 등록 이미지" onclick="document.all.file2.click();" id="scr2"
											name="picture02">
									</div>
								</li>
							</div>
							<div>
								<li>
									<div class="up_img_box">
										<input type="file" name="file3" id="gdsImg3" multiple class="multiple"/>
										<img src="img_car_pic_basic.png" class="item_img"
											alt="상품 등록 이미지" onclick="document.all.file3.click();" id="scr3"
											name="picture03">
									</div>
								</li>
							</div>
							<div>
								<li>
									<div class="up_img_box">
									<input type="file" name="file4" id="gdsImg4" multiple class="multiple"/>
										<img src="img_car_pic_basic.png" class="item_img"
											alt="상품 등록 이미지" onclick="document.all.file4.click();" id="scr4"
											name="picture04">
									</div>
								</li>
							</div>
							<div>
								<li>
									<div class="up_img_box">
										<input type="file" name="file5" id="gdsImg5" multiple class="multiple"/>
										<img src="img_car_pic_basic.png" class="item_img"
											alt="상품 등록 이미지" onclick="document.all.file5.click();" id="scr5"
											name="picture05">
									</div>
								</li>
							</div>
							<div>
								<li>
									<div class="up_img_box">
										<input type="file" name="file6" id="gdsImg6" multiple class="multiple"/>
										<img src="img_car_pic_basic.png" class="item_img"
											alt="상품 등록 이미지" onclick="document.all.file6.click();" id="scr6"
											name="picture06">
									</div>
								</li>
							</div>
							<div>
								<li>
									<div class="up_img_box">
										<input type="file" name="file7" id="gdsImg7" multiple class="multiple"/>
										<img src="img_car_pic_basic.png" class="item_img"
											alt="상품 등록 이미지" onclick="document.all.file7.click();" id="scr7"
											name="picture07">
									</div>
								</li>
							</div>
							<div>
								<li>
									<div class="up_img_box">
										<input type="file" name="file8" id="gdsImg8" multiple class="multiple"/>
										<img src="img_car_pic_basic.png" class="item_img"
											alt="상품 등록 이미지" onclick="document.all.file8.click();" id="scr8"
											name="picture08">
									</div>
								</li>
							</div>
							<div>
								<li>
									<div class="up_img_box">
										<input type="file" name="file9" id="gdsImg9" multiple class="multiple"/>
										<img src="img_car_pic_basic.png" class="item_img"
											alt="상품 등록 이미지" onclick="document.all.file9.click();" id="scr9"
											name="picture09">
									</div>
								</li>
							</div>
							<div>
								<li>
									<div class="up_img_box">
										<input type="file" name="file10" id="gdsImg10" multiple class="multiple"/>
										<img src="img_car_pic_basic.png" class="item_img"
											alt="상품 등록 이미지" onclick="document.all.file10.click();" id="scr10"
											name="picture10">
									</div>
								</li>
							</div>
							<div>
								<li>
									<div class="up_img_box">
										<input type="file" name="file11" id="gdsImg11" multiple class="multiple"/>
										<img src="img_car_pic_basic.png" class="item_img"
											alt="상품 등록 이미지" onclick="document.all.file11.click();" id="scr11"
											name="picture11">
									</div>
								</li>
							</div>
						</ul>
						<div class="up_img_label">대표이미지</div>
						<div class="up_img_description" style="display:block;">
							<span class="up_img_description_title">*첫번째 사진은 직접 촬영한 상품 사진을 등록해주세요.</span>
							<img src="https://ccimage.hellomarket.com/web/2019/ad/ico_question_gr_60x60.png" alt="물음표이미지">
							<div class="up_img_hover">
								<span>판매자의 상품 보유 유무와 실물 상태 확인을 위해 직접 촬영한 실제 상품 사진을 첫번째 이미지로 첨부해주시기 바랍니다.</span>
								<span class="img_hover_margin">상품 첫번째 이미지에 실제 사진이 첨부되지 않은 경우, 사전안내 없이 수정 또는 삭제될 수 있습니다.</span>
								<span class="img_hover_margin">*삽니다. 무형의 상품 제외</span>
							</div>
						</div>
						<div class="box_option box_area watermark_box_area" style="display:block;">
							<div class="can_barter_check">
								<label class="no_feature_option">
									사진에 워터마크 표시
									<input type="checkbox" name="watermark" class="checkbox">
								</label>
								<img class="question" src="https://ccimage.hellomarket.com/web/2019/ad/ico_question_gr_60x60.png" alt="물음표이미지">
							</div>
						</div>
					</dd>
				</dl>
				<dl id="title">
					<dt><label style="color:rgb(51,51,51);">제목</label></dt>
					<dd>
						<input name = "title" type="text" class="title_input" placeholder="상품 제목을 입력하세요">
						<ul class="item_recommend_box"></ul>
					</dd>
				</dl>
				<dl id="category">
					<dt><label style="color:rgb(51,51,51);">카테고리</label></dt>
					<dd>
						<div class="item_select_box">
							<select id="category" name="category" onchange="selectCt(this)">
								<option>카테고리 선택</option>
								<c:forEach var="list" items="${cdao.getCategory() }">
									<option value="${list.getCatecode() }">${list.getCatename() }</option>
								</c:forEach>
							</select> 
						</div>
						<div class="item_select_margin" style="float:left; width:155px; height:38px; margin-left:11px; border:1px solid #e8ebed; text-align:center; display:inline-block;">
							<select class="subcategory" id="categoryPage" name="categoryPage">
								<option >하위 카테고리</option>
							</select>
						</div>
					</dd>
				</dl>
				<dl id="content">
					<dt><label style="color:rgb(51,51,51);">상품설명</label></dt>
					<dd>
						<textarea name="description" rows="5" class="introduce" 
							placeholder="상품 정보를 상세하게 적어보세요.&#13;&#10;설명되지 않은 하자나 문제 발생시 책임은 판매자에게 있습니다.&#13;&#10;- 구매정보(구매일시, 구매시 가격)&#13;&#10;- 상품 정보(사이즈, 색상, 브랜드 등)&#13;&#10;- 상품 사용감(스크래치, 고장, 수리 여부 등)"></textarea>
					</dd>
				</dl>
				<dl style="height:41px;">
					<dt><label>태그</label></dt>
					<dd><span class="tag_open_btn">태그입력</span></dd>
				</dl>
				<dl style="height:41px;">
					<dt><label>상품상태</label></dt>
					<dd>
						<ul class="item_status_list">
							<li class="item_status" >
								<div class="text_wrapper" id="text_wrap1">
									<input type="radio" name="userType" id="type1" value="NotUsed" onclick="chkStatus1(this, 1)">
									<div class="text" ><label id="text1" for ="type1">새상품</label></div>
								</div>
							</li>
							<li class="item_status">
								<div class="text_wrapper" id="text_wrap2">
								<input type="radio" name="userType" id="type2" value="AsNew" onclick="chkStatus1(this, 2)">
									<div class="text"><label id="text2" for ="type2">거의 새것</label></div>
								</div>
							</li>
							<li  class="item_status">
								<div class="text_wrapper_click" id="text_wrap3">
								<input type="radio" name="userType" id="type3" value="Secondhand" onclick="chkStatus1(this, 3)">
									<div class="text"><label id="text3" for ="type3" style="color:white;">중고</label></div>
								</div>
							</li>
							<li class="item_status">
								<div class="text_wrapper" id="text_wrap4">
								<input type="radio" name="userType" id="type4" value="SomeFlaws" onclick="chkStatus1(this, 4)">
									<div class="text"><label id="text4" for ="type4">하자있음</label></div>
								</div>
							</li>
						</ul>
					</dd>

				</dl>
				<dl class="sell_method_box">
					<dt>
						<label id="price" style="color: rgb(51, 51, 51);">거래종류</label>
					</dt>
					<dd>
						<div class="box_sell_method_area" style="height: 40px;">
							<ul class="item_status_list">
								<li>
									<div class="text_wrapper_click" id="text_wrap01">
										<input type="radio" name="sellMethod" id="sle1" value="Sell" onclick="chkStatus2(this, 1)">
										<div class="text"><label id="text01" for="sle1" style="color:white;"> 판매</label></div>
									</div>
								</li>
								<li>
									<div class="text_wrapper" id="text_wrap02">
										<input type="radio" name="sellMethod" id="sle2" value="Freecycle" onclick="chkStatus2(this, 2)">
										<div class="text"><label id="text02" for="sle2">무료나눔</label></div>
									</div>
								</li>
								<li>
									<div class="text_wrapper" id="text_wrap03">
										<input type="radio" name="sellMethod" id="sle3" value="Extra" onclick="chkStatus2(this, 3)">
										<div class="text"><label id="text03" for="sle3">덤</label></div>
									</div>
								</li>
								<li>
									<div class="text_wrapper" id="text_wrap04">
									<input type="radio" name="sellMethod" id="sle4" value="Buy" onclick="chkStatus2(this, 4)">
										<div class="text"><label id="text04" for="sle4">삽니다</label></div>
									</div>
								</li>
								<li>
									<div class="text_wrapper" id="text_wrap05">
									<input type="radio" name="sellMethod" id="sle5" value="Contact" onclick="chkStatus2(this, 5)">
										<div class="text"><label id="text05" for="sle5">연락요망</label></div>
									</div>
								</li>
							</ul>
						</div>
					</dd>
				</dl>
			
			
				<dl class="hellopay_option_box" id="price">
					<dt style="color:rgb(51,51,51);">판매가격</dt>
					<dd>
						<div class="box_price_area">
							<input name="price" type="text" placeholder="판매희망 가격을 입력하세요 " class="sell_type_input">
							<span class="box_price_text">원</span>
						</div>
					</dd>
				
				</dl>
				<dl style="height:41px;">
					<dt><label>거래희망 위치<span>(선택)</span></label></dt>
					<dd class="map_box">
						<input type="text" class="my_location_input" placeholder="위치 선택" readonly>
						<div class="my_location_map">
							<span>검색</span>
						</div>
						<div class="my_location_map">
							<span>현재위치</span>
						</div>
					</dd>
				</dl>			
			</div>
		</div>
	
	<div class="item_notice">
		<div class="text_bold">상품 등록 전에 꼭 확인하세요.</div>
		<div class="text_bottom">
			비정상적인 상품을 등록하거나, 헬로포인터 사용 금지 거래(상품권)에 속하는 상품을 해당 카테고리가 아닌 
			잘못된 카테고리에 등록할 경우 그 정도에 따라 경고, 출금요청 취소, 지금된 헬로포인트 전액 소멸,
			계정제재 등의 책임을 물을 수 있음을 알려드립니다.
		</div>
	</div>
	<div class="item_submit_box">
		<div class="item_area_submit_box">
			<a href="/"><button class="btn_item_cancel" type="reset">취소</button></a>
			<button class="btn_item_submit" type="button" onclick="submitOk()">등록완료</button>
		</div>
	</div>
</div>
</form>
</body>
</html>