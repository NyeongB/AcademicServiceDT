<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<style>

button {
	color: #3498db;
	
}
</style>
<script type="text/javascript">

$("#btn").click(function(){
	alert("!");
});

</script>
</head>
<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">


				<jsp:include page="00_header.jsp"></jsp:include>
				
				
				<div  align="right">

					<form class="form-horizontal" action="loginAction">
					<div class="row">
					<div class="col-md-6"></div>
					<div class="col-md-6">
					<div class="form-group">
							<label for="inputEmail3" class="col-sm-4 control-label" align="right">학번</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="id" name="id" placeholder="학번">
							</div>
						</div>

						<div class="form-group">
							<label for="inputPassword3" class="col-sm-4 control-label">비밀번호</label>
							<div class="col-sm-8" align="right">
								<input type="password" class="form-control" id="pw" name="pw"
									placeholder="비밀번호">
							</div>
						</div></div>
					</div>
						
						
						<!-- 아이디 저장 -->
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									<label> <input type="checkbox"> Remember me
									</label>
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-primary">로그인</button>
								<a href="id"><button type="button" class="btn btn-primary" id="id">학번찾기</button></a>
								<a href="pw"><button type="button" class="btn btn-primary" id="pw">비밀번호찾기</button></a>
							</div>
						</div>
					</form>


				</div>


			</div>
			<div class="col-md-2"></div>
		</div>
	</div>



</body>
</html>