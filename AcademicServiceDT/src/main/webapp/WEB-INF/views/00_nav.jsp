<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<style>
header nav {
	float: left;
	display: inline;
	margin-top: 50px;
}

header nav ul {
	list-style-type: none;
}

header nav ul li {
	display: inline;
	float: left;
	font-size: 40px;
	padding-right: 20px;
	font-weight: bold;
}

#name{
font-size: medium;
font-weight: bold;
}

</style>
</head>
<body>


	<div>
		<header>
			<nav>
				<ul>
					<li><a href="userInfo">학생정보</a></li>
					<li><a href="subjects">수강신청</a></li>
					<li><a href="start">성적조회</a></li>
					<li><a href="logout">로그아웃</a></li>
					<div id="name" style="display: inline;">${studentName }님 환영합니다.</div>
				</ul>
			</nav>
		</header>
	</div>

</body>
</html>