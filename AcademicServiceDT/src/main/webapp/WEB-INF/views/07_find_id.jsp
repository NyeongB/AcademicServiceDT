<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<style>
.login {
	
}
</style>
</head>
<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">


				<jsp:include page="00_header.jsp"></jsp:include>
				<div class="login" align="center">
					

					<form class="form-horizontal" action=idPhoneCheck>

						<h1>아이디 찾기</h1>
						인증방법
						<label class="radio-inline"> <input type="radio"
							name="inlineRadioOptions" id="inlineRadio1" value="option1">
							이메일
						</label> <label class="radio-inline"> <input type="radio"
							name="inlineRadioOptions" id="inlineRadio2" value="option2">
							핸드폰
						</label>
						
						
						<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-9">
						
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">이름</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="id" name="name"
									placeholder="studentId">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">휴대폰 번호</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="phone" name="phone"
									placeholder="phoneNumber">
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-primary">확인</button>
							</div>
						</div>
						
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