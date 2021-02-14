<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.oopsw.dt.UserInfoDTO"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학생정보 조회</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<style>
.login {
	text-align: right;
}

hr {
	clear: both;
}
</style>
</head>

<body>
	<%
		UserInfoDTO userInfoDTO = new UserInfoDTO();
	%>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">

				<jsp:include page="00_nav.jsp"></jsp:include>
				<hr>
				<br>
				<table class="table table-bordered">

					<tbody>
						<tr>
							<th>이름</th>
							<td>${userInfoDTO.studentName }</td>
							<th>이메일</th>
							<td>${userInfoDTO.email}</td>
							<th>생년월일</th>
							<td>${userInfoDTO.birthday}</td>
						</tr>
						<tr>
							<th>대학</th>
							<td>${userInfoDTO.college}</td>
							<th>학과</th>
							<td>${userInfoDTO.majorName }</td>
							<th>입학일자</th>
							<td>${userInfoDTO.entranceDate}</td>
						</tr>
						<tr>
							<th>학적상태</th>
							<td>${userInfoDTO.statement }</td>
							<th>주소</th>
							<td colspan="3">${userInfoDTO.address }</td>

						</tr>

					</tbody>
				</table>

				<div class="form-group" align="right">
					<div class="col-sm-offset-2 col-sm-10 mButton gCenter">
						<a href="edit"><button type="submit" class="btn btn-primary">학생정보변경</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>



</body>
</html>