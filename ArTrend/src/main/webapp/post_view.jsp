<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>post_view</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<link href="./assetes/css/main.css" rel="stylesheet">
<link href="./assetes/css/header.css" rel="stylesheet">

<!-- 장호 css view css -->
<link rel="stylesheet" href="./assets/kjh/css/postModal.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	
	<!-- 게시글 수정 css -->
<link rel="stylesheet" href="./assets/kjh/css/postModify.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>


<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<body>
	<div class="col-lg-4 col-md-6">
		<div class="card text-bg-light">

			<a href="#;" class="banner_img" data-bs-toggle="modal"
				data-bs-target="#postModal1"> <img class="img_post"
				src="./assets/kjh/img/scream.jpg" alt="땡땡땡 배경">
				<p class="hover_text">
					dsfasdfadfagsfdgf5d6gfgsdgsdfdsfg4f5gh4654gfdh</p>
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
					<div class="modal-content" style="overflow: auto;">
						<div class="modal-body">
							<div class="post-container">
								<div class="post-img-container">
									<img class="img_post" src="./assets/kjh/img/scream.jpg" alt="">
									<p class="hover_text">몽크 - 절규</p>
								</div>
								<div class="post-rest-container">
									<div class="post-rest-header">
										<div class="post-user-container">
											<img class="user-card-img" src="./assets/kjh/img/scream.jpg"
												alt=""> <span class="card-user-name">monk</span>
										</div>
										<div class="post-header-btn">
											<button class="normal-btn">

												<!-- 게시글 수정 / 삭제 드롭다운 -->
												<div>
													<img src="./assets/kjh/icon/three-dots.svg" alt="" href="#"
														class="d-block link-dark text-decoration-none dropdown-toggle"
														data-bs-toggle="dropdown" aria-expanded="false">

													<ul class="dropdown-menu text-small"
														style="position: absolute; inset: 0px 0px auto auto; margin: 0px; transform: translate(0px, 34px);"
														data-popper-placement="bottom-end">
														<li><a class="dropdown-item" href="update.jsp"> 게시글 수정 </a></li>
														
														<li><a class="dropdown-item" href="update.jsp"> 게시글 삭제 </a></li>
													</ul>
												</div>
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
													class="comment-body">새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고.
													새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에
													손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어
													손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬
													더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는
													이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면
													스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와
													닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛
													와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고.
													새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에
													손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어
													손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬
													더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는
													이슬 더불어 손에 손을잡고. 새벽빛 와 닿으면 스러지는 이슬 더불어 손에 손을잡고.</span>
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

</body>
</html>