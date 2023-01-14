<%@page import="com.smhrd.model.BoardsDAO"%>
<%@page import="com.smhrd.model.JoinVO"%>
<%@page import="com.smhrd.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>gallery_my_header</title>
<!-- 현아 header css -->
<link href="./assets/css/main.css" rel="stylesheet">
<link href="./assets/css/header.css" rel="stylesheet">
<link href="./asstes/css_gallery/gallery_Subscrib.css" rel="stylesheet">

<!--부트스트랩css-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">


<!--다니css파일-->
<link rel="stylesheet" href="./assets/profile_css_dani/font_dani.css">
<link rel="stylesheet" href="./assets/profile_css_dani/main_dani.css">
<link rel="stylesheet" href="./assets/profile_css_dani/reset_dani.css">

<!-- 구글폰트 연결-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap"
	rel="stylesheet">
<!--아이콘-->
<script src="https://kit.fontawesome.com/fa92a52c34.js"
	crossorigin="anonymous"></script>

<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

</head>
<body>
	<!-- header include -->
	<%@include file="header.jsp"%>
	
<% UserDAO dao_my_header = new UserDAO();
UserVO user_status = dao_my_header.userSelectOne(info.getUser_email());%>
	
<%  
// dao에서 게시글 정보 받아오기 
BoardsDAO my_header_dao = new BoardsDAO();
ArrayList<JoinVO> my_header_vo = my_header_dao.getBoardNick();
//로그인할때 저장된 user의 info를 가져옴
UserVO info_my_header = (UserVO) session.getAttribute("info");
   
   int board_my_cnt = 0;
   for(int i=0 ; i<my_header_vo.size() ; i++) { 
      if((my_header_vo.get(i).getUser_email()).equals(info_my_header.getUser_email())){
            System.out.print("접속한 유저의 닉네임(확인용):"+info_my_header.getUser_nick());
            board_my_cnt++;
         } 
      }%>    	  

	<div class="wrapper">
		<br> <br> <br>
		<!--다니가 만들어준 프로필..-->
		<div class="Wrap">
			<header id="header"></header>
			<main id="main2">
				<div class="mainVisual">
					<div class="profile">
						<div class="pic">
							<img class="profile_pic" src="uimges/<%=user_status.getUser_pic()%>"
								alt="" style="width: 150px; height: 150px;">
						</div>
						<div class="info">
							<div class="username">
								<h2 class="name">@<%=info.getUser_nick() %></h2>
								<div class="sub_msg_btn">
								<!-- 정보수정페이지로 이동 -->
									<button id="subscrib_btn" onclick = "location.href='update.jsp'"><span>정보수정</span></button>
								</div>
							
							</div>
							<div class="subinfo">
								<div class="con">
									<p class="a">게시글 수</p>
									<p>
									<a class="a_font" href="gallery_post.jsp"><%=board_my_cnt %></a>
									</p>
								</div>

								<!-- 구독자 목록 버튼 -->
								<div class="con">
                                    <p class="a">구독자</p>
                                    <p><a class="a_font " data-bs-toggle="modal" data-bs-target="#subscribed_ja" href="#">500</a></p>
                                    
                                    <!-- Modal -->
                                    <div class="modal fade" id="subscribed_ja" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content" style="width:80%;">
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-6" id="exampleModalLabel" style="margin:0px;">@dooboo 님을 구독하고있는 유저</h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <!--구독자가 들어가야할 모달의 body-->
                                                <div class="subscrib_div wrapper">
                                                    <div class="class5 subscrib_img"><img class = "subscrib_img1"src="./assets/img_gallery/정사각형.jpg" alt=""></div>
                                                    <div class="class5 subscrib_nick"><p>@dooboo</p></div>
                                                    <div class="class5 subscrib_btn"><button>구독하기</button></div>
                                                </div><br>
                                                <div class="subscrib_div wrapper">
                                                    <div class="class5 subscrib_img"><img class = "subscrib_img1"src="./assets/img_gallery/정사각형.jpg" alt=""></div>
                                                    <div class="class5 subscrib_nick"><p>@dooboo</p></div>
                                                    <div class="class5 subscrib_btn"><button>구독하기</button></div>
                                                </div><br>
                                                <div class="subscrib_div wrapper">
                                                    <div class="class5 subscrib_img"><img class = "subscrib_img1"src="./assets/img_gallery/정사각형.jpg" alt=""></div>
                                                    <div class="class5 subscrib_nick"><p>@dooboo</p></div>
                                                    <div class="class5 subscrib_btn"><button>구독하기</button></div>
                                                </div><br>
                                                <div class="subscrib_div wrapper">
                                                    <div class="class5 subscrib_img"><img class = "subscrib_img1"src="./assets/img_gallery/정사각형.jpg" alt=""></div>
                                                    <div class="class5 subscrib_nick"><p>@dooboo</p></div>
                                                    <div class="class5 subscrib_btn"><button>구독하기</button></div>
                                                </div><br>
                                                <div class="subscrib_div wrapper">
                                                    <div class="class5 subscrib_img"><img class = "subscrib_img1"src="./assets/img_gallery/정사각형.jpg" alt=""></div>
                                                    <div class="class5 subscrib_nick"><p>@dooboo</p></div>
                                                    <div class="class5 subscrib_btn"><button>구독하기</button></div>
                                                </div><br>
                                             </div>
                                           </div>
                                        </div>
                                    </div>
                                   </div>
								<!-- 구독자 모달 끝  -->

								<!--  구독중 -->
								<div class="con">
                                    <p class="a">구독중</p>
                                    <p ><a class="a_font " data-bs-toggle="modal" data-bs-target="#subscribing_ja" href="#">400</a></p>
                                    
                                    <!-- Modal -->
                                    <div class="modal fade" id="subscribing_ja" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content" style="width:80%;">
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-6" id="exampleModalLabel" style="margin:0px;">@dooboo 님이 구독하고있는 유저</h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <!--구독자가 들어가야할 모달의 body-->
                                                <div class="subscrib_div wrapper">
                                                    <div class="class5 subscrib_img"><img class = "subscrib_img1"src="./assets/img_gallery/정사각형.jpg" alt=""></div>
                                                    <div class="class5 subscrib_nick"><p>@dooboo</p></div>
                                                    <div class="class5 subscrib_btn"><button>구독중</button></div>
                                                </div><br>
                                                <div class="subscrib_div wrapper">
                                                    <div class="class5 subscrib_img"><img class = "subscrib_img1"src="./assets/img_gallery/정사각형.jpg" alt=""></div>
                                                    <div class="class5 subscrib_nick"><p>@dooboo</p></div>
                                                    <div class="class5 subscrib_btn"><button>구독중</button></div>
                                                </div><br>
                                                <div class="subscrib_div wrapper">
                                                    <div class="class5 subscrib_img"><img class = "subscrib_img1"src="./assets/img_gallery/정사각형.jpg" alt=""></div>
                                                    <div class="class5 subscrib_nick"><p>@dooboo</p></div>
                                                    <div class="class5 subscrib_btn"><button>구독중</button></div>
                                                </div><br>
                                                <div class="subscrib_div wrapper">
                                                    <div class="class5 subscrib_img"><img class = "subscrib_img1"src="./assets/img_gallery/정사각형.jpg" alt=""></div>
                                                    <div class="class5 subscrib_nick"><p>@dooboo</p></div>
                                                    <div class="class5 subscrib_btn"><button>구독중</button></div>
                                                </div><br>
                                                <div class="subscrib_div wrapper">
                                                    <div class="class5 subscrib_img"><img class = "subscrib_img1"src="./assets/img_gallery/정사각형.jpg" alt=""></div>
                                                    <div class="class5 subscrib_nick"><p>@dooboo</p></div>
                                                    <div class="class5 subscrib_btn"><button>구독중</button></div>
                                                </div><br>
                                             </div>
                                           </div>
                                        </div>
                                    </div>
                                   </div>
								<!-- 구독중 모달 끝  -->

							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>
</body>
</html>