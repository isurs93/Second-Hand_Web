<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>


<head>
<meta charset="UTF-8">
<title>로그인</title>



 <style>
      #apple{
        width:200px;
        height:100px;
        font-size:50px;
      }
    </style>
<style>

td{
padding-left : 10px;
padding-right: 10px;
margin: 10px;
}

 a{
margin: 50px;
padding-left : 60px;
padding-right: 20px;
} 

 p{
margin: 50px;
margin-top: 5px;
padding-left : 100px;
padding-right: 20px;
}
/*
img {
padding-left : 100px;
padding-right: 20px;
margin: 50px;
*/
} 
body{
height:1800px;
}
</style>



</head>
<body>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>


<jsp:include page="TopMenu.jsp"></jsp:include>



<br>
<br>
<br>
<br>
<br>

<!-- <h1 align="center">상품목록</h1> -->

<%
int count = 0;


%>
 <div class="layout-wrapper goods-view-area" style="text-align:center; margin-top:60px;">


<script src="/shop/data/skin/designgj/autoslider.js"></script>

<%-- <h1 class="goods-add-product-title"> ${the_productInfo.board_title}</h1> --%>


 <form  action="sendDMessageFrom" method="post">
<table border="0" style="text-align: center; " align="center"; >
          <tr>
       <td align = "center" style="padding-right: 100px;"><img src = "http://localhost:8080/test/${the_productInfo.image_string}" width="500" height="500" margin-left="100"/></td>
       
<td align="left" width="400"><br><br><br>
<SPAN style="FONT-SIZE: 30pt; font-weight:normal;" >판매자 : ${the_productInfo.user_id}</SPAN><br><br>
<SPAN style="FONT-SIZE: 30pt; font-weight:normal;">조회 : ${the_productInfo.board_hit}회</SPAN><br><br>
<SPAN style="FONT-SIZE: 30pt; font-weight:normal;">내용 : <textarea cols="50" rows="8" style="font-size: 20pt" readonly="readonly">${the_productInfo.board_Content}</textarea></SPAN><br> <br>

<SPAN style="FONT-SIZE: 30pt; font-weight:normal;">가격 : ${the_productInfo.board_price}원</SPAN><br><br>
<SPAN style="FONT-SIZE: 30pt; font-weight:normal;">거래지역 : ${the_productInfo.deal_location}</SPAN> <br><br>
<SPAN style="FONT-SIZE: 30pt; font-weight:normal;">상태 : ${the_productInfo.board_isDone}</SPAN> <br><br>

 <%if (session.getAttribute("uid") != null){ %>		
<a href="sendDMessageFrom?ownerseq=${the_productInfo.board_useqno}&board_seq=${the_productInfo.board_seqno}"><input type="button" style="border:none; background-color:white; color: #EE82EE; font-size: 35px; font-weight: bold;" value = "상품 문의하기"></a>
<%}else if((request.getAttribute("uid") == null)) { %>
<a href="login"><input type="button" style="border:none; background-color:white; color: #EE82EE; font-size: 35px; font-weight: bold;" value = "상품 문의하기"></a>
<%}%> 

</td>
</tr>

<tr>

</tr>


</table>
</form>
</div>


<form action="Like" method="post">
<input type="hidden" name="board_Seqno" value="${the_productInfo.board_seqno}"/>

      <div>
      
         <div class="fb-like">
         <% if(request.getAttribute("count").toString().equals("1")){ %>
         &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
         &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
         &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                <button >
                  <img src="http://localhost:8080/test/Like.png" width="130" height="80"> <SPAN style="FONT-SIZE: 30pt; font-weight:normal;">${CountLike.countLike}회</SPAN> 
               </button>
            
            <%}else if(request.getAttribute("count").toString().equals("0")) {%>
         &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
         &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
         &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
               <button>
                  <i><img src="http://localhost:8080/test/NoLike.jpeg" width="130" height="80"></i> <SPAN style="FONT-SIZE: 30pt; font-weight:normal;">${CountLike.countLike}회</SPAN> 
               </button>
              
               
            
            <%} else { %>
              &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
         &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
   
               	좋아요 기능은 <button type="button" onclick="location.href='login' ">
               <b>로그인</b></button> 후 사용 가능합니다.<br />
               <i></i>
   
            
            
            <%} %>
            
         </div>
      </div>
</form>

              




<style>
.button {
border:1x dashed #ff0080;    /*---테두리 정의---*/
background-Color:#ffe6f2;   /*--백그라운드 정의---*/
font:12px 굴림;      /*--폰트 정의---*/
font-weight:bold;   /*--폰트 굵기---*/
color:#ff0080;    /*--폰트 색깔---*/
width:130;height:30;  /*--버튼 크기---*/
}
</style>


<br>
<br>
<br>
<br>

<p>
<div align="center">
    <input id="apple" class="button" value="판매자의 상품 보기" onclick="if(this.parentNode.getElementsByTagName('div')[0].style.display != ''){this.parentNode.getElementsByTagName('div')[0].style.display = '';this.value = '숨기기';}else{this.parentNode.getElementsByTagName('div')[0].style.display = 'none'; this.value = '판매자의 상품 보기';}" type="button" style="border:none; width:500px;height:100px;"/>
    <div style="display: none;">	
<br>
<br>
<br>
<table>


         <tr>
         
         <c:forEach items="${the_sellerProduct}" var="dto">

      <%if(count < 4){   count++;%>
        <td><a href="DetailProductList?board_seq=${dto.board_seqno}"><img src = "http://localhost:8080/test/${dto.image_string}" width="300" height="300" margin-left="10"/></a><br> 
         <p>제목 : ${dto.board_title} <br>
       	 조회수 : ${dto.board_hit}회 <br>
         가격 : ${dto.board_price}원 <br>
         거래지역 : ${dto.deal_location}
         </p>
         </td>
         <%if(count == 3){ count = 0;%> </tr> <%}%>
      <% }%>
   
      </c:forEach>
     </tr>
   </table>
   </div>
</div>

   



</body>

</html>