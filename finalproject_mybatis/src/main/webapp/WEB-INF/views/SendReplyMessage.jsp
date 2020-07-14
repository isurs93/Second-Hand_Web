<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="TopMenu.jsp"></jsp:include>

<form action="#" method="post">


<div align="center">
<h1>쪽지보내기</h1>
<table > 
	<%-- <tr> 
		<td align="center">제목 </td> 
		<td><input name="DmTitle" size="100" maxlength="100"></td> 
		 
	</tr> 
	<tr> 
		<td align="center">받는사람 :  </td> 
		<td><input name="DmSender" value="${Direct_Message_from.dm_senderid}" size="100" maxlength="100"></td> 
		 
	</tr> 
	 <tr>
	 	<td align="center">내용 : </td> 
		<td><textarea name="DmMemo"   cols="100" rows="20">
		
		</textarea></td>
		
	</tr> --%>
	
	<tr> 
      <td align="center"><input value="제목" style="border:none; text-align:center; width:100px;height:30px;font-size:20px;" ></input></td> 
      <td><input name="DmTitle" " style="width:750px;height:30px;font-size:20px;" maxlength="100"></td> 
      <td><input type="hidden" name="DmSeqNo" value="${D_Message.dm_seqno}"></td> 
   </tr>
    
   <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
   
   <tr> 
      <td align="center"><input value="받는사람" style="border:none; text-align:center; width:100px;height:30px;font-size:20px;" readonly></input></td> 
      <td><input name="DmSender" value="${Direct_Message_from.dm_senderid}" style="width:250px;height:30px;font-size:20px;" maxlength="100"></td> 
       
   </tr>
   
   <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr> 
    <tr>
    
       <td align="center"><input value="내용" style="border:none; text-align:center; width:100px;height:30px;font-size:20px;"></input></td> 
      <td><textarea name="DmMemo" cols="104" rows="20">
     
      </textarea></td>
      
   </tr>
	
	
</table> 

<input type="submit" formaction="ReadingMyDM" value="답장" style="border:none; width:200px;height:50px; color: white; background-color: black;">
<a href="MyDmbox"><input type="button" name="gobacktoDm" value="쪽지함으로 가기" style="border:none; width:200px;height:50px; color: white; background-color: black;"></a>
<a href="list"><input type="button" name="homebutton" value="메인으로가기" style="border:none; width:200px;height:50px; color: white; background-color: black;"></a>

</div>


</form>







</body>
</html>