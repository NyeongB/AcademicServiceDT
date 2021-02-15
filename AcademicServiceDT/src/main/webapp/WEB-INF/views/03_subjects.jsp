<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${studentId == null }">
	<script>
		location.href="loginMain";
	</script>
</c:if>
<c:if test="${msg == 0 }">
	<script>
		alert("최대 학점을 초과하셨습니다.");
	</script>
</c:if>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>전체 시간표 조회</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
<style>
hr {
	clear: both;
}

th{
background-color: #F1F3F4;
}

</style>

<script type="text/javascript">
//var name;

   
   function insert(code)
   {
	  
	  //name = document.querySelector("#subject").value;
      if(confirm('정말 신청하시겠습니까?'))
      {
    	  
    	 location.href='insert?subjectCode='+code;
      }
      
   }

</script>

</head>
<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">

				<jsp:include page="00_nav.jsp"></jsp:include>

				<br>
				<hr>

				<jsp:include page="00_buttons.jsp"></jsp:include>
				<br>
				<p class="lead" style="text-align: right;">[ 2021년 1학기 ]</p>
				<div>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>수강학년</th>
								<th>이수구분</th>
								<th>과목명</th>
								<th>교수</th>
								<th>학점</th>
								<th>교시</th>
								<th>강의실</th>
								<th></th>
							</tr>
						</thead>



						<c:forEach var="tmp" items="${list}">

							<tbody>
								<tr>
									<td>
									<c:choose>
									<c:when test="${tmp.subject_grade == 0}">전체</c:when>
									<c:otherwise>${tmp.subject_grade}</c:otherwise>
									</c:choose>
									</td>
									<td>${tmp.category}</td>
									<td id="subject">${tmp.subject_name}</td>
									<td>${tmp.professor_name}</td>
									<td>${tmp.credit}</td>
									<td>${tmp.subject_time}</td>
									<td>${tmp.subject_place}</td>
									<td align="center"><button type="button" class="btn btn-primary"
											onclick='insert(${tmp.subject_code})'>신청</button></td>
								</tr>

							</tbody>



						</c:forEach>




					</table>
				</div>

				<!-- paing index -->
				<!-- 페이징 인덱스 반드시 추가  -->
				<div class="row">
					<div class="col-md-12 text-center">
						<nav>
							<ul class="pagination">
								<li class="disabled"><a href="#" aria-label="Previous"><span
										aria-hidden="true">&laquo;</span></a></li> ${pageIndexList }
								<li><a href="#" aria-label="Next"><span
										aria-hidden="true">&raquo;</span></a></li>
							</ul>
						</nav>
					</div>
				</div>


			</div>
			<div class="col-md-2"></div>
		</div>
	</div>



</body>
</html>