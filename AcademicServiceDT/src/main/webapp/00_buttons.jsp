<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<style>
.first{
float: left;
}
.first h3 {
font-size: 40px;
color: #3498db;
font-weight: bold;
}
.second{
float: right;

}
.second h3 {
font-size: 40px;
font-weight: bold;
}
.form {
clear: both;
}

</style>
</head>
<body>

<div>
				<button type="button" class="btn btn-primary">전체과목</button>
				<button type="button" class="btn btn-primary">전공과목</button>
				<button type="button" class="btn btn-primary">교양과목</button>
				
				<a href="mySubjects"><button type="button" class="btn btn-primary">신청과목 조회</button></a>
				</div>

</body>
</html>