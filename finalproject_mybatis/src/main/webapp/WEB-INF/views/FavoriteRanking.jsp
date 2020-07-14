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
String fRanking = request.getAttribute("fRanking").toString();
String fRanking1 = request.getAttribute("fRanking1").toString();
String fRanking2 = request.getAttribute("fRanking2").toString();
String fRanking3 = request.getAttribute("fRanking3").toString();
String fRanking4 = request.getAttribute("fRanking4").toString();
String fRanking5 = request.getAttribute("fRanking5").toString();
String fRanking6 = request.getAttribute("fRanking6").toString();
String fRanking7 = request.getAttribute("fRanking7").toString();
String fRanking8 = request.getAttribute("fRanking8").toString();
String fRanking9 = request.getAttribute("fRanking9").toString();


 Integer fRankingnum = Integer.parseInt(request.getAttribute("fRankingnum").toString()); 
 Integer fRankingnum1 = Integer.parseInt(request.getAttribute("fRankingnum1").toString()); 
 Integer fRankingnum2 = Integer.parseInt(request.getAttribute("fRankingnum2").toString()); 
 Integer fRankingnum3 = Integer.parseInt(request.getAttribute("fRankingnum3").toString()); 
 Integer fRankingnum4 = Integer.parseInt(request.getAttribute("fRankingnum4").toString()); 
 Integer fRankingnum5 = Integer.parseInt(request.getAttribute("fRankingnum5").toString()); 
 Integer fRankingnum6 = Integer.parseInt(request.getAttribute("fRankingnum6").toString()); 
 Integer fRankingnum7 = Integer.parseInt(request.getAttribute("fRankingnum7").toString()); 
 Integer fRankingnum8 = Integer.parseInt(request.getAttribute("fRankingnum8").toString()); 
 Integer fRankingnum9 = Integer.parseInt(request.getAttribute("fRankingnum9").toString()); 


%>

   <script type="text/javascript" src="http://www.google.com/jsapi"></script>
   <script type="text/javascript">
      google.load('visualization', '1.0', {'packages':['corechart']});
      google.setOnLoadCallback(drawChart);
      //document.write(string.link("login"))
      function drawChart() {
         var data = new google.visualization.DataTable();
         
         data.addColumn('string', '인물');
         data.addColumn('number', '추천 수');
         data.addRows([
                     ['<%=fRanking%>', <%=fRankingnum%>],['<%=fRanking1%>', <%=fRankingnum1%>],
                     ['<%=fRanking2%>', <%=fRankingnum2%>],['<%=fRanking3%>', <%=fRankingnum3%>],
                     ['<%=fRanking4%>', <%=fRankingnum4%>],['<%=fRanking5%>', <%=fRankingnum5%>],
                     ['<%=fRanking6%>', <%=fRankingnum6%>],['<%=fRanking7%>', <%=fRankingnum7%>],
                     ['<%=fRanking8%>', <%=fRankingnum8%>],['<%=fRanking9%>', <%=fRankingnum9%>],
         ]);
         var opt = {
               'title': '추천 게시물 ',
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