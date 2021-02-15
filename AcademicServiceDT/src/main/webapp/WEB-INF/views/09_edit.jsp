<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${studentId == null }">
	<script>
		location.href="loginMain";
	</script>
</c:if>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학생정보 변경</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<style>

#head1{
float : left;
font-size: 35px;
color: #3498db;
font-weight: bold;
}

#head2{
float : right;
font-size: 35px;
font-weight: bold;
}



</style>
</head>
<script type="text/javascript">

$(function(){
	
	
	$("#update").click(function(){
		var phone = $("#phone").val();
		var email = $("#email").val();
		var address = $("#address").val();
		var password = $("#password").val();
		var passwordCheck = $("#passwordCheck").val();
		
		
		
		
		if(password != passwordCheck)
		{
			alert('비밀번호가 같지 않습니다.');
		}
		else
		{
			location.href="changeInfo?phone="+phone+"&email="+email+"&address="+address+"&password="+password;
		}
		
	});
	$("#login").click(function(){
		location.href="userInfo";
	});
	
	
	
});
</script>

<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">


				<jsp:include page="00_nav.jsp"></jsp:include>

				<hr style="clear: both;">
				<br>
				<div class="login">
					<form class="form-horizontal" >
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">핸드폰번호</label>
							<div class="col-sm-6">
								<input type="Tel" class="form-control" id="phone"
									name="phone" placeholder="01012345789">	
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">이메일</label>
							<div class="col-sm-6">
								<input type="Email" class="form-control" id="email"
									name="email" placeholder="MDT@metanet.co.kr">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">주소</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="address"
									name="address" placeholder="주소">
							</div>
						</div>
					
						<hr>
						
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">비밀번호</label>
							<div class="col-sm-6">
								<input type="password" class="form-control" id="password"
									name="password" placeholder="비밀번호">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">비밀번호
								확인</label>
							<div class="col-sm-6">
								<input type="password"  class="form-control" id="passwordCheck"
									name="passwordCheck" placeholder="비밀번호 확인">
							</div>
						</div>
						<div class="form-group" align="center">
							<hr>
							<div class="col-sm-offset-2 col-sm-10" >
								<button type="button" class="btn btn-primary" id="update">정보변경</button>
								
							</div>
						</div>
					</form>
				</div>


			</div>
			<div class="col-md-2"></div>
		</div>
	</div>



</body>
</html>