<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${studentId == null }">
	<script>
		location.href="loginMain";
	</script>
</c:if>
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

				<div class="container" align = "left">
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
								<th>년도</th>
								<th>학기</th>
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
									<td>${tmp.year}</td>
									<td>${tmp.semester}</td>
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
					
					</div>
					
					<div align = "right">
					
					<table class="table table-bordered" style="width:200px;">
					
					<c:set var = "sum" value = "0" />
					<c:forEach var="tmp" items="${list}">
					<tbody>
						<c:set var = "sum" value = "${sum+tmp.credit}"/>
					</tbody>
					</c:forEach>
						<tr width = "20%">
							<td>취득학점 : <c:out value = "${sum}"/></td>
						</tr>
						
					<c:set var = "sum2" value = "0" />
					<c:forEach var="tmp2" items="${list}">
					<tbody>
						<c:set var = "sum2" value = "${total}"/>
					</tbody>
					</c:forEach>
						<tr width = "20%">
							<td>평점 : <c:out value = "${sum2}" /></td>
						</tr>	
						
				</table>
				</div>



			</div>
			<div class="col-md-2"></div>
		</div>
	</div>



</body>
</html>