<%@page import="com.smhrd.model.UserDAO"%>
<%@page import="com.smhrd.model.SupportDAO"%>
<%@page import="com.smhrd.model.SupportVO"%>
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

<!-- header include -->

	<%
	// 로그인한 유저의 정보 받아오기
	System.out.println("후원목록 가져오기 실행(usersupport)");
	UserVO user_support = (UserVO) session.getAttribute("info"); //로그인한사람 이메일
	String user_nick_support = request.getParameter("getUser_nick"); //글쓴사람의 닉

	
	
	
	
	//갤러리 유저의 정보 받아오기
	String user_email_support = request.getParameter("getUser_email"); //글쓴사람의 이메일
	//support 정보 받아오기 
	SupportDAO user_support_dao = new SupportDAO();
	SupportVO user_support_vo = user_support_dao.getSupport(user_email_support);
	response.setCharacterEncoding("UTF-8"); // 한글이 들어가기때문에 인코딩
	
	if (user_support_vo != null) {
		System.out.println("support 정보 받아오기 성공");
		System.out.println(user_support_vo.toString());//확인용출력
		
	} else {
		System.out.println("정보 받아오기 실패");
	}
	
	// 로그인한사람 포인트 정보 받아오기

	UserDAO user_point_dao = new UserDAO();
	UserVO user_point_vo = user_point_dao.getinfo(user_support.getUser_email());
	
	%>





	<div class="wrapper">

		<!--후원품-->
		<header class="container support_div support_ment" align="center">
			
		<%if(user_support_vo != null){ %>
			<h2>
				@<%=user_nick_support%>님의 후원이벤트가 진행중입니다!
			</h2> 
			<%}else{ %>
			<h2>
				@<%=user_nick_support%>님의 후원이벤트가 진행중이지 않습니다!
			</h2> <%} %>
		</header>
		
		<div class="container container1" align="center">



			<div class="support_div_sub support_img" style="width: 500px">
				<div class="support_div support_post">
					<div class="support_div support_btn">
					<br><br><br><br>
							
							
					</div>
					<div class="support_div">
						<h5>
						
							<%=user_support_vo.getGift_title()%>
							
							
						</h5>
					</div>
					
					<!-- 이미지 넣어주긔@@@ -->
					
					<img src="gift_imges/<%= user_support_vo.getGift_pic() %>"
						alt="">
						
				</div>

				<div class="support_div_sub support_contents">
					<p>
						
							<%=user_support_vo.getGift_content()%>
							
							
					</p>
				</div>

			<!-- 유저의 갤러리니까 후원하기 버튼 있어야함 (gallery_user_support.jsp에서는 필요한 버튼) -->

					 <button type="button" class="btn_sub" data-bs-toggle="modal"
					data-bs-target="#support_real">후원하기</button>



				<!-- Modal -->
			 <div class="modal fade" id="support_real" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content" style="width:100%">
							<div class="modal-header">
								<h1 class="modal-title fs-6" id="exampleModalLabel">후원하기 /
								
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body"> 
							
								<!--구독자가 들어가야할 모달의 body-->
								<!--후원하기 -->
								<div class=" container2 support_checkbox">
									<div class="support_checkbox support_checkbox1" align="center">
										<input class="form-check-input" type="checkbox" value=""
											id="flexCheckDefault"> <label
											class="form-check-label" for="flexCheckDefault"></label>
									</div>
									<div class="support_checkbox support_checkbox2">
										<label for="">ArTrend는 회원 상호 간 콘텐츠 거래를 위한 중개 시스템을 제공할 뿐, 회원을 대리하지 않습니다.
										환급, 취소 등 회원 간 성립된 거래에 대한 모든 책임은 회원이 직접 부담합니다.
									</label>
									</div>
								</div>
								<br> <br> <br>

								<div class="subinfo">
									<div class="con">
										<p class="a ">보유포인트</p>
										<br>
										<%=user_point_vo.getUserPoint() %>
									</div>
									<div class="con">
										<p class="a">사용할 포인트</p>
										<br>
										<p>
											<input type="text">
										</p>
									</div>

								</div>
								<span class="support_point_Charge"><a href="point.jsp"
									align="center">포인트 충전하기</a></span> <br> <br> <br>

								<div class="container support_final" align="center">
									<div>
										<button type="button" class="btn_padding1 btn_sub btn-sm">취소하기</button>
									</div>
									<div>
										<a href="#"><button type="button"
												class="btn_padding btn_sub btn-sm">후원하기</button></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> 
	<!--부트스트랩 js-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>
	<script src="./assets/css_gallery/gallery_underbar.js"></script>
</body>
</html>