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
      content: "ī�װ� ��";
   }
   .board{
      font-family:'����';
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
   <span class="blind">ī�װ� ��</span>
   </span>
   <div class="board">
      <ul id="gnb">
         <li class="p">
            <ul class="submenu">
               <li><a href="#">�ڵ���̵�</a><br><a href="#">���Ƶ�, �ϱ�</a></li>
               <li><a href="#">�޴���,�º�</a><br><a href="#">��ǻ��,�ֺ����</a></li>
               <li><a href="#">����</a><br><a href="#">��Ȱ</a></li>
               <li><a href="#">����</a><br><a href="#">��Ÿ����</a></li>
            </ul>
         </li>
      </ul>
   </div>
</body>
</html>