<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<style>

#btn1, #btn2, #btn3{
float : left;
margin-right: 3px;
}

#btn4{
float: right;
}

</style>
<script type="text/javascript">

$(function(){
	$("#btn1").click(function(){
		location.href="subjects?flag=0";
	});
	
	$("#btn2").click(function(){
		location.href="subjects2";
	});
	
	$("#btn3").click(function(){
		location.href="subjects3";
	});
});


	
</script>
</head>
<body>

<div>
				<button type="button" class="btn btn-primary" id="btn1">전체과목</button>
				<button type="button" class="btn btn-primary" id="btn2">전공과목</button>
				<button type="button" class="btn btn-primary" id="btn3">교양과목</button>
				<a href="mySubjects"><button type="button" class="btn btn-primary" id="btn4">신청과목 조회</button></a>
				<div style="clear: both;"></div>
				</div>

</body>
</html>