<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>판매자 회원정보</title>
</head>
<body>
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
 
<% request.getAttribute("userdetail"); %>

      <form method="post">
      <h3 align="center">회원정보</h3>
   <table style="margin-left: auto; margin-right: auto" >
         
         
<%--          <tr height="30">
            <td></td>
            <td> <input type="hidden" name="seq" value="${userdetail.user_Seqno}" readonly/> </td>
         </tr> --%>
         <tr height="50">
            <td> 아이디 </td>
            <td> <input type="text" name="id" value="${userdetail.user_Id}"style="width:200px;height:30px;font-size:13px;" readonly/> </td>
         </tr>
         
         <tr height="50">
            <td> 비밀번호 </td>
            <td> <input type="text" name="pw" value="${userdetail.user_Password}"style="width:200px;height:30px;font-size:13px;" /></td>
         </tr>
         <tr height="50">
            <td> 이름 </td>
            <td> <input type="text" name="name" value="${userdetail.user_Name }"style="width:200px;height:30px;font-size:13px;" /></td>
         </tr>
         
         <tr height="50">
            <td> 전화번호 </td>
            <td> <input type="text" name="tel" value="${userdetail.user_Telno }"style="width:200px;height:30px;font-size:13px;" /></td>
         </tr>
         <%-- <tr height="30">
            <td> 우편번호 </td>
            <td> <input type="text" name="zipcode" value="${userdetail.user_Addresszipcode }"style="width:200px;height:30px;font-size:13px;" /></td>
         </tr> --%>
      
<%--          <tr height="30">
            <td> 주소 </td>
            <td> <input type="text" name="address1" value="${userdetail.user_Address1 }"style="width:300px;height:30px;font-size:13px;" /><td>
         <tr height="30">
            <td></td>
            <td> <input type="text" name="address2" value="${userdetail.user_Address2 }"style="width:300px;height:30px;font-size:13px;" /></td>
         </tr>
         <tr height="30">
            <td></td>
            <td> <input type="text" name="address2" value="${userdetail.user_Address3 }"style="width:300px;height:30px;font-size:13px;" /></td>
         </tr>
--%>
         
         <tr>
         <td align="left" width="200">주소 &emsp;</td>
         <td align="left" width="800">
         <input type="text" id="sample6_postcode" value="${userdetail.user_Addresszipcode }" placeholder="우편번호" 
          name = "zipcode" style="width: 100px; height: 20px;">&emsp;
          
         <input type="text" id="sample6_address" value="${userdetail.user_Address2 }" placeholder="주소"
          name = "address1" style="width: 200px; height: 20px;">&emsp;
          
         <input type="button" onclick="sample6_execDaumPostcode()" value="주소검색" style="WIDTH: 80pt;"><br><br> 
         
         <input type="text" id="sample6_detailAddress" value="${userdetail.user_Address3 }" placeholder="상세주소"
          name = "address2" style="width: 180px; height: 20px;">&emsp;
          
         <input type="text" id="sample6_extraAddress" value="${userdetail.user_Address1 }" placeholder="참고항목"
          name = "extra" style="width: 120px; height: 20px;">
          
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
         <td colspan="2"><input type="text"value="${userdetail.user_Email1 }" name="email1">@
                     <input type="text" id="email2" value="${userdetail.user_Email2 }" name="email2">
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

      <tr>
            <td colspan="2"> 
                        <input formaction="MyProductList" type="submit" value="뒤로가기" style="border:none; width:200px;height:50px; color: white; background-color: black;">
                        <input formaction ="userupdatedetail" type="submit" value="수정하기" style="border:none; width:200px;height:50px; color: white; background-color: black;">
                        <input formaction ="MyDmbox" type="submit" value="메세지" style="border:none; width:200px;height:50px; color: white; background-color: black;">
                        <input formaction ="MyProductList" type="submit" value="내가올린상품" style="border:none; width:200px;height:50px; color: white; background-color: black;">
         </tr>         
   </table>
   
</form>


</body>
</html>