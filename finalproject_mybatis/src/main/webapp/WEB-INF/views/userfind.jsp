<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="javafx.scene.control.Alert"%>
<!DOCTYPE html>
<html>

<head>
<link rel="shortcut icon" type="image⁄x-icon" href="DDUNG.png">
<meta charset="UTF-8">
<title>아이디 비밀번호 찾기</title>
</head>

<script type="text/javascript">

//빈칸이 있는지 체크
function checkiddata(){
   var info = document.joininfo;
   if(info.name.value.length < 1){
      alert("이름을 입력하세요!")
      return;
   }
 

   var info = document.joininfo;
   if(info.tel.value.length < 1){
      alert("전화번호를 입력하세요!")
      return;
   }
   
    info.action = "useridfind";
   info.submit(); 
}

function checkpwdata(){
	   var info = document.joininfo2;
	   if(info.id.value.length < 1){
	      alert("아이디를 입력하세요!")
	      return;
	   }
	 

	   var info = document.joininfo2;
	   if(info.tel2.value.length < 1){
	      alert("전화번호를 입력하세요!")
	      return;
	   }
	   info.action = "userpwfind";
	   info.submit();
	}

</script>





<body>

<jsp:include page="TopMenu.jsp"></jsp:include>

	<table align="center">
		<tr>
			<td>


<br>
<br>
<br>
<br>
<form  method="post" action="FindMyId">
<h2>아이디 찾기</h2>

<h5 style="color:#BDBDBD">회원가입 시 입력하신 이름 + 전화번호로 아이디를 확인하실 수 있습니다.</h5>
<br>

	<table style="margin-left: auto; margin-right: auto" >
		<tr>
			<td></td>
			<td><input type="text" id="name" name="name" placeholder="이름" style="width:400px;height:40px;font-size:13px;"></td>
			
		</tr>
		
		<tr>
			<td></td>
			<td><input type="text" id="tel" name="tel" placeholder="전화번호 (-없이 입력)" style="width:400px;height:40px;font-size:13px;"></td>
			
		</tr>
	</table>	
	
	

	<table style="margin-left: auto; margin-right: auto">
		<%-- <tr>
			<td><a href="delete.do?seq=${seq }"><input type="button" style="border: 1px solid; width:400px;height:40px; color: black; background-color: white;" value="사업자번호 찾기"></a></td>
		</tr> --%>
		<br>
		<tr>
			<td><input type="submit" style="border:none; width:400px;height:50px; color: white; background-color: black;" onclick="checkiddata()" value="아이디 찾기"></td>
			
		</tr>
		
	</table>
</form>
	
			</td>
			<td>
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			</td>
			<td>
			
			
			

<br>
<br>
<br>
<br>
<form action="FindMyPw" method="post">
<h2>비밀번호 찾기</h2>

<h5 style="color:#BDBDBD;">가입하신 아이디 + 전화번호를 통해 비밀번호를 확인하실 수 있습니다.</h5>
<br>
	<table style="margin-left: auto; margin-right: auto" >
		<tr>
			<td></td>
			<td><input type="text" id="id" name="id" placeholder="아이디" style="width:400px;height:40px;font-size:13px;"></td>
		</tr>
		
		<tr>
			<td></td>
			<td><input type="text" id="tel2" name="tel" placeholder="전화번호 (-없이 입력)" style="width:400px;height:40px;font-size:13px;"></td>
			
		</tr>
	</table>	

	

	<table style="margin-left: auto; margin-right: auto">
		<%-- <tr>
			<td><a href="delete.do?seq=${seq }"><input type="button" style="border:1px solid; width:400px;height:40px; color: black; background-color: white;" value="임시 비밀번호 발급"></a></td>
		</tr> --%>
		<br>
		<tr>
			<td><input type="submit" style="border:none; width:400px;height:50px; color: white; background-color: black;" onclick="checkpwdata()"  value="비밀번호 찾기"></td>
		</tr>
		
	</table>
</form>



			</td>
		</tr>
</table>






















</body>

<div style="bottom: 10px;" >
</div>
</html>



