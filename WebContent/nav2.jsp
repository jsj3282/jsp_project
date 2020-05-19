<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style>
   .more{
      
   }
   
   .more .blind{
      
   }
   
   .more:hover, .close:hover{
      cursor:pointer;
   }
   
   .more .close{
      display:block;
      content: "카테고리 △";
   }
   .board{
      font-family:'돋움';
      font-size:13px;
      position:absolute;
      top:30px;
      width:410px;
      height:135px;
      background:pink;
      visibility:hidden;
   }
</style>
   
   <script src="jquery-3.4.1.min.js"></script>
   <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
   <script>
      $(document).ready(function(){
         $('.more').click(function(){
            if($('.more').hasClass('blind')){
               $('.more').addClass('close').removeClass('blind');
               $('.board').css('visibility', 'visible')
               $(this).children("ul").show();
				$(this).find("a").addClass("on");
            }else if($('.more').hasClass('close')){
               $('mroe').addClass('blind').removeClass('close');
               $('.board').css('visibility', 'hidden')
            }
         });
      });
   </script>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <span class="more">
   <span class="blind">카테고리 ▽</span>
   </span>
   <div class="board">
      <ul id="gnb">
         <li class="p">
            <ul class="submenu">
               <li><a href="#">핸드메이드</a><br><a href="#">유아동, 완구</a></li>
               <li><a href="#">휴대폰,태블릿</a><br><a href="#">컴퓨터,주변기기</a></li>
               <li><a href="#">가구</a><br><a href="#">생활</a></li>
               <li><a href="#">문구</a><br><a href="#">스타굿즈</a></li>
            </ul>
         </li>
      </ul>
   </div>
</body>
</html>