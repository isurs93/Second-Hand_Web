<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>

<jsp:include page="TopMenu.jsp"></jsp:include>
<title>판매현황</title>

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


<style type="text/css">
* {margin:10;padding:10;}
#scroll {height:32px;}
</style>
<script type="text/javascript">
function textScroll(scroll_el_id) {
    this.objElement = document.getElementById(scroll_el_id);
    this.objElement.style.position = 'relative';
    this.objElement.style.overflow = 'hidden';

    this.objLi = this.objElement.getElementsByTagName('li');
    this.height = this.objElement.offsetHeight; // li 엘리먼트가 움직이는 높이(외부에서 변경가능)
    this.num = this.objLi.length; // li 엘리먼트의 총 갯수
    this.totalHeight = this.height*this.num; // 총 높이
    this.scrollspeed = 2; // 스크롤되는 px
    this.objTop = new Array(); // 각 li의 top 위치를 저장
    this.timer = null;
    
    for(var i=0; i<this.num; i++){
        this.objLi[i].style.position = 'absolute';
        this.objTop[i] = this.height*i;
        this.objLi[i].style.top = this.objTop[i]+"px";
    }
}

textScroll.prototype.move = function(){
    for(var i=0; i<this.num; i++) {
        this.objTop[i] = this.objTop[i] - this.scrollspeed;
        this.objLi[i].style.top = this.objTop[i]+"px";
    }
    if(this.objTop[0]%this.height == 0){
        this.jump();
    }else{
        clearTimeout(this.timer);
        this.timer = setTimeout(this.name+".move()",50);
    }
}

textScroll.prototype.jump = function(){
    for(var i=0; i<this.num; i++){
        if(this.objTop[i] == this.height*(-2)){
            this.objTop[i] = this.objTop[i] + this.totalHeight;
            this.objLi[i].style.top = this.objTop[i]+"px";
        }
    }
    clearTimeout(this.timer);
    this.timer = setTimeout(this.name+".move()",1000);
}

textScroll.prototype.start = function() {
    this.timer = setTimeout(this.name+".move()",1000);
}
</script>
</head>
<body>

<%
String msearch = request.getAttribute("msearch").toString();
String msearch1 = request.getAttribute("msearch1").toString();
String msearch2 = request.getAttribute("msearch2").toString();
String msearch3 = request.getAttribute("msearch3").toString();
String msearch4 = request.getAttribute("msearch4").toString();
String msearch5 = request.getAttribute("msearch5").toString();
String msearch6 = request.getAttribute("msearch6").toString();
String msearch7 = request.getAttribute("msearch7").toString();
String msearch8 = request.getAttribute("msearch8").toString();
String msearch9 = request.getAttribute("msearch9").toString();

%>

<!-- li 엘리먼트들이 position:absolute 되므로 ul 엘리먼트에는 height 값이 있어야 합니다 -->

<table align="center">
<ul id="scroll" >
     <li><span style="FONT-SIZE: 20pt"><a href="SearchResult?msearch=${msearch}">1위 : <%=msearch %></a></span></li>
    <li><span style="FONT-SIZE: 20pt"><a href="SearchResult?msearch=${msearch1}" >2위 : <%=msearch1 %></a></span></li>
    <li><span style="FONT-SIZE: 20pt"><a href="SearchResult?msearch=${msearch2}" >3위 : <%=msearch2 %></a></span></li>
    <li><span style="FONT-SIZE: 20pt"><a href="SearchResult?msearch=${msearch3}" >4위 : <%=msearch3 %></a></span></li>
    <li><span style="FONT-SIZE: 20pt"><a href="SearchResult?msearch=${msearch4}" >5위 : <%=msearch4 %></a></span></li>
    <li><span style="FONT-SIZE: 20pt"><a href="SearchResult?msearch=${msearch5}" >6위 : <%=msearch5 %></a></span></li>
    <li><span style="FONT-SIZE: 20pt"><a href="SearchResult?msearch=${msearch6}" >7위 : <%=msearch6 %></a></span></li>
    <li><span style="FONT-SIZE: 20pt"><a href="SearchResult?msearch=${msearch7}" >8위 : <%=msearch7 %></a></span></li>
    <li><span style="FONT-SIZE: 20pt"><a href="SearchResult?msearch=${msearch8}" >9위 : <%=msearch8 %></a></span></li>
    <li><span style="FONT-SIZE: 20pt"><a href="SearchResult?msearch=${msearch9}" >10위 : <%=msearch9 %></a></span></li>
    
</ul>
</table>
<%-- td><a href="delete?mId=${dto.mId}">X</a></td> --%>


<script type="text/javascript">
var real_search_keyword = new textScroll('scroll'); // 스크롤링 하고자하는 ul 엘리먼트의 id값을 인자로 넣습니다
real_search_keyword.name = "real_search_keyword"; // 인스턴스 네임을 등록합니다
real_search_keyword.start(); // 스크롤링 시작
</script>


</head>
</body>
<center>
<div id="chart_div"></div>
</center>
</body>
</html>