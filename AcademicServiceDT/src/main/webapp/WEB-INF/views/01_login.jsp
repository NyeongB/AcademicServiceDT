<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${msg == 0 }">
	<script>
		alert("아이디, 비밀번호를 확인하세요.");
	</script>
</c:if>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
<style>
button {
	color: #3498db;
}

#idErr, #pwErr, #loginErr {
	font-weight: 800;
	color: #f04337;
	margin-left: 30px;
	font-size: 9pt;
}
</style>
<script type="text/javascript">
	// 로그인 버튼 클릭 시 이벤트
	function login() {
		// 사용자가 입력한 아이디, 비밀번호 값 얻어오기
		var id = document.getElementById("id").value
		var pw = document.getElementById("pw").value

		// 아이디를 입력하지 않은 경우
		if (id == "" || id == null || id == " ") {
			// 아이디 미입력 안내 메세지 노출
			/* document.getElementById("idErr").style.display = "inline"; */
			alert("아이디를 입력해주세요.");
			// 서브밋 하지 않는다.
			return false;
		}

		// 패스워드를 입력하지 않은 경우
		if (pw == "" || pw == null || pw == "") {
			alert("비밀번호를 입력해주세요.");
			// 서브밋 하지 않는다.
			return false;

		}

		return true;

	}
</script>
</head>
<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">



				<jsp:include page="00_header.jsp"></jsp:include>

				<br>
				<div align="right">

					<form class="form-horizontal" action="loginAction"
						onsubmit="return login();">
						<div class="row">
							<div class="col-md-6">

								<!-- 사진 영역 -->


							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-4 control-label"
										align="right">학번</label>
									<div class="col-sm-8">
										<input type="text" class="form-control" id="id" name="id"
											placeholder="학번">
									</div>
									<!-- <div id="idErr" style="margin-right: 20px; margin-top: 20px;"> 아이디를 입력해주세요</div> -->
								</div>

								<div class="form-group">
									<label for="inputPassword3" class="col-sm-4 control-label">비밀번호</label>
									<div class="col-sm-8" align="right">
										<input type="password" class="form-control" id="pw" name="pw"
											placeholder="비밀번호">
									</div>
									<!-- <div id="pwErr" style="margin-right: 20px; margin-top: 20px;"> 비밀번호를 입력해주세요</div> -->
								</div>
							</div>
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
								<a href="id"><button type="button" class="btn btn-primary"
										id="id">학번찾기</button></a> <a href="pw"><button type="button"
										class="btn btn-primary" id="pw">비밀번호찾기</button></a>
							</div>
						</div>
					</form>



					<br> <br> <br> <br> <br> <br> <br>
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br>



					<!-- footer  -->
					<div class="row">
						<div class="col-md-12">
							<jsp:include page="00_footer.jsp"></jsp:include>
						</div>
					</div>

				</div>



			</div>
			<div class="col-md-2"></div>
		</div>

	</div>



</body>
</html>