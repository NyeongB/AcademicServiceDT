<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학생정보 변경</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<style>
</style>
</head>
<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">


				<h3>DT 학사지원시스템</h3>
				<h3 class="text-right">로그인</h3>

				<hr>
				학생정보 변경
				<div class="login">
					<form class="form-horizontal" action="loginAction">




						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">이메일</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="inputPassword3"
									placeholder="Password">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">주소</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="inputPassword3"
									placeholder="Password">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">비밀번호</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="inputPassword3"
									placeholder="Password">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">비밀번호 확인</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="inputPassword3"
									placeholder="Password">
							</div>
						</div>
<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-primary">확인</button>
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