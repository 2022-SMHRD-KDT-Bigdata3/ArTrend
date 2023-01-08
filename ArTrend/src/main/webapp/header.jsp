<%@page import="com.smhrd.model.LikesVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.LikesDAO"%>
<%@page import="com.smhrd.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ArTrend header</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<link href="./assetes/css/main.css" rel="stylesheet">
<link href="./assetes/css/header.css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<body>

	<!-- 로그인 후 info에 담긴 것 사용하기 -->
	<%
	UserVO info = (UserVO) session.getAttribute("info");
	%>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="main.jsp"> <img
				src="./assets/images/img_logo.png" alt="ArTrend" width="200px"
				height="80px">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<%
					if (info == null) {
					%>
					<li class="nav-item">
						<!-- 회원가입(sign-up) 모달--> <!-- Button trigger modal -->
						<button type="button" class="btn btn_signup"
							data-bs-toggle="modal" data-bs-target="#staticBackdrop">
							JOIN</button> <!-- Modal -->
						<div class="modal fade" id="staticBackdrop"
							data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
							aria-labelledby="staticBackdropLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">

									<div class="modal-header">
										<h3 class="modal-title fs-5" id="staticBackdropLabel1">
											회원가입</h3>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<form action="JoinService" method="post">
										<div class="modal-body">

											<div class="input_text">
												<div class="form-floating mb-3">
													<input type="email" class="form-control" id="floatingInput"
														name="user_email" placeholder="name@example.com">
													<label for="floatingInput"> name@example.com </label>
												</div>

												<div class="form-floating mb-3">
													<input type="password" class="form-control" name="user_pw"
														id="floatingPassword" placeholder="Password"> <label
														for="floatingPassword"> password </label>
												</div>

												<div class="form-floating mb-3">
													<input type="text" class="form-control" name="user_nick"
														id="floatingNickname" placeholder="Nickname"> <label
														for="floatingNickname"> nickname </label>
												</div>



												<!-- 저작권, 개인 정보 수집 동의 체크박스-->
												<div>
													<h5 class="agree_div"> 저작권 활용 동의에 대한 안내  </h5>
												
													<a> 게시 작품의 소유권, 저작권, 디자인권 및 기타 지식재산권은 당사에 귀속되며,
													작품의 저작권 분쟁에 따른 모든 법적 책임은 사용자에게 있습니다.
													저작권 관련 분쟁이 발생하는 경우, 한국저작권위원회에 조정을 신청하여 해결할 수 있습니다. </a>
													
												</div>
												<div class="form-check form-switch">
													<input class="form-check-input" type="checkbox"
														id="flexSwitchCheckDefault" required
														oninvalid="this.setCustomValidity('필수 항목 입니다.')"
														oninput="this.setCustomValidity('')"> <label
														class="form-check-label" for="flexSwitchCheckDefault">
														동의 </label>
												</div>
												<br>

												<div class="agree_div">
													<h5> 개인정보 수집 및 이용에 대한 안내  </h5>
													
													<span> 1. 목적 : 홈페이지 회원가입 및 관리   </span>
													<br>
													<span> 2. 항목 : 아이디(이메일 주소), 비밀번호  </span>
													<br>
													<span> 3. 보유기간 : 회원 탈퇴 시까지 보유 </span>
												</div>
												<div class="form-check form-switch">
													<input class="form-check-input" type="checkbox"
														id="flexSwitchCheckDefault" required
														oninvalid="this.setCustomValidity('필수 항목 입니다.')"
														oninput="this.setCustomValidity('')"> <label
														class="form-check-label" for="flexSwitchCheckDefault">
														동의 </label>
												</div>
											</div>
										</div>

										<div class="modal-footer">
											<button type="button" class="btn btn_signup"
												data-bs-dismiss="modal">CANCEL</button>
											<button type="submit" class="btn btn_signup">JOIN</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</li>
						 <!-- 회원 가입 끝-->

					<li class="nav-item">
						<!-- 로그인(login) 모달--> <!-- Button trigger modal -->
						<button type="button" class="btn btn_login" data-bs-toggle="modal"
							data-bs-target="#exampleModal">LOGIN</button> <!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h3 class="modal-title fs-5" id="exampleModalLabel">로그인</h3>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<form action="LoginService" method="post">
										<div class="modal-body">
										
										<div class="form-floating mb-3">
													<input type="email" class="form-control" id="floatingInput"
														name="user_email" placeholder="name@example.com" required>
													<label for="floatingInput"> name@example.com </label>
												</div>

												<div class="form-floating mb-3">
													<input type="password" class="form-control" name="user_pw"
														id="floatingPassword" placeholder="Password" required> <label
														for="floatingPassword"> password </label>
												</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn_login"
												data-bs-dismiss="modal">CANCEL</button>
											<button type="submit" class="btn btn_login">LOGIN</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</li>
					<!-- 로그인 끝-->
					</li>
					<%
					} else {
					%>
					<!-- 로그인 후 화면 네비게이션 메뉴 -->
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="main.jsp"> 🏚 </a></li>

					<li class="nav-item"><a class="nav-link" href="main_sub.jsp">
							⭐️ </a></li>

					<!-- 알림 버튼 -->
					<li class="nav-item">
						<!-- Button trigger modal -->
						<button type="button" id="alarmBtn" class="btn position-relative"
							data-bs-toggle="modal" data-bs-target="#exampleModal1">
							🔔 <span
								class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
								2 <span class="visually-hidden">unread messages</span>
							</span>
						</button> <!-- Modal -->
						<div class="modal fade" id="exampleModal1" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-dialog-scrollable">

								<div class="modal-content">
									<div class="modal-header">
										<h3 class="modal-title fs-5" id="exampleModalLabel">알림 목록
										</h3>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">

										<!-- 좋아요 알람 불러오기 -->
								<!-- 
										<script type="text/javascript">
											$("#alarmBtn")
													.click(
															function() {
																var user_email = info.getUser_email;
																loadAlarm();
															});

											function loadAlarm() {
												$
														.ajax({
															url : "LikeSelectAll",
															method : "POST",
															data : {
																"user_email" : user_email
															},
															dataType : "JSON",
															success : resultJson,
															error : errFun
														});
											}

											function resultJson(data) {
												console.log(data);
												var html = "";
												for (var i = 0; i < data.length; i++) {
													html += data[i]
															.getUser_email();
													+"님이 좋아요를 눌렀습니다.";
													html += "</br>"
												}
												$(".modal-body").html(html);
											}
											function errFun(err) {
												console.log(err);
												console.log("통신 실패ㅠ ");
											}
										</script>
								 -->


										<%
										//LikesDAO dao = new LikesDAO();
									//	ArrayList<LikesVO> list = dao.like_alarm(info.getUser_email());

									//	for (int i = 0; i < list.size(); i++) {
										%>
									<!-- 	<a href="#해당 게시글"> <!-- 좋아요를 누른 사람 이름 + 님이 좋아요를 눌렀습니다. ,,, 비동기 가능? -->
											<%
										//	list.get(i).getUser_email();
											%><!-- 님이 좋아요를 눌렀습니다.
										</a> </br>-->
										<%
									//	}
										%>
										

										<p>
											<small> 현아 님이 좋 아 요 를 눌ㄹ ㅓㅅ </small>
										</p>
										<p>
											<small> 현아 님이 좋 아 요 를 눌ㄹ ㅓㅅ </small>
										</p>
										<p>
											<small> 현아 님이 좋 아 요 를 눌ㄹ ㅓㅅ </small>
										</p>
										<p>
											<small> 현아 님이 좋 아 요 를 눌ㄹ ㅓㅅ </small>
										</p>
										<p>
											<small> 현아 님이 좋 아 요 를 눌ㄹ ㅓㅅ </small>
										</p>
										<p>
											<small> 현아 님이 좋 아 요 를 눌ㄹ ㅓㅅ </small>
										</p>

									</div>
									<div class="modal-footer">
										<button type="button" class="btn" data-bs-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
					</li>
					
					<!-- 메세지 화면 이동  -->
					<li class="nav-item"><a class="nav-link" href="messagePage.jsp">
							📩️ </a></li>
							
					<!-- 마이갤러리 이동  -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> 👤 </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="gallery_post.jsp">
									내갤러리 </a></li>
							<li><a class="dropdown-item" href="InfoEdit.jsp"> 정보수정 </a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="LogOutService"> 로그아웃
							</a></li>
						</ul></li>
				</ul>

				<%
				}
				%>


			</div>
		</div>
	</nav>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>