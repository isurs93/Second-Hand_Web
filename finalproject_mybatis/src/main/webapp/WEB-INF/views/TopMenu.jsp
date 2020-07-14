<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:8080/test/MarketLogo.png">
<style type="text/css">

@import url('https://fonts.googleapis.com/css?family=Roboto+Condensed');

.preserve-3d {
    transform-style: preserve-3d;
    -webkit-transform-style: preserve-3d;
}

body {
    padding: 0;
    margin: 0;
    border: 0;
    overflow-x: none;
    background-color: #ffffff;
    font-family: Roboto Condensed, sans-serif;
    font-size: 12px;
    font-smooth: always;
    -webkit-font-smoothing: antialiased;
}

.back {
    width: 33%;
    height: 50px;
    float: left;
    background-color: #ffffff;
    border: 10px;
    border-color: #ffffff;
    border-style: solid;
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    counter-increment: bc;
    padding: 0px 5px 5px 5px;
}

.back:before {
    content: counter(bc) "_";
    position: absolute;
    padding: 10px;
}

@media screen and (max-width: 1260px) {
    .back {
        width: 50%;
    }
}

@media screen and (max-width: 840px) {
    .back {
        width: 100%;
    }
}

.button_base {
    margin: 0;
    border: 0;
    font-size: 18px;
    position: relative;
    top: 50%;
    left: 50%;
    margin-top: -25px;
    margin-left: -100px;
    width: 200px;
    height: 50px;
    text-align: center;
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    -webkit-user-select: none;
    cursor: default;
}

.button_base:hover {
    cursor: pointer;
}


.b03_skewed_slide_in {
    overflow: hidden;
    border: #000000 solid 0px; /* 버튼 테두리 */
}

.b03_skewed_slide_in div {
    position: absolute;
    text-align: center;
    width: 100%;
    height: 50px;
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    padding: 10px;
}

.b03_skewed_slide_in div:nth-child(1) {
    color: #000000;
    background-color: #ffffff;
}

.b03_skewed_slide_in div:nth-child(2) {
    background-color: #000000;
    width: 230px;
    transition: all 0.2s ease;
    -webkit-transition: all 0.2s ease;
    -moz-transition: all 0.2s ease;
    transform: translate(-250px, 0px) skewX(-30deg);
    -webkit-transform: translate(-250px, 0px) skewX(-30deg);
    -moz-transform: translate(-250px, 0px) skewX(-30deg);
}

.b03_skewed_slide_in div:nth-child(3) {
    color: #ffffff;
    left: -200px;
    transition: left 0.2s ease;
    -webkit-transition: left 0.2s ease;
    -moz-transition: left 0.2s ease;
}

.b03_skewed_slide_in:hover div:nth-child(2) {
    transition: all 0.5s ease;
    -webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    transform: translate(-15px, 0px) skewX(-30deg);
    -webkit-transform: translate(-15px, 0px) skewX(-30deg);
    -moz-transform: translate(-15px, 0px) skewX(-30deg);
}

.b03_skewed_slide_in:hover div:nth-child(3) {
    left: 0px;
    transition: left 0.30000000000000004s ease;
    -webkit-transition: left 0.30000000000000004s ease;
    -moz-transition: left 0.30000000000000004s ease;
}
</style>

<meta charset="EUC-KR">
<title>상단메뉴</title>
</head>
<body>
<div class="layout">
<div class="header" align="right">
<c:if test="${uid != null}">

      <a href="ProductUploadForm"><input type="button" style="border:none; background-color: white;font-size: 25px;" value="상품등록"  ></a>
      <a href="userdetail"><input type="button" style="border:none; background-color: white;font-size: 25px;" value="내정보보기"></a>
      <a href="logout"><input type="button" style="border: none; background-color: white;font-size: 25px;" value="로그아웃"></a>

</c:if>


<c:if test="${uid == null}">

     
     <a href="login"><input type="button" style="border:none; background-color: white; font-size: 25px;" value="로그인"></a>
     <a href="newuser"><input type="button"style="border:none; background-color: white;font-size: 25px;" value="회원가입"></a>


</c:if>
</div>

<div class="content">
<br>

<div align="center">
<a href= "list"><img src="http://localhost:8080/test/MarketLogo.png" width="300" height="200"></a>
</div>

<hr>

<hr>
<table style="margin-left: auto; margin-right: auto">
   <tr>

      <td width="200">
 <%if (session.getAttribute("uid") != null){ %>		

	  <div class="back">
	  <div class="button_base b03_skewed_slide_in" onclick="location.href ='http://localhost:8081/market/MyLikeList'">
      <div>내가 찜한 상품</div><div></div><div>내가 찜한 상품</div></div></div></td>
<%}else if((request.getAttribute("uid") == null)) { %>
 <td width="200">
	  <div class="back">
	  <div class="button_base b03_skewed_slide_in" onclick="location.href ='http://localhost:8081/market/login'">
      <div>내가 찜한 상품</div><div></div><div>내가 찜한 상품</div></div></div></td>
<%}%> 

      
      <td width="200">
	  <div class="back">
	  <div class="button_base b03_skewed_slide_in" onclick="location.href ='http://localhost:8081/market/RearTimeRanking'">
      <div>실시간 검색 순위</div><div></div><div>실시간 검색 순위</div></div></div></td>
    
         <td width="200">
	  <div class="back">
	  <div class="button_base b03_skewed_slide_in" onclick="location.href ='http://localhost:8081/market/TransactionArea'">
      <div>거래지역현황</div><div></div><div>거래지역현황</div></div></div></td>
  
     	<td width="200">
		<div class="back">
	    <div class="button_base b03_skewed_slide_in" onclick="location.href ='http://localhost:8081/market/GraphStatistics'">
        <div>조회수 랭킹</div><div></div><div>조회수 랭킹</div></div></div></td>
        
        <td width="200">
		<div class="back">
	    <div class="button_base b03_skewed_slide_in" onclick="location.href ='http://localhost:8081/market/FavoriteRanking'">
        <div>추천 게시물</div><div></div><div>추천 게시물</div></div></div></td>
    </tr>

</table>
<form action="SearchWhatever" method="post">
<table style="margin-left: auto; margin-right: auto">
    <tr>      
    <td><input type="text" name="search" placeholder="검색어를 입력해 주세요." style="width:700px;height:40px;font-size:13px;"></td>
    <td><input type="submit" formaction="SearchWhatever" style="border:none; background-color: white; font-size: 15px;" value="검색"></td>
   </tr>
</table>
</form>
<hr>
</div>
<hr>



</div>
</body>
</html>