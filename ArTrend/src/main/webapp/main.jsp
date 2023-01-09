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
			
			<!-- card 시작 -->
			<%@include file="post_view.jsp"%>
			<!-- card 끝 -->
			
			<!-- card 시작 -->
			<%@include file="post_view.jsp"%>
			<!-- card 끝 -->
			
			<!-- card 시작 -->
			<%@include file="post_view.jsp"%>
			<!-- card 끝 -->
			
			<!-- card 시작 -->
			<%@include file="post_view.jsp"%>
			<!-- card 끝 -->
			
			<!-- card 시작 -->
			<%@include file="post_view.jsp"%>
			<!-- card 끝 -->
			
			<!-- card 시작 -->
			<%@include file="post_view.jsp"%>
			<!-- card 끝 -->
			
			<!-- card 시작 -->
			<%@include file="post_view.jsp"%>
			<!-- card 끝 -->



			<!-- card시작 -->
			<div class="col-lg-4 col-md-6">
				<div class="card text-bg-light">
				
					<a href="#;" class="banner_img" data-bs-toggle="modal" data-bs-target="#postModal1">
					<img class="img_post"
						src="./assets/kjh/img/scream.jpg"
						alt="땡땡땡 배경">
						<p class="hover_text"> dsfasdfadfagsfdgf5d6gfgsdgsdfdsfg4f5gh4654gfdh</p>
					</a>

					<div class="modal fade" id="postModal1" data-bs-backdrop="static"
						data-bs-keyboard="false" tabindex="-1" aria-labelledby="postModal"
						aria-hidden="true">
						<button class="modal-close-btn" data-bs-dismiss="modal">
							<img src="./assets/kjh/icon/x.svg" alt="">
						</button>
						<button class="modal-next-btn" data-bs-dismiss="modal">
							<img src="./assets/kjh/icon/arrow-right-circle.svg" alt="">
						</button>
						<button class="modal-prev-btn" data-bs-dismiss="modal">
							<img src="./assets/kjh/icon/arrow-left-circle.svg" alt="">
						</button>
						<div class="modal-dialog modal-xl">
							<div class="modal-content" style="overflow:auto;">
								<div class="modal-body">
									<div class="post-container">
										<div class="post-img-container">
											<img class="img_post" src="./assets/kjh/img/scream.jpg" alt="">
											<p class="hover_text"> 몽크 - 절규 </p>
										</div>
										<div class="post-rest-container">
											<div class="post-rest-header">
												<div class="post-user-container">
													<img class="user-card-img"
														src="./assets/kjh/img/scream.jpg" alt=""> <span
														class="card-user-name">monk</span>
												</div>
												<div class="post-header-btn">
													<button class="normal-btn">
														<img src="./assets/kjh/icon/three-dots.svg" alt="">
													</button>
												</div>
											</div>
											<div class="post-info-padding">
												<div class="post-info">
													<p class="post-title">절규</p>
													<p class="post-des">새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고.</p>
												</div>
											</div>
											<div class="comment-container-padding">
												<div class="post-comment-container">
													<div class="post-comment-card">
														<span class="card-user-name">초코파이</span> <span
															class="comment-body">몽쉘.</span>
													</div>
													<div class="post-comment-card">
														<span class="card-user-name">새벽</span> <span
															class="comment-body">새벽빛 와 닿으면 스러지는 이슬 더불어 손에
															손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬
															더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면
															스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와
															닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고.
															새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에
															손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬
															더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면
															스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와
															닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고.
															새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에
															손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬
															더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면
															스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와
															닿으면 스러지는 이슬 더불어 손에 손을잡고.</span>
													</div>
												</div>
											</div>
											<div class="post-btn-padding">
												<div class="post-list-btn">
													<div class="post-left-btn">
														<button class="normal-btn">
															<img src="./assets/kjh/icon/heart-nofill.svg" alt="">
														</button>
														<button class="normal-btn">
															<img src="./assets/kjh/icon/journal.svg" alt="">
														</button>
													</div>
													<div class="post-right-btn">
														<button class="normal-btn">
															<img src="./assets/kjh/icon/coin.svg" alt="">
														</button>
													</div>
												</div>
											</div>
											<div class="post-view-padding">
												<div class="post-view-info">
													<span class="likes">3.2k likes</span><span class="views">10k
														views</span>
												</div>
											</div>
											<div class="comment-box-padding">
												<div class="comment-box">
													<input type="text" class="comment-input"
														placeholder="소중한 댓글을 남겨주세요">
													<button class="add-comment-btn">
														<img class="add-comment-icon"
															src="./assets/kjh/icon/envelope.svg" alt="">
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- card 끝 -->

			<!-- card시작 -->
			<div class="col-lg-4 col-md-6">
				<div class="card text-bg-light">
				
					<a href="#;" class="banner_img" data-bs-toggle="modal" data-bs-target="#postModal2">
					<img class="img_post"
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7mYgCZED4xyAEB6QfIf1CIZH7n1v7rwUVeA&usqp=CAU"
						alt="땡땡땡 배경">
						<p class="hover_text"> 두 번째 게시글이다 훙ㅎ우하아앙하ㅏ </p>
					</a>

					<div class="modal fade" id="postModal2" data-bs-backdrop="static"
						data-bs-keyboard="false" tabindex="-1" aria-labelledby="postModal"
						aria-hidden="true">
						<button class="modal-close-btn" data-bs-dismiss="modal">
							<img src="./assets/kjh/icon/x.svg" alt="">
						</button>
						<button class="modal-next-btn" data-bs-dismiss="modal">
							<img src="./assets/kjh/icon/arrow-right-circle.svg" alt="">
						</button>
						<button class="modal-prev-btn" data-bs-dismiss="modal">
							<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7mYgCZED4xyAEB6QfIf1CIZH7n1v7rwUVeA&usqp=CAU" alt="">
						</button>
						<div class="modal-dialog modal-xl">
							<div class="modal-content" style="overflow:auto;">
								<div class="modal-body">
									<div class="post-container">
										<div class="post-img-container">
											<img class="img_post" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7mYgCZED4xyAEB6QfIf1CIZH7n1v7rwUVeA&usqp=CAU" alt="">
											<p class="hover_text"> 몽크 - 절규 </p>
										</div>
										<div class="post-rest-container">
											<div class="post-rest-header">
												<div class="post-user-container">
													<img class="user-card-img"
														src="./assets/kjh/img/scream.jpg" alt=""> <span
														class="card-user-name">monk</span>
												</div>
												<div class="post-header-btn">
													<button class="normal-btn">
														<img src="./assets/kjh/icon/three-dots.svg" alt="">
													</button>
												</div>
											</div>
											<div class="post-info-padding">
												<div class="post-info">
													<p class="post-title">절규</p>
													<p class="post-des">새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고.</p>
												</div>
											</div>
											<div class="comment-container-padding">
												<div class="post-comment-container">
													<div class="post-comment-card">
														<span class="card-user-name">초코파이</span> <span
															class="comment-body">몽쉘.</span>
													</div>
													<div class="post-comment-card">
														<span class="card-user-name">새벽</span> <span
															class="comment-body">새벽빛 와 닿으면 스러지는 이슬 더불어 손에
															손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬
															더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면
															스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와
															닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고.
															새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에
															손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬
															더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면
															스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와
															닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고.
															새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에
															손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬
															더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면
															스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와
															닿으면 스러지는 이슬 더불어 손에 손을잡고.</span>
													</div>
												</div>
											</div>
											<div class="post-btn-padding">
												<div class="post-list-btn">
													<div class="post-left-btn">
														<button class="normal-btn">
															<img src="./assets/kjh/icon/heart-nofill.svg" alt="">
														</button>
														<button class="normal-btn">
															<img src="./assets/kjh/icon/journal.svg" alt="">
														</button>
													</div>
													<div class="post-right-btn">
														<button class="normal-btn">
															<img src="./assets/kjh/icon/coin.svg" alt="">
														</button>
													</div>
												</div>
											</div>
											<div class="post-view-padding">
												<div class="post-view-info">
													<span class="likes">3.2k likes</span><span class="views">10k
														views</span>
												</div>
											</div>
											<div class="comment-box-padding">
												<div class="comment-box">
													<input type="text" class="comment-input"
														placeholder="소중한 댓글을 남겨주세요">
													<button class="add-comment-btn">
														<img class="add-comment-icon"
															src="./assets/kjh/icon/envelope.svg" alt="">
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- card 끝 -->


			<!-- card시작 -->
			<div class="col-lg-4 col-md-6">
				<div class="card text-bg-light">
					<a href="#;" class="banner_img"> <img class="img_post"
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7mYgCZED4xyAEB6QfIf1CIZH7n1v7rwUVeA&usqp=CAU"
						alt="땡땡땡 배경">
						<p class="hover_text">dsfasdffdh</p>
					</a>
				</div>
			</div>
			<!-- card 끝 -->

			<!-- card시작 -->
			<div class="col-lg-4 col-md-6">
				<div class="card text-bg-light">
					<a href="#;" class="banner_img"> <img class="img_post"
						src="https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/1bfce1bf-9536-4c65-8e8a-46cf9983b3c3.jpeg"
						alt="땡땡땡 배경">
						<p class="hover_text">가나다라마바사아자차카타파하123456789132456789</p>
					</a>
				</div>
			</div>
			<!-- card 끝 -->

			<!-- card시작 -->
			<div class="col-lg-4 col-md-6">
				<div class="card text-bg-light">
					<a href="#;" class="banner_img"> <img class="img_post"
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRHsaWUj7tF_lIBGNEm24fbvLTcN93HbW4Ew&usqp=CAU"
						alt="땡땡땡 배경">
						<p class="hover_text">dsfasdfadfagsdsfg4f5gh4654gfdh</p>
					</a>
				</div>
			</div>
			<!-- card 끝 -->

			<!-- card시작 -->
			<div class="col-lg-4 col-md-6">
				<div class="card text-bg-light">
					<a href="#;" class="banner_img"> <img class="img_post"
						src="https://post-phinf.pstatic.net/MjAxODA4MjBfMTA0/MDAxNTM0NzQ3MDgwNDcz.UTS4-4Q8mBJ7nWhjVYv_NBB8bSFozQ6Yiyq9AAxN2J8g.B9xbLShFIDKIyjuTpiO9_INLtCkhHsvPhnF6YDnsXb8g.JPEG/%EC%88%98%ED%8F%89.jpg?type=w1200"
						alt="땡땡땡 배경">
						<p class="hover_text">dsfasdfadfagsdsfg4f5gh4654gfdh</p>
					</a>
				</div>
			</div>
			<!-- card 끝 -->

			<!-- card시작 -->
			<div class="col-lg-4 col-md-6">
				<div class="card text-bg-light">
					<a href="#;" class="banner_img"> <img class="img_post"
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCu-71I1fmVGJQDYJ2lkj6iE0Zb19MsiApmg&usqp=CAU"
						alt="땡땡땡 배경">
						<p class="hover_text">dsfasdfadfag sdsfg4f5gh4654gfdh</p>
					</a>
				</div>
			</div>
			<!-- card 끝 -->

		</div>
		<!-- row 끝 -->

	</div>

</body>
</html>
