<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" type="image⁄x-icon" href="DDUNG.png">
<meta charset="UTF-8">
<title>물품등록</title>
<script>
	function wordMaxLength(e){
		if(e.value.length > e.maxLength){
			e.value = e.value.slice(0, e.maxLength);
		}
	}
</script>
</head>
<body>
<jsp:include page="TopMenu.jsp"></jsp:include>


<form enctype="multipart/form-data" method="post">

<h3 align="center">물품등록</h3>
<br>
	<table style="margin-left: auto; margin-right: auto" >
		<tr height="30">
			<td>사진</td>
			<td><input type="file" name="b_image"></td>
		</tr>
		
		<tr>
			<td></td>
			<td><input type="hidden" name="se_seq" value="${seq }"></td>
			
			<!-- <td><a href="id_check.do"><input type="button" value="중복확인"></a></td> -->
		</tr>
		<tr height="30">
			<td >제목</td>
			<td><input type="text" name="b_title" style="width:300px;height:25px;font-size:13px;"></td>
			<!-- <td><a href="id_check.do"><input type="button" value="중복확인"></a></td> -->
		</tr>
		
		<tr height="30">
			<td>가격</td>
			<td><input type="text" name="b_price" style="width:150px;height:25px;font-size:13px;"></td>
		</tr>
		
		<tr height="30">
			<td>희망 지역</td>
			<td><select id = "sido" onchange="changeGungu(this)" name = "selectedSido">
			<option value= "" selected="selected">-선택-</option>
			<option value="1">서울</option>
			<option value="2">부산</option>
			<option value="3">대구</option>
			<option value="4">인천</option>
			<option value="5">광주</option>
			<option value="6">대전</option>
			<option value="7">울산</option>
			<option value="8">강원</option>
			<option value="9">경기</option>
			<option value="10">경남</option>
			<option value="11">경북</option>
			<option value="12">전남</option>
			<option value="13">전북</option>
			<option value="14">제주</option>
			<option value="15">충남</option>
			<option value="16">충북</option>
			</select>
			
			<select id = "gungu" name = "selectedGungu"> 
			<option>-선택-</option>
			</select>
			
			<script>
	
			var gunGu_name = new Array();
			
			gunGu_name[1] = ["전체","강남구","강동구","강북구","강서구","관악구","광진구","구로구",
							"금천구","노원구","도봉구","동대문구","동작구","마포구",
							"서대문구","서초구","성동구","성북구","송파구","양천구",
							"영등포구","용산구","은평구","종로구","중구","중랑구"];
			gunGu_name[2] = ["전체","강서구","금정구","남구","동구","동래구","부산진구","북구",
							"사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"];
			gunGu_name[3] = ["전체","남구","달서구","동구","북구","서구","수성구","중구","달성군"];
			gunGu_name[4] = ["전체","계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
			gunGu_name[5] = ["전체","광산구","남구","동구","북구","서구"];
			gunGu_name[6] = ["전체","대덕구","동구","서구","유성구","중구"];
			gunGu_name[7] = ["전체","남구","동구","북구","중구","울주군"];
			gunGu_name[8] = ["전체","강릉시","동해시","삼척시","속초시","원주시","춘천시",
							"태백시","고성군","양구군","양양군","영월군","인제군",
							"정선군","철원군","평창군","홍천군","화천군","횡성군"];	
			gunGu_name[9] =  ["전체","고양시 덕양구","고양시 일산구","과천시","광명시","광주시","구리시",
							"군포시","김포시","남양주시","동두천시","부천시 소사구","부천시 오정구","부천시 원미구",
							"성남시 분당구","성남시 수정구","성남시 중원구","수원시 권선구","수원시 장안구","수원시 팔달구",
							"시흥시","안산시 단원구","안산시 상록구","안성시","안양시 동안구","안양시 만안구","오산시","용인시",
							"의왕시","의정부시","이천시","파주시","평택시","하남시","화성시","가평군","양주군","양평군","여주군","연천군","포천군"];
			gunGu_name[10] = ["전체","거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시",
							"통영시","거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
			gunGu_name[11] = ["전체","거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시","통영시",
							"거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
			gunGu_name[12] = ["전체","광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군",
							"무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
			gunGu_name[13] = ["전체","군산시","김제시","남원시","익산시","전주시 덕진구","전주시 완산구","정읍시","고창군","무주군",
							"부안군","순창군","완주군","임실군","장수군","진안군"];
			gunGu_name[14] = ["전체","서귀포시","제주시","남제주군","북제주군"];
			gunGu_name[15] = ["전체","공주시","논산시","보령시","서산시","아산시","천안시","금산군","당진군","부여군",
							"서천군","연기군","예산군","청양군","태안군","홍성군"];
			gunGu_name[16] = ["전체","제천시","청주시 상당구","청주시 흥덕구","충주시","괴산군","단양군",
							"보은군","영동군","옥천군","음성군","진천군","청원군"];
			
			
				
				function changeGungu(e) {
				
				var target = document.getElementById("gungu");
				if(e.value != null) var gunGu = gunGu_name[e.value];

	
				target.options.length = 0;
				
				for (x in gunGu) {
		
				    var opt = document.createElement("option");
				    opt.value =gunGu[x];
				    opt.innerHTML = gunGu[x];				     
				    target.appendChild(opt); 
				  }  
			}
			
		
			</script>
			</td>
			</tr>
		
		<tr height="30">
			<td>상품내용</td>
			<td><textarea id="inputbox" oninput="wordMaxLength(this);" maxlength="300" name="b_content" cols="200" rows="15" style="resize: none;" placeholder="300자 미만으로 입력해 주세요" ></textarea></td>
			
			<td></td>
		</tr>
		

		<tr>
			<td></td>
			<td><input formaction="list" type="submit" value="뒤로가기" style="border:none; width:200px;height:50px; color: white; background-color: black;">
			<input formaction="UploadItem" type="submit" value="등록하기" style="border:none; width:200px;height:50px; color: white; background-color: black;"></td>
		</tr>	
	</table>
	

<div id="result"></div>
</form>


</body>
</html> 