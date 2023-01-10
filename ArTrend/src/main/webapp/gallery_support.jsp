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
	
	
	<div class="wrapper">

		<!--후원품-->
		<header class="container support_div support_ment" align="center">
			<h2>@dooboo님의 후원이벤트가 진행중입니다!</h2>
		</header>
		<div class="container container1" align="center">


				<div class="support_div_sub support_title">

					<h5>할로우 나이트 엽서 세트</h5>
				</div>

				<div class="support_div_sub support_img" style="width:40%">
			<div class="support_div support_post">
				<div class="support_div support_btn">
				
						<!-- 등록된 글이 없을 경우 출력(?) -->
				<button style="border: none; background-color: white;" type="button" data-bs-toggle="modal" data-bs-target="#supportWrite">
                    <i class="fa-regular fa-square-plus fa-2x" style="color: rgb(132, 132, 132)"></i>
                </button>
                    	<%@include file="support_write.jsp" %>
						
						
				<!-- 등록된 글이 있을 경우 -->
					<a href="#"><i
						class="fa-regular fa-square-minus fa-2x"
						style="color: rgb(132, 132, 132)"></i></a>
						
						
				</div>
					<img src="./assets/img_gallery/KakaoTalk_20221201_141427224_12.jpg"
						alt="">
				</div>

				<div class="support_div_sub support_contents">
					<p>작가가 등록한 상품에 대한 설명!! 그들은 커다란 이상 곧 만천하의 대중을 품에 안고 그들에게 밝은 길을
						찾아 주며 그들을 행복스럽고 그렇다고합니다 예예예예예예ㅖ예!!!!~!~!~!</p>
				</div>

				<!--본인의 후원글일 경우에 출력 -->
				<!-- <div class="support_div_sub edit_btn">
                    <a href="#" ><i class="fa-regular fa-pen-to-square fa-2x" style="color:rgb(132, 132, 132)"></i></a>
                </div> -->

				<button type="button" class="btn_sub" data-bs-toggle="modal"
					data-bs-target="#support_real">후원하기</button>



				<!-- Modal -->
				<div class="modal fade" id="support_real" tabindex="-1"
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
								<!--구독자가 들어가야할 모달의 body-->
								<!--후원하기 -->
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