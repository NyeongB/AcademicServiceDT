<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.oopsw.dt.UserInfoDTO" %>

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
							${UserInfoDTO.studentName }
						</td>
						<th>
							이메일
						</th>
						<td>
							${UserInfoDTO.email }
						</td>
						<th>
							 
						</th>
						<td>
							 
						</td>
					</tr>
					<tr>
						<th>
							학과
						</th>
						<td>
							${UserInfoDTO.major }
						</td>
						<th>
							입학일자
						</th>
						<td>
							${UserInfoDTO entranceDate}
						</td>
						<th>
							생년월일
						</th>
						<td>
							${UserInfoDTO birthday}
						</td>	
					</tr>
					<tr>
						<th>주소</th>
						<td colspan="5">${UserInfoDTO.address }</td>
					</tr>
					<tr>
						<th>
							학적상태
						</th>
						<td>
							${UserInfoDTO.statement }
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