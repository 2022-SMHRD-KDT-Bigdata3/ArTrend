
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
	SupportDAO dao = new SupportDAO();

	SupportVO support = dao.getSupport(user_email);
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


			<div class="support_div_sub support_title">

				<h5></h5>
			</div>

			<div class="support_div_sub support_img" style="width: 40%">
				<div class="support_div support_post">
					<div class="support_div support_btn">

						<!-- 본인의 갤러리 이니까 후원물품을 추가하는 버튼이 필요
							누르게 된다면 후원물품 추가 페이지로 이동(gallery_user_support.jsp에서는 필요없는 버튼)-->
						
							
							<%if(support == null){ %>
						<button style="border: none; background-color: white;" type="button" data-bs-toggle="modal" data-bs-target="#supportWrite">
							<i class="fa-regular fa-square-plus fa-2x"style="color: rgb(132, 132, 132)"></i>
						</button>		
							
							<% }else if (support != null){ %>
						<button style="border: none; background-color: white;" type="button" data-bs-toggle="modal" data-bs-target="#supportWrite">
							<i class="fa-regular fa-square-plus fa-2x"style="color: rgb(132, 132, 132)"></i>
						</button>
							
									
							
							
							
					</div>
					<div class="support_div">
						<h2>
						
							<%=support.getGift_title()%>
							
							
						</h2>
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
			
				<a href="SupportDeleteService?user_email=<%= user_email%>"><i class="fa-regular fa-square-minus fa-2x" style="color: rgb(132, 132, 132)"></i></a>
				<%} %>
			</div>
		</div>
	</div>
			
							<!-- Modal -->						  
							  <div class="modal fade" id="supportWrite" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="supportWriteLabel" aria-hidden="true">
							    <div class="modal-dialog modal-lg">
							      <div class="modal-content">
									<form action="SupportUpdateService"method="post" onsubmit="return getContent()" enctype="multipart/form-data">
							        <div class="modal-header">
							          <h1 class="modal-title fs-5" id="supportWriteLabel">후원 상품 등록하기</h1>
							          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							        </div>
							        <div class="modal-body">
							            <div class="write-container">
							                <div class="write-img-container">
							                 <img id="write-img" src="" alt="">
							                	 <label class="control-label col-sm-2" for="fileName">파일 :</label>
											    <input type="file" name="gift_pic" id="fileName">
											  <div class="write-info-container">
							                    <div class="support-info-title">상품명</div>
							                    <div class="write-title-container">
							                        <input type="text" name="gift_title" class="write-title-input" placeholder="상품명을 입력하세요">
							                    </div>
							                    <div class="support-info-title">상품 설명</div>
							                    <div class="write-desc-container">
							                        <div class="write-desc-input" placeholder="상품 설명을 입력해주세요" contenteditable="true">
							                        <textarea name="gift_content" id="contents" class="form-control" rows="10" cols=""></textarea>
							                        </div>
							                    </div>
							                    <div class="support-info-title">후원 액수</div>
							                    <div class="support-heart-container">
							                        <input class="support-heart" type="number" min="5000" value="5000">
							                    </div>
							                </div>
							            </div>
							        </div>
							        <div class="modal-footer">
							          <button type="button submit" class="btn btn-primary" data-bs-dismiss="modal">등록하기</button>
							        </div>
							      </div>
							    </div>
							  </div>
							</form>
						
							 

	<!-- 본인의 갤러리니까 후원하기 버튼은 없어도 됨! (gallery_user_support.jsp에서는 필요한 버튼) -->
	<!--본인의 후원글일 경우에 출력 
				<div class="support_div_sub edit_btn">
                    <a href="#" ><i class="fa-regular fa-pen-to-square fa-2x" style="color:rgb(132, 132, 132)"></i></a>
                </div> 

					 <button type="button" class="btn_sub" data-bs-toggle="modal"
					data-bs-target="#support_real">후원하기</button>-->



	<!-- Modal -->
	<!--  <div class="modal fade" id="support_real" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content" style="width:100%">
							<div class="modal-header">
								<h1 class="modal-title fs-6" id="exampleModalLabel">후원하기 /
									@dooboo</h1>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body"> 
							
							
								<div class=" container2 support_checkbox">
									<div class="support_checkbox support_checkbox1" align="center">
										<input class="form-check-input" type="checkbox" value=""
											id="flexCheckDefault"> <label
											class="form-check-label" for="flexCheckDefault"></label>
									</div>
									<div class="support_checkbox support_checkbox2">
										<label for="">후원금액과 후원시 받게되는 혜택에 대한 주의사항 및 안내사항이 적힌
											메세지 품으며 그들의 이상은 아름답고 소담스러운 열매를 맺어 우리 인생을 풍부하게 하는 것이다 보라 청춘을 !</label>
									</div>
								</div>
								<br> <br> <br>

								<div class="subinfo">
									<div class="con">
										<p class="a ">보유포인트</p>
										<br>
										<p>40,000</p>
									</div>
									<div class="con">
										<p class="a">사용할 포인트</p>
										<br>
										<p>
											<input type="text">
										</p>
									</div>
									<div class="con">
										<p class="a">남은 포인트</p>
										<br>
										<p>35,000</p>
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
				</div>-->

	<!--부트스트랩 js-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>
	<script src="./assets/css_gallery/gallery_underbar.js"></script>
</body>
</html>