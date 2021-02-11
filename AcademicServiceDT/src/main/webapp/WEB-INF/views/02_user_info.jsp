<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학생정보 조회</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<style>
.login {
text-align: right;

}



hr {
clear : both;
}


</style>
</head>
<body>
	
	<div class="container-fluid">
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
		
		<jsp:include page="00_nav.jsp"></jsp:include>
				
				
				<br>
				<hr>
		
		<p>학생정보</p>
		<image >
		<table class="table table-bordered">
				
				<tbody>
					<tr>
						<th>
							이름
						</th>
						<td>
							최철녕
						</td>
						<th>
							학년
						</th>
						<td>
							4
						</td>
						<th>
							이메일
						</th>
						<td>
							ccnyeong@metanet.co.kr
						</td>
					</tr>
					<tr>
						<th>
							학과
						</th>
						<td>
							미디어학과
						</td>
						<th>
							입학일자
						</th>
						<td>
							2012
						</td>
						<th>
							생년월일
						</th>
						<td>
							931013
						</td>	
					</tr>
					<tr>
						<th>주소</th>
						<td colspan="5">경기도 고양시 일산서구 고양대로 685(현대홈타운 1차) 105동 1001호</td>
					</tr>
					<tr>
						<th>
							학적상태
						</th>
						<td>
							재학
						</td>
						<th>
							주전공
						</th>
						<td>
							디지털미디어
						</td>
						<th>
							부전공
						</th>
						<td>
							
						</td>	
					</tr>
					
				</tbody>
			</table>
			
			<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<a href="09_edit.jsp"><button type="submit" class="btn btn-primary">학생정보 변경</button></a>
							</div>
						</div>
		
		</div>
		<div class="col-md-2">
		</div>
	</div>
</div>
			


</body>
</html>