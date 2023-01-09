<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>gallery_header</title>
<!-- 현아 header css -->
<link href="./assets/css/main.css" rel="stylesheet">
<link href="./assets/css/header.css" rel="stylesheet">

<!--부트스트랩css-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">


<!--gallery_info.css 외부연결-->
<link rel="stylesheet" href="./assets/css_gallery/gallery_Subscrib.css">
<link rel="stylesheet" href="./assets/css_gallery/gallery_info.css">


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
	
 <div class="wrapper">
        <br><br><br>
        <!--다니가 만들어준 프로필..-->
        <div class="Wrap">
            
            <main id="main">
                <div class="mainVisual">
                    <div class="profile">
                        <div class="pic">
                            <img class="profile_pic"src="./assets/img_gallery/정사각형.jpg" alt="">
                        </div>
                        <div class="info">
                            <div class="username">
                                <h2 class="name">@dooboo</h2>
                                <div>
                                    <button id="subscrib_btn"><span>구독하기</span></button>
                                    <a href="#"><span>메세지</span></a>
                                </div>
                            </div>
                            <div class="subinfo">
                                <div class="con">
                                    <p class="a ">게시글 수</p><br>
                                    <p>123</p>
                                </div>
                                <div class="con">
                                    <p class="a">구독자</p><br>
                                    <p ><a class="a_font " data-bs-toggle="modal" data-bs-target="#subscrib_ja" href="#">5</a></p>
                                    
                                    <!-- Modal -->
                                    <div class="modal fade" id="subscrib_ja" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-6" id="exampleModalLabel">@dooboo 님을 구독하고있는 유저</h1>
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
                                <div class="con">
                                    <p class="a">구독중</p><br>
                                    <p ><a class="a_font " data-bs-toggle="modal" data-bs-target="#subscrib_ing" href="#">3</a></p>



                                    <!-- Modal -->
                                    <div class="modal fade" id="subscrib_ing" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-6" id="exampleModalLabel">@dooboo 님이 구독하고있는 유저</h1>
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
                                            </div>
                                           </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            <footer id="footer"></footer>
        </div>
    
        <br><br>

	<!--이동할 탭 -->
	<div> </div>
	<div class="class_name2">
		<div class="g_column g_post">
			<a class="g_column g_post" href="gallery_post.jsp"><p>게시글</p></a>
		</div>

		<div class="g_column g_info">
			<a class="g_column g_info" href="gallery_info.jsp"><p>소개글</p></a>
		</div>


		<div class="g_column g_sp">
			<a class="g_column g_sp" href="gallery_support.jsp"><p>후원</p></a>
		</div>
	</div>

</body>
</html>