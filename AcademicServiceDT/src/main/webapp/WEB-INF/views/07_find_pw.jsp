<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디/ 비밀번호 인증</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<style>
.login {
	text-align: right;
}
</style>

<script type="text/javascript">

var phoneCheck;

var statePhone = 0;

$(document).ready(function()
{
	
	$("#findBtn").click(function()
	{
		
		if($("#name").val().trim()=="" || $("#phoneNumber").val().trim()=="")
		{
			alert("값을 입력해야합니다.");
			return;
		}
		
		ajaxRequest();
		
	});
	
	
	$("#checkBtn").click(function()
	{
		//$("#phoneForm").submit();
		if($("#confirmNum").val()==0)
		{
			alert("인증번호를 입력하세요");
			return;
		}
		
		if($("#confirmNum").val()==phoneCheck)
		{
			alert("인증번호 확인!");
			//$("#phoneForm").submit();
			location.href = "";
		}
		else
		{
			alert("인증번호가 같지않습니다.");
			statePhone = 0;
			return;
		}
	});
	
});

// 휴대폰 인증 
function ajaxRequest()
{
	
	alert("인증번호가 발송되었습니다.");
	$.get("telcheck.action", {tel : $("#localNum").val()+$("#phoneNumber").val()}, function(data)
	{
		//alert(data);
		phoneCheck = data.trim();
		//alert(phoneCheck);
		
	});
	
}


	
</script>
</head>
<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">


				<jsp:include page="00_header.jsp"></jsp:include>
				<div class="login">
					

					<form action="pwPhoneCheck" method="get" class="form-inline">
                  <br>
                     <!-- <input type="radio" name="phoneSearch" id="phoneSearch"><b>
                        휴대전화로 찾기</b> <br>
                     <br> -->
                     <h3>비밀번호 찾기</h3>

                     <div class="form-group">
                        <label for="name"> 학번 </label> <input type="text"
                           class="form-control" id="name" placeholder="이름" name="id">
                     </div>
                     <br>
                     <br>

                     <div class="form-group">
                        <label for="phoneNumber"> 핸드폰 번호 </label> 
                        <select id="localNum" name="num1" class="form-control">
                           <option value="010">010</option>
                           <option value="011">011</option>
                        </select> <input type="text" class="form-control" id="phoneNumber" name="num2"
                           placeholder="전화번호" />
                        <button type="button" class="btn btn-primary" id="findBtn">인증번호 받기</button>
                     </div>
                     <br>
                     <br>

                     <div class="form-group">
                        <input type="text" class="form-control" id="confirmNum"
                           placeholder="인증번호" />
                        <button type="submit" class="btn btn-primary" id="checkBtn">인증번호 확인</button>
                     </div>

                     
                  </form>


				</div>


			</div>
			<div class="col-md-2"></div>
		</div>
	</div>



</body>
</html>