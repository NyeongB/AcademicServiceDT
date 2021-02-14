<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>성적조회</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<style>
.login {
	text-align: right;
}

hr {
	clear: both;
}
</style>

<SCRIPT LANGUAGE="JavaScript">

function change(style) {
    
   if( style == "all" )
	   {
       view1.style.display = "inline"
	   view2.style.display = "none"
	   view3.style.display = "none"
	   }
   if( style == "one" )
      {
       view1.style.display = "none"
	   view2.style.display = "inline"
	   view3.style.display = "none"
	   }
	if( style == "two" )
      {
       view1.style.display = "none"
	   view2.style.display = "none"
	   view3.style.display = "inline"
	   }
   	}
</SCRIPT>

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
					<select class="form-control"  style="width:200px;" onchange = "location.href=this.value">
						<option value>선택</option>
						<option value = "http://localhost:5432/dt/myScores">전체학기</option>
						<option value = "http://localhost:5432/dt/myScore?y=2020&s=1">2020학년도 1학기</option>
						<option value = "http://localhost:5432/dt/myScore?y=2020&s=2">2020학년도 2학기</option>
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
									<td>${tmp.scoreChange}</td>
									<td>${tmp.credit}</td>
									<td>${tmp.category}</td>
									<td>${tmp.professor_name}</td>
								</tr>
							</tbody>
					
	    				</c:forEach>

					</table>
					
					<table class="table table-bordered">
					<colgroup>
						<col width = "20%" />
					</colgroup>
					<c:set var = "sum" value = "0" />
					<c:forEach var="tmp" items="${list}">
					<tbody>
						<c:set var = "sum" value = "${sum+tmp.credit}"/>
					</tbody>
					</c:forEach>
						<tr>
							<td>취득학점 : <c:out value = "${sum}"/></td>
						</tr>
						
				</table>
						
					<!-- 
					취득학점 : 15 평균평점 : 3.28 백분위 점수 : 86.8 <br>
					총취득학점 : 100 총평균평점 : 3.28 총백분위점수 : 86.8
					 -->
				</div>



			</div>
			<div class="col-md-2"></div>
		</div>
	</div>



</body>
</html>