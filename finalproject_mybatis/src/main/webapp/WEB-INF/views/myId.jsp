<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="javafx.scene.control.Alert"%>
<!DOCTYPE html>
<html>

<head>
<link rel="shortcut icon" type="image⁄x-icon" href="DDUNG.png">
<meta charset="UTF-8">
<title>나의 아이디</title>
</head>



<body>

<jsp:include page="TopMenu.jsp"></jsp:include>

	<table align="center">
		<tr>
			<td>

<form  method="post" name="actionlogin">
<br>
<br>
<br>
<br>

<h2>나의 아이디</h2>


<br>
	<table style="margin-left: auto; margin-right: auto" >
		<tr>
			<td></td>
			<SPAN style="FONT-SIZE: 30pt; font-weight:normal;" >아이디 : ${myId.user_Id}</SPAN><br><br>
		</tr>
		<center><a href="login" ><input type="submit" style="border:none; width:400px;height:50px; color: white; background-color: black;" value="로그인하기"></a></center>
		
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








</body>

<div style="bottom: 10px;" >
</div>
</html>



