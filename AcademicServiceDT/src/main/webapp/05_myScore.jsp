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
						<option>2020년 1학기</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
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
						<tbody>
							<tr>
								<td>A-001</td>
								<td>컴퓨터 구조</td>
								<td>A0</td>
								<td>3</td>
								<td>전공필수</td>
								<td>김병희</td>
							</tr>
						</tbody>
						<tbody>
							<tr>
								<td>A-002</td>
								<td>운영체제</td>
								<td>B0</td>
								<td>3</td>
								<td>전공필수</td>
								<td>김병희</td>
							</tr>
						</tbody>
						<tbody>
							<tr>
								<td>A-003</td>
								<td>객체지향 프로그래밍</td>
								<td>B+</td>
								<td>3</td>
								<td>전공선택</td>
								<td>조동일</td>
							</tr>
						</tbody>
						<tbody>
							<tr>
								<td>A-004</td>
								<td>컴퓨터 네트워크</td>
								<td>B+</td>
								<td>3</td>
								<td>교양필수</td>
								<td>조동일</td>
							</tr>
						</tbody>
						<tbody>
							<tr>
								<td>A-005</td>
								<td>알고리즘</td>
								<td>B0</td>
								<td>3</td>
								<td>전공필수</td>
								<td>최철녕</td>
							</tr>
						</tbody>

					</table>
						취득학점 : 15 환산총점 : 52.5 평균평점 : 3.28 백분위 점수 : 86.8<br>
					총취득학점 : 100 총환산총점 : 52.5 총평균평점 : 3.28 총백분위점수 : 86.8
				</div>



			</div>
			<div class="col-md-2"></div>
		</div>
	</div>



</body>
</html>