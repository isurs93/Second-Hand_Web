<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" type="image⁄x-icon" href="DDUNG.png">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="TopMenu.jsp"></jsp:include>








<br>
<br>
<br>
<h1 align="center">고객님의 아이디는</h1>

<br>
<br>






<h2 align="center">${myId.user_Id} 입니다.</h2>

<br>
<br>
<center><a href="login" ><input type="submit" style="border:none; width:400px;height:50px; color: white; background-color: black;" value="로그인하기"></a></center>





</body>
</html>