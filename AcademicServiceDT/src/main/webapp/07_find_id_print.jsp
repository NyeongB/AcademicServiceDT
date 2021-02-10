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
	text-align: right;
}
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
				<div class="login">


					<form class="form-horizontal" action="loginAction">

						<h1>학번 확인</h1>
						<h3>최철녕님의 학번은 "201222718"입니다.</h3>

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-primary">로그인 화면</button>
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