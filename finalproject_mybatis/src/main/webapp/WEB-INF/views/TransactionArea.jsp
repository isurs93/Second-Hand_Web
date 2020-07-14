<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="TopMenu.jsp"></jsp:include>

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
   
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>판매현황</title>


<%
String mArea = request.getAttribute("mArea").toString();
String mArea1 = request.getAttribute("mArea1").toString();
String mArea2 = request.getAttribute("mArea2").toString();
String mArea3 = request.getAttribute("mArea3").toString();
String mArea4 = request.getAttribute("mArea4").toString();
String mArea5 = request.getAttribute("mArea5").toString();
String mArea6 = request.getAttribute("mArea6").toString();
String mArea7 = request.getAttribute("mArea7").toString();
String mArea8 = request.getAttribute("mArea8").toString();
String mArea9 = request.getAttribute("mArea9").toString();

Integer tmArea = Integer.parseInt(request.getAttribute("mtArea").toString());
Integer tmArea1 = Integer.parseInt(request.getAttribute("mtArea1").toString());
Integer tmArea2 = Integer.parseInt(request.getAttribute("mtArea2").toString());
Integer tmArea3 = Integer.parseInt(request.getAttribute("mtArea3").toString());
Integer tmArea4 = Integer.parseInt(request.getAttribute("mtArea4").toString());
Integer tmArea5 = Integer.parseInt(request.getAttribute("mtArea5").toString());
Integer tmArea6 = Integer.parseInt(request.getAttribute("mtArea6").toString());
Integer tmArea7 = Integer.parseInt(request.getAttribute("mtArea7").toString());
Integer tmArea8 = Integer.parseInt(request.getAttribute("mtArea8").toString());
Integer tmArea9 = Integer.parseInt(request.getAttribute("mtArea9").toString());



%>

   <script type="text/javascript" src="http://www.google.com/jsapi"></script>
   <script type="text/javascript">
      google.load('visualization', '1.0', {'packages':['corechart']});
      google.setOnLoadCallback(drawChart);
      //document.write(string.link("login"))
      function drawChart() {
         var data = new google.visualization.DataTable();
         
         data.addColumn('string', '인물');
         data.addColumn('number', '거래현황');
         data.addRows([
                     ['<%=mArea%>', <%=tmArea%>],['<%=mArea1%>', <%=tmArea1%>],
                     ['<%=mArea2%>', <%=tmArea2%>],['<%=mArea3%>', <%=tmArea3%>],
                     ['<%=mArea4%>', <%=tmArea4%>],['<%=mArea5%>', <%=tmArea5%>],
                     ['<%=mArea6%>', <%=tmArea6%>],['<%=mArea7%>', <%=tmArea7%>],
                     ['<%=mArea8%>', <%=tmArea8%>],['<%=mArea9%>', <%=tmArea9%>],
         ]);
         var opt = {
               'title': '지역별 거래 현황',
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