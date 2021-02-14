<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Banana</title>
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/css/footerStyle.css">
<link rel="icon" href="<%=cp%>/images/favicon.ico" />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@900&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<style type="text/css">
#footer {
	width: 100%;
	height: 60px;
	background-color: var(- -back-color);
	display: flex;
	/* text-align: center; */
	justify-content: center;
	position: absolute;
	z-index: -1;
}

#footer_list {
	font-weight: bold;
}
</style>
</head>
<body>
	<p>CopyRightⓒ byeong-hui kim, dong-il cho, cheol-nyeong choi <br>
	All Rights Reserved</p>
	<div id="footer">




		<br> <img alt="" style="width: 1000px; height: 80px;"
			src="https://user-images.githubusercontent.com/46181195/107870020-26549200-6ed8-11eb-8aed-a3f702610ce6.png">
	</div>


</body>
</html>