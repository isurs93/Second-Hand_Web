<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 상품 보기</title>
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
<jsp:include page="TopMenu.jsp"></jsp:include>


<form  method="post">
<br>
<br>
<br>
<br>


<h1 align="center">내가 올린 상품</h1>

<%
int count = 0;


%>
   <table>
         <tr>
         <c:forEach items="${myProductList}" var="dto">

      <%if(count < 5){   count++;%>
         <td><a href="DetailMyProductList?board_seq=${dto.board_seqno}"><img src = "http://localhost:8080/test/${dto.image_string}" width="300" height="300" margin-left="10"//></a><br>
         <p>제목 : ${dto.board_title} <br>
       	조회수 :  ${dto.board_hit}회 <br>
        가격 :  ${dto.board_price}원 <br>
         거래지역 : ${dto.deal_location}<br>
         상태 : ${dto.board_isDone}<br>
		<a href="DealCompleted?board_seqno=${dto.board_seqno}">거래완료 확인</a>
         </p>
      
         </td>
         <%if(count == 4){ count = 0;%> </tr> <%}%>
      <% }%>
   
      </c:forEach>
     </tr>
   </table>

<%

%>
      
      
      

      <!--<td><a href="mngdetail.do?seq=${mnglist.seq }">${mnglist.seq }</a></td>
         <td><a href="mngdetail.do?seq=${mnglist.seq }">${mnglist.name }</a></td>-->
         
      
      
   
      

</form>


</body>

</html>