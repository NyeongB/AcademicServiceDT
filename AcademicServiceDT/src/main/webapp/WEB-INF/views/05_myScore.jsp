<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>성적조회</title>
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

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">


				<jsp:include page="00_nav.jsp"></jsp:include>


				<br>
				<hr>



				<div class="container" style="text-align: right;">
					<select class="form-control">
						<option>전체학기</option>
						<option>2020년 1학기</option>
						<option>2020년 2학기</option>
					</select>
				</div>
				
				<br>


				<div>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>과목코드</th>
								<th>과목명</th>
								<th>성적</th>
								<th>학점</th>
								<th>이수구분</th>
								<th>교수</th>
							</tr>
						</thead>
						
						<c:forEach var="tmp" items="${list}">
						
							<tbody>
								<tr>
									<td>${tmp.subject_code}</td>
									<td>${tmp.subject_name}</td>
									<td>${tmp.score}</td>
									<td>${tmp.credit}</td>
									<td>${tmp.category}</td>
									<td>${tmp.professor_name}</td>
								</tr>
							</tbody>
					
	    				</c:forEach>

					</table>
						취득학점 : 15 평균평점 : 3.28 백분위 점수 : 86.8 <br>
					총취득학점 : 100 총평균평점 : 3.28 총백분위점수 : 86.8
				</div>



			</div>
			<div class="col-md-2"></div>
		</div>
	</div>



</body>
</html>