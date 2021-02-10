<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>신청과목 조회</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

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
				<div>
				<button type="button" class="btn btn-primary">전공과목</button>
				<button type="button" class="btn btn-primary">교양과목</button>
				<button type="button" class="btn btn-primary">타학과과목</button>
				<a href="03_subjects.jsp"><button type="button" class="btn btn-primary">전체 시간표</button></a>
				<a href="04_my_subjects.jsp"><button type="button" class="btn btn-primary">신청과목 조회</button></a>
				</div>
				
				
				<p class="lead" style="text-align: right;">2020년 1학기</p>

				
				
				<div>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>학년</th>
							<th>이수구분</th>
							<th>과목코드</th>
							<th>과목명</th>
							<th>교수</th>
							<th>학점</th>
							<th>교시</th>
							<th>강의실</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>3</td>
							<td>전공필수</td>
							<td>A-001</td>
							<td>데이터베이스</td>
							<td>김병희</td>
							<td>3</td>
							<td>월23</td>
							<td>팔달관 401호</td>
							<td><button type="button" class="btn">삭제</button></td>
						</tr>

					</tbody>
					<tbody>
						<tr>
							<td>3</td>
							<td>전공필수</td>
							<td>A-001</td>
							<td>데이터베이스</td>
							<td>김병희</td>
							<td>3</td>
							<td>월23</td>
							<td>팔달관 401호</td>
							<td><button type="button" class="btn">삭제</button></td>
						</tr>

					</tbody>
					<tbody>
						<tr>
							<td>3</td>
							<td>전공필수</td>
							<td>A-001</td>
							<td>데이터베이스</td>
							<td>김병희</td>
							<td>3</td>
							<td>월23</td>
							<td>팔달관 401호</td>
							<td><button type="button" class="btn">삭제</button></td>
						</tr>

					</tbody>
					<tbody>
						<tr>
							<td>3</td>
							<td>전공필수</td>
							<td>A-001</td>
							<td>데이터베이스</td>
							<td>김병희</td>
							<td>3</td>
							<td>월23</td>
							<td>팔달관 401호</td>
							<td><button type="button" class="btn">삭제</button></td>
						</tr>

					</tbody>
				</table>
				</div>
				
				<div>
			<nav style="text-align: center;">
				<ul class="pagination">
					<li class="page-item">
						<a class="page-link" href="#">Previous</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">1</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">2</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">3</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">4</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">5</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">Next</a>
					</li>
				</ul>
			</nav>
			</div>


			</div>
			<div class="col-md-2"></div>
		</div>
	</div>



</body>
</html>