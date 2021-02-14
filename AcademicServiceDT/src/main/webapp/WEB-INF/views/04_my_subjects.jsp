<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${studentId == null }">
	<script>
		location.href="loginMain";
	</script>
</c:if>
<html>

<!-- function deleteRow(rownum) {

  const table = document.getElementById('apply');
  const newRow = table.deleteRow(rownum);
} -->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>신청과목 조회</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<style>
.login {
	text-align: right;
}



hr {
	clear: both;
}



</style>



<script type="text/javascript">

   
   function del(num)
   {
      if(confirm('정말 삭제하시겠습니까?'))
      location.href='delete?registerCode='+num;
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
				<div>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>수강학년</th>
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
					
					<c:forEach var="tmp" items="${list}" varStatus="status">
    				
    				<tbody>	
    					
						<tr>
							<c:choose>
									<c:when test="${tmp.subject_grade == 0}">전체</c:when>
									<c:otherwise>${tmp.subject_grade}</c:otherwise>
									</c:choose>
									</td>
							<td>${tmp.category}</td>
							<td>${tmp.subject_code}</td>
							<td>${tmp.subject_name}</td>
							<td>${tmp.professor_name}</td>
							<td>${tmp.credit}</td>
							<td>${tmp.subject_time}</td>	
							<td>${tmp.subject_place}</td>
							<td>
                           <button type="button" class="btn btn-danger" onclick='del(${tmp.register_code})'>
                           Delete
                           </button>
                        </td>
							
							<%-- 
							<input type="text" value="${tmp.register_code}">
							<td><button type="button" onclick="d(t${status.index})"  id="${status.index }">삭제</button></td>
							 --%>
							
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
							<td>수강신청학점내역</td>
							<td>현재신청학점 : <c:out value = "${sum}"/></td>
							<td>신청최대학점 : 21</td>
						</tr>
						
				</table>
				
				</div>

			</div>
			<div class="col-md-2"></div>
		</div>
	</div>



</body>
</html>