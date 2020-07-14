<%@page import="java.util.ArrayList"%>
<%@page import="javafx.scene.control.Alert"%>
<%-- <%@page import="com.finalproject.market.mybatisDao.MKDao"%> --%>
<%@page import="org.springframework.beans.factory.annotation.Value"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

<br>
<br>
<br>
<br>

<script type="text/javascript">
//빈칸 체크
	function checkdata(){
	var info = document.joininfo;
	
	if(info.id.value.length < 1){
		alert("id를 입력하세요!")
		return;
	}
	
	var info = document.joininfo;
    if(info.pw.value.length < 1){
       alert("비밀번호를 입력하세요!")
       return;
    }

    var info = document.joininfo;
    if(info.pwcheck.value.length < 1){
       alert("비밀번호확인을 입력하세요!")
       return;
    }
    
    var info = document.joininfo;
    if(info.pw.value.length < 6){
       alert("비밀번호는 최소 6자이상 입력해야합니다.!")
       return;
    }
    
    var info = document.joininfo;
    if(info.pw.value != info.pwcheck.value){
       alert("비밀번호확인이 일치하지않습니다!")
       return;
    }
    var info = document.joininfo;
    if(info.name.value.length < 1){
       alert("이름을 입력하세요!")
       return;
    }
    
    var info = document.joininfo;
    if(info.tel1.value.length < 1 || info.tel2.value.length <2 ||
       info.tel3.value.length <3){
       alert("전화번호를 입력하세요!")
       return;
    }
    
    
    var info = document.joininfo;
    if(info.zipcode.value.length < 1 || info.address1.value.length < 2 || 
       info.address2.value.length < 1) {
       alert("주소를 입력하세요!")
       return;
    }
    
    var info = document.joininfo;
    if(info.email1.value.length < 1 || info.email2.value.length < 2 ||
       info.domain.value.length < 3){
       alert("이메일을 입력해 주세요!")
       return;
    }		
		info.action = "signup";
		info.submit();
	}
	
	 function idcheck(option) {

		var id = document.getElementById("id").value;
		var flag = true;
		<%-- var list = [<%=values.toString()%>]  --%>
		
		if(option == undefined){
		    if(flag){
		      alert("사용 가능한 아이디 입니다.");
		      document.getElementById("checkid").value = id;
		    }      
		   else{
		      alert("이미 사용중인 아이디입니다."); 
		      document.getElementById("id").value = null;
		   }
		}      
		return flag;
		
   	}
	
</script>


<script type="text/javascript">
<% 
if(request.getAttribute("count") != null && request.getAttribute("count").toString().equals("1")){%>
	alert("중복된 아이디 입니다 .")
	
<%}if(request.getAttribute("count") != null && request.getAttribute("count").toString().equals("0")){%>
alert("사용가능한 아이디 입니다 .")
<%}%>

</script>


<script type="text/javascript">
/* 전화번호 숫자만 입력체크 */

         function numkeyCheck(e) { 
		 var keyValue = event.keyCode;
         if( ((keyValue >= 48) && (keyValue <= 57)) )
         return true; else return false;
         }
</script>
<form name="joininfo" action="signup" method="post">
<h1 align="center">회원가입</h1>
<h4 align="center">아래의 항목을 입력 후 가입하기 버튼을 누르세요!</h4> 
   
<hr>
<br>
   <table style="margin-left: auto; margin-right: auto" >
      <tr>
         <td>ID</td>
   
         <td><input type="text" id="id" name="id"><input type="hidden" id="checkid">
    	  <input type="submit" value="중복체크"  formaction="idcheck"></td>

      
      </tr>
      
      <tr>
         <td>PW</td>
         <td><input type="password" name="pw"></td>
         <td></td>
      </tr>
      
      <tr>
         <td>PW확인</td>
         <td><input type="password" name="pwcheck"  onKeyPress="pwCheck()">
      </tr>
      
      <tr>
         <td>이름</td>
         <td><input type="text" name="name"></td>
         <td></td>
      </tr>
      
      <tr>
         <td>전화번호</td>
         <td>      
         <select name="tel1">
               <option value="010">010</option>
               <option value="02">02</option>
               <option value="031">031</option>
               <option value="032">032</option>
               <option value="033">033</option>
               <option value="041">041</option>
         </select>
               <input type="text" name="tel2" maxlength="4" onKeyPress="return numkeyCheck(event)">
               <input type="text" name="tel3" maxlength="4" onKeyPress="return numkeyCheck(event)"> 숫자만 입력해주세요!</td>
      </tr>
   
   <tr>      
         <td align="left" width="200">주소 &emsp;</td>
         <td align="left" width="800">
         <input type="text" id="sample6_postcode" placeholder="우편번호" name = "zipcode" style="width: 100px; height: 20px;">&emsp;
         <input type="text" id="sample6_address" placeholder="주소" name = "address1" style="width: 200px; height: 20px;">&emsp;
         <input type="button" onclick="sample6_execDaumPostcode()" value="주소검색" style="WIDTH: 80pt;"><br><br> 
         <input type="text" id="sample6_detailAddress" placeholder="상세주소" name = "address2" style="width: 180px; height: 20px;">&emsp;
         <input type="text" id="sample6_extraAddress" placeholder="참고항목" name = "extra" style="width: 120px; height: 20px;">
         <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
            <script>
                function sample6_execDaumPostcode() {
                    new daum.Postcode({
                        oncomplete: function(data) {
                            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            
                            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                            var addr = ''; // 주소 변수
                            var extraAddr = ''; // 참고항목 변수
            
                            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                                addr = data.roadAddress;
                            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                                addr = data.jibunAddress;
                            }
            
                            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                            if(data.userSelectedType === 'R'){
                                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                                    extraAddr += data.bname;
                                }
                                // 건물명이 있고, 공동주택일 경우 추가한다.
                                if(data.buildingName !== '' && data.apartment === 'Y'){
                                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                }
                                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                                if(extraAddr !== ''){
                                    extraAddr = ' (' + extraAddr + ')';
                                }
                                // 조합된 참고항목을 해당 필드에 넣는다.
                                document.getElementById("sample6_extraAddress").value = extraAddr;
                            
                            } else {
                                document.getElementById("sample6_extraAddress").value = '';
                            }
            
                            // 우편번호와 주소 정보를 해당 필드에 넣는다.
                            document.getElementById('sample6_postcode').value = data.zonecode;
                            document.getElementById("sample6_address").value = addr;
                            // 커서를 상세주소 필드로 이동한다.
                            document.getElementById("sample6_detailAddress").focus();
                        }
                    }).open();
                }
            </script>
         </td>
      </tr>
      <tr>
         <td>이메일</td>
         <td colspan="2"><input type="text" name="email1">@
                     <input type="text" id="email2" name="email2">
                     <select id="domain" onchange="alert_select_value(this)"> 
                        <option value="직접입력">직접입력</option> 
                        <option value="gmail.com">gmail.com</option>                     
                        <option value="naver.com">naver.com</option>                     
                        <option value="daum.net">daum.net</option>                     
                                            
                     </select>
         <script>
                var alert_select_value = function (select_obj){
                                    // 우선 selectbox에서 선택된 index를 찾고 
               var selected_index = select_obj.selectedIndex;
                                    // 선택된 index의 value를 찾고 
               var selected_value = select_obj.options[selected_index].value;
                                    // 원하는 동작을 수행한다. 여기서는 그냥 alert해주는 식으로만 처리함.
                           
                    document.getElementById("email2").value = selected_value
                    };
         </script>
      </tr>
     
   </table>   
   <br>
    <table style="margin-left: auto; margin-right: auto">
      <tr>
         <td><a href="login"><input type="button" value="초기화면" style="border:none; width:200px;height:50px; color: white; background-color: black;"></a></td>
         <td><input type="button" name="signup" value="가입하기" onclick="checkdata()"style="border:none; width:200px;height:50px; color: white; background-color: black;"></td>

      </tr>   
   </table>
</form>
         

</body>
</head>
</html>