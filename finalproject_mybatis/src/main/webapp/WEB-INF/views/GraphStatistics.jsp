<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="TopMenu.jsp"></jsp:include>
   
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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

<%
//String[] mtitle = (String[])request.getAttribute("mtitle");
String mtitle = request.getAttribute("mtitle").toString();
String mtitle1 = request.getAttribute("mtitle1").toString();
String mtitle2 = request.getAttribute("mtitle2").toString();
String mtitle3 = request.getAttribute("mtitle3").toString();
String mtitle4 = request.getAttribute("mtitle4").toString();
String mtitle5 = request.getAttribute("mtitle5").toString();
String mtitle6 = request.getAttribute("mtitle6").toString();
String mtitle7 = request.getAttribute("mtitle7").toString();
String mtitle8 = request.getAttribute("mtitle8").toString();
String mtitle9 = request.getAttribute("mtitle9").toString();

Integer hit = Integer.parseInt(request.getAttribute("hit").toString());
Integer hit1 = Integer.parseInt(request.getAttribute("hit1").toString());
Integer hit2 = Integer.parseInt(request.getAttribute("hit2").toString());
Integer hit3 = Integer.parseInt(request.getAttribute("hit3").toString());
Integer hit4 = Integer.parseInt(request.getAttribute("hit4").toString());
Integer hit5 = Integer.parseInt(request.getAttribute("hit5").toString());
Integer hit6 = Integer.parseInt(request.getAttribute("hit6").toString());
Integer hit7 = Integer.parseInt(request.getAttribute("hit7").toString());
Integer hit8 = Integer.parseInt(request.getAttribute("hit8").toString());
Integer hit9 = Integer.parseInt(request.getAttribute("hit9").toString());

%>

   <script type="text/javascript" src="http://www.google.com/jsapi"></script>
   <script type="text/javascript">
      google.load('visualization', '1.0', {'packages':['corechart']});
      google.setOnLoadCallback(drawChart);
      //document.write(string.link("login"))
      function drawChart() {
         var data = new google.visualization.DataTable();
         
         data.addColumn('string', '인물');
         data.addColumn('number', '조회수');
         data.addRows([
                     ['<%=mtitle%>', <%=hit%>], ['<%=mtitle1%>',<%=hit1%>],
                     ['<%=mtitle2%>', <%=hit2%>], ['<%=mtitle3%>',<%=hit3%>],
                     ['<%=mtitle4%>', <%=hit4%>], ['<%=mtitle5%>',<%=hit5%>],
                     ['<%=mtitle6%>', <%=hit6%>], ['<%=mtitle7%>',<%=hit7%>],
                     ['<%=mtitle8%>', <%=hit8%>], ['<%=mtitle9%>',<%=hit9%>],
         ]);
         var opt = {
               'title': '상품조회수랭킹',
               'width': 900, 'height': 400,
         };
         var chart = new google.visualization.BarChart(
               document.getElementById('chart_div'));
         chart.draw(data, opt);
      }
   </script>
</head>
</body>
<center>


<div id="chart_div"></div>
</center>
</body>
</html>