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


<form  id = "searchTxtForm" method="post">
<input type="hidden" name="viewCount" id="viewCount" value="0">
<input type="hidden" name="startCount" id="startCount" value="0">
<br>
<br>
<br>
<br>


<h1 align="center">내가 찜한 상품 목록</h1>



<%
int count = 0;


%>

<div id="list">
   <table>
         <tr>
         <c:forEach items="${myLikeList}" var="dto">

      <%if(count < 5){   count++;%>
        <td><a href="DetailProductList?board_seq=${dto.board_seqno}"><img src = "http://localhost:8080/test/${dto.image_string}" width="300" height="300" margin-left="10"/></a><br> 
         <p>제목 : ${dto.board_title} <br>
       	 조회수 : ${dto.board_hit}회 <br>
         가격 : ${dto.board_price}원 <br>
         거래지역 : ${dto.deal_location}<br>
         상태 : ${dto.board_isDone}
         </p>
         </td>
         <%if(count == 4){ count = 0;%> </tr> <%}%>
      <% }%>
   
      </c:forEach>
     </tr>
   </table>

      
    


      <!--<td><a href="mngdetail.do?seq=${mnglist.seq }">${mnglist.seq }</a></td>
         <td><a href="mngdetail.do?seq=${mnglist.seq }">${mnglist.name }</a></td>-->
         
     <div id="list_deobogi"></div>

</div> 
      
   
      

</form>


</body>



</html>