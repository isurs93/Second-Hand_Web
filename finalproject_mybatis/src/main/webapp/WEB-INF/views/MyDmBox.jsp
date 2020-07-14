<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="TopMenu.jsp"></jsp:include>
</head>
<body>


<div align="center">

<h1>나의 쪽지함</h1>

<table style="margin-left: auto; margin-right: auto">
   <tr>
            <th>번호</th> 
            <th>제목</th>   
            <th>내용</th>                  
            <th>작성자</th> 
            <th>작성일</th> 
            
            
   </tr>
   <c:forEach items="${dm_message}" var = "dto">
            <tr>
            
            
               <td><input type="text" name="dm_seqno" style="width:50px;height:50px;font-size:15px; text-align:center; background:#F4F3DA;" 
                value="${dto.dm_seqno }" readonly="readonly"></td>
                
               <td><a href="DetailMyDirectMessage?dm_seqno=${dto.dm_seqno }"><input type="text" name="nbTitle" 
               style="width:300px;height:50px;font-size:15px; text-align:center;"
               value="${dto.dm_title }" size="70" readonly="readonly"></a></td>
               
               <td><input type="text" name="nbDate" value="${dto.dm_content }"
               style="width:500px;height:50px;font-size:15px; text-align:center;" size="20" readonly="readonly"></td>
               
               <td><input type="text" name="nbView" value="${dto.dm_senderid }"
               style="width:100px;height:50px;font-size:15px; text-align:center;" size="6" readonly="readonly"></td>
               
               <td><input type="text" name="nbView" value="${dto.dm_insertdate }"
               style="width:200px;height:50px;font-size:15px; text-align:center;" size="6" readonly="readonly"></td>
            </tr>
   </c:forEach>
</table>
</div>

</body>
</html>