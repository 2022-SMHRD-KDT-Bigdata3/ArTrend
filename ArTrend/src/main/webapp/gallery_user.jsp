<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<title>galley</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<!-- 현아 헤더 css -->
<link href="./assets/css/header.css" rel="stylesheet">
<!-- footer css -->
<link href="./assets/css/footer.css" rel="stylesheet">

<!-- 템플릿 css -->
<link rel="stylesheet" href="./assets2/css/main.css" />
<noscript>
	<link rel="stylesheet" href="./assets2/css/noscript.css" />
</noscript>

<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>

<body class="is-preload">

	<%@include file="gallery_user_header.jsp"%>
	<!-- 헤더수정완 -->



	<!-- Wrapper-->
	<div id="wrapper">

		<!-- Nav -->
		<nav id="nav">
			<a href="#" class="icon solid fa-home"><span> POST </span></a> <a
				href="#work" class="icon solid fa-folder"><span> INFO </span></a> <a
				href="#contact" class="icon solid fa-chevron-right"><span>
					SUPPORT </span></a>

		</nav>

		<!-- Main -->
		<div id="main">

			<!-- post -->
			<div id="home" class="panel intro">
				<%@include file="gallery_user_post.jsp"%>

			</div>

			<!-- info 경원 수정 완-->
			<div id="work" class="panel">
				<%@include file="gallery_user_info.jsp"%>

			</div>


			<!-- support 경원수정완료-->
			<div id="contact" class="panel">
				<%@include file="gallery_user_support.jsp"%>
			</div>
		</div>


	</div>

	<footer id="footer">
		<div class="container">
			<div class="row">
				<div class="footer_b">
					<ul>
						<li>ArTrend</li>
					</ul>
					<address>
						Copyright ⓒ <a href="#" style="color: rgb(166, 166, 166);"><strong>ArTrend</strong></a>
						All Rights Reserved
					</address>
				</div>
			</div>
		</div>
	</footer>
	<!-- Scripts -->
	<script src="./assets2/js/jquery.min.js"></script>
	<script src="./assets2/js/browser.min.js"></script>
	<script src="./assets2/js/breakpoints.min.js"></script>
	<script src="./assets2/js/util.js"></script>
	<script src="./assets2/js/main.js"></script>

</body>
</html>