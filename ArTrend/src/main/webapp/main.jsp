<%@page import="com.smhrd.model.BoardsVO"%>
<%@page import="com.smhrd.model.BoardsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ArTrend</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<!-- 현아 css -->
<link href="./assets/css/main.css" rel="stylesheet">
<link href="./assets/css/header.css" rel="stylesheet">

<!-- 장호 css -->
<link rel="stylesheet" href="./assets/kjh/css/postModal.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<body>

	<%@include file="header.jsp"%>
	<!-- 최신글 순서 메인 화면 -->
	<div class="container text-center">

		<div class="row">
		
			<!-- card 시작 -->
			<%@include file="post_view.jsp"%>
			<!-- card 끝 -->
			
		</div>
		<!-- row 끝 -->

	</div>

</body>
</html>
