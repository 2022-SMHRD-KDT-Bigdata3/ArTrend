
<%@page import="com.smhrd.model.SupportDAO"%>
<%@page import="com.smhrd.model.SupportVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>gallery_support</title>

<!--부트스트랩css-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<!--css파일 외부연결-->
<link rel="stylesheet" href="./assets/css_gallery/gallery_support.css">

<!-- 현아 header css -->
<link href="./assets/css/main.css" rel="stylesheet">
<link href="./assets/css/header.css" rel="stylesheet">

<!--구독중 모달 css-->
<link rel="stylesheet" href="./assets/css_gallery/gallery_Subscrib.css">

<!--다니css파일-->
<link rel="stylesheet" href="./assets/profile_css_dani/font_dani.css">
<link rel="stylesheet" href="./assets/profile_css_dani/main_dani.css">
<link rel="stylesheet" href="./assets/profile_css_dani/reset_dani.css">

<!-- 구글폰트 연결-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap"
	rel="stylesheet">

<!--아이콘-->
<script src="https://kit.fontawesome.com/fa92a52c34.js"
	crossorigin="anonymous"></script>
</head>

<body>

	<%
	//로그인된 정보 받아오기
	System.out.println("후원목록 가져오기 실행(mysupport)");
	UserVO my_support = (UserVO) session.getAttribute("info");
	String user_email = my_support.getUser_email();

	//support 정보 받아오기 
	SupportDAO sueprgreatdao = new SupportDAO();

	SupportVO support = sueprgreatdao.getSupport(user_email);
	response.setCharacterEncoding("UTF-8"); // 한글이 들어가기때문에 인코딩
	
	if (support != null) {
		System.out.println("support 정보 받아오기 성공");
		System.out.println(support.toString());//확인용출력
		//세션에저장
		session.setAttribute("support", support);
	} else {
		System.out.println("정보 받아오기 실패");
	}
	%>








	<!-- header include -->

	<div class="wrapper">

		<!--후원품-->
		<header class="container support_div support_ment" align="center">
		<%if(support != null){ %>
			<h2>
				@<%=my_support.getUser_nick()%>님의 후원이벤트가 진행중입니다!
			</h2> 
			<%}else{ %>
			<h2>
				@<%=my_support.getUser_nick()%>님의 후원이벤트가 진행중이지 않습니다!
			</h2> <%} %>
		</header>
		<div class="container container1" align="center">



			<div class="support_div_sub support_img" style="width: 500px">
				<div class="support_div support_post">
					<div class="support_div support_btn">
					<br><br><br><br>

						<!-- 본인의 갤러리 이니까 후원물품을 추가하는 버튼이 필요
							누르게 된다면 후원물품 추가 페이지로 이동(gallery_user_support.jsp에서는 필요없는 버튼)-->
						
							
							<%if(support == null){ %>
						<button data-remote="support_write.jsp" style="border: none; background-color: white; padding: 0 200px 0 0;" type="button" data-bs-toggle="modal" data-bs-target="#supportWrite"
						onclick="popSupport()">
							<i class="fa-regular fa-square-plus fa-2x post_append"></i>
						</button>		
							
							<% }else if (support != null){ %>
						
							
							
					</div>
					<div class="support_div">
						<h5>
						
							<%=support.getGift_title()%>
							
							
						</h5>
					</div>
					
					<!-- 이미지 넣어주긔@@@ -->
					
					<img src="gift_imges/<%= support.getGift_pic() %>"
						alt="">
						
				</div>

				<div class="support_div_sub support_contents">
					<p>
						
							<%=support.getGift_content()%>
							
							
					</p>
				</div>
			
				<a href="SupportDeleteService?user_email=<%= user_email%>"><i class="fa-regular fa-square-minus fa-2x" style="color: black"></i></a>
				<%} %>
			</div>
		</div>
	</div>
			
							
						
							 
<script>
function popSupport() {
   
   var popWriteX = (window.screen.width / 2) - (1000 / 2);
   window.open('support_write.jsp', 'popWrite', 'top=10, left='+ popWriteX +', width=1000, height=800, status=no, menubar=no, toolbar=no, resizable=no');

}
</script>
	

	<!--부트스트랩 js-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>
	<script src="./assets/css_gallery/gallery_underbar.js"></script>
</body>
</html>