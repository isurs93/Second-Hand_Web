<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쪽지 보내기</title>
</head>
<body>
<jsp:include page="TopMenu.jsp"></jsp:include>
<div align="center">

<h1>쪽지 보내기</h1>
<form action="InsertMessage" method="post">
<%  session.getAttribute("user_id"); %>
<table> 
	<%-- <tr> 
		<td align="center">제목</td> 
		<td><input name="dmTitle" size="100" maxlength="100"></td> 
	</tr> 
	<tr> 
		<td align="center">받는 사람</td> 
		<td><input name="dmReceiver" value ="${owner_id.user_id}" size="100" maxlength="100" name = "dm_reciverSeq"></td> 
	</tr> 
	 <tr>
	 	<td align="center">내용</td> 
		<td><textarea name="dmMemo" cols="100" rows="20"></textarea></td>
	</tr> --%>
	
	<tr> 
      <td align="center"><input value="제목" style="border:none; text-align:center; width:100px;height:30px;font-size:20px;" ></input></td> 
      <td><input name="dmTitle" " style="width:750px;height:30px;font-size:20px;" maxlength="100"></td> 
      <td><input type="hidden" name="DmSeqNo" value="${D_Message.dm_seqno}"></td> 
   </tr>
    
   <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
   
   <tr> 
      <td align="center"><input value="받는사람" style="border:none; text-align:center; width:100px;height:30px;font-size:20px;" readonly></input></td> 
      <td><input name="dmReceiver" value="${owner_id.user_id}" style="width:250px;height:30px;font-size:20px;" maxlength="100"></td> 
       
   </tr>
   
   <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr> 
    <tr>
    
       <td align="center"><input value="내용" style="border:none; text-align:center; width:100px;height:30px;font-size:20px;" readonly></input></td> 
      <td><textarea name="dmMemo" cols="104" rows="20">
      ${D_Message.dm_content}
      </textarea></td>
      
   </tr>
	
	
</table> 
<input type="submit" formaction = "InsertMessage?owner_id=${owner_id.user_id}" value="메세지 보내기"/>





</form>
</div>

</body>
</html>

