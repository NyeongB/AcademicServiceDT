<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.oopsw.dt.UserInfoDTO"%>
<c:if test="${studentId == null }">
	<script>
		location.href="loginMain";
	</script>
</c:if>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학생정보 조회</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<style>
.tbWidth10{width:10%;}
.tbWidth15{width:15%;}
.tbWidth7{width:7%;}
.tbWidth20{width:20%;}
.tbWidth30{width:30%;}
.tbWidth35{width:35%;}
.tbWidth40{width:40%;}
.tbWidth45{width:45%;}
.login {
	text-align: right;
}

hr {
	clear: both;
}

th{
background-color: #F1F3F4;
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
							<th class="tbWidth10">이름</th>
							<td class="tbWidth15">${userInfoDTO.studentName }</td>
							<th class="tbWidth10">이메일</th>
							<td class="tbWidth35">${userInfoDTO.email}</td>
							<th class="tbWidth10">생년월일</th>
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
							<td>${userInfoDTO.address }</td>
							<th>연락처</th>
							<td>${userInfoDTO.phone}</td>

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