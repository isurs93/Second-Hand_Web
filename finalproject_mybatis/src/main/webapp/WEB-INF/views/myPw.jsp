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


<script>
function makeid()
{
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

    for( var i=0; i < 5; i++ )
        text += possible.charAt(Math.floor(Math.random() * possible.length));

    return text;
}

</script>






<br>
<br>
<br>
<h1 align="center">고객님의 비밀번호는</h1>

<br>
<br>
<h2 align="center">${myPw.user_Password}입니다.</h2>





<br>
<br>
<center><a href="login" ><input type="submit" style="border:none; width:400px;height:50px; color: white; background-color: black;" value="로그인하기"></a></center>






</body>
</html>