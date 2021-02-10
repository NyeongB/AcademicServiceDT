<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<style>
.login {
	text-align: right;
}
</style>
</head>
<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">


				<jsp:include page="00_header.jsp"></jsp:include>
				<div class="login">
					

					<form class="form-horizontal" action="loginAction">

						<h1>비밀번호 찾기</h1>
						인증방법
						<label class="radio-inline"> <input type="radio"
							name="inlineRadioOptions" id="inlineRadio1" value="option1">
							이메일
						</label> <label class="radio-inline"> <input type="radio"
							name="inlineRadioOptions" id="inlineRadio2" value="option2">
							핸드폰
						</label>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">학번</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" id="inputEmail3"
									placeholder="Email">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">이름</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="inputPassword3"
									placeholder="Password">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">번호</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="inputPassword3"
									placeholder="Password">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-primary">로그인</button>
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