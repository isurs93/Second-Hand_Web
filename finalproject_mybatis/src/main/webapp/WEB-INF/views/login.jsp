<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" type="image⁄x-icon" href="DDUNG.png">
<meta charset="UTF-8">

<title>로그인</title>
</head>
<body>
<jsp:include page="TopMenu.jsp"></jsp:include>


<%-- <jsp:include page="topmenu.jsp"></jsp:include> --%>

<%-- <script>
<% if(request.getAttribute("uid") == null){%>
	 alert("아이디비번확인")
<%}%>


</script> --%>

<script>

<%if(request.getAttribute("uid") != null && request.getAttribute("uid").equals("0")){%>
	alert("아이디 비밀번호를 확인해주세요")
<%}%>

</script>



<table align="center">
		<tr>
			<td>

<form action="actionlogin" method="post">
<br>
<br>
<br>
<br>


<h3 align="center">회원 로그인</h3>
<br>
	<table style="margin-left: auto; margin-right: auto" >
		<tr>
			<td></td>
			<td><input type="text" name="id" placeholder="아이디" style="width:400px;height:40px;font-size:13px;"></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="password" name="pw" placeholder="비밀번호" style="width:400px;height:40px;font-size:13px;"></td>
			
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="로그인" style="border:none; width:400px;height:50px; color: white; background-color: black;"></td>
		</tr>
	</table>	

</form>
	

	<table style="margin-left: auto; margin-right: auto">
		<tr>
			<td><a href="userfind"><input type="button" style="border:none; background-color: white;" value="아이디/비밀번호 찾기"></a></td>
			<td><a href="newuser"><input type="button" style="border:none; background-color: white;" value="회원가입"></a></td>
		</tr>
		
	</table>
	
			</td>
			<td>
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			</td>
			<td>

</table>

</body>
</html>
