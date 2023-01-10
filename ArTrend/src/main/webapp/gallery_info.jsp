<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>gallery_info</title>
    
<!-- 현아 header css -->
    <link href="./assets/css/main.css" rel="stylesheet">
    <link href="./assets/css/header.css" rel="stylesheet">

<!--부트스트랩css-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">


<!--gallery css 외부연결-->
<link rel="stylesheet" href="./assets/css_gallery/gallery_info.css">
<link rel="stylesheet" href="./assets/css_gallery/gallery_Subscrib.css">


<!--다니css파일-->
<link rel="stylesheet" href="./assets/profile_css_dani/font_dani.css">
<link rel="stylesheet" href="./assets/profile_css_dani/main_dani.css">
<link rel="stylesheet" href="./assets/profile_css_dani/reset_dani.css">
<!-- 구글폰트 연결-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
<!--아이콘-->
<script src="https://kit.fontawesome.com/fa92a52c34.js" crossorigin="anonymous"></script>

<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

</head>
<body>
<!-- header include -->

   
        <br>
        <!--소개글이 나올 디브-->
        <div class="gallery_info_div">
            <div class="gallery_info_title">
                <h3>블랙 햅쌀 고봉 라떼</h3>
            </div><br><br>
            <div class="gallery_info_post">
                <span>
                    검은 토끼의 해에 새롭게 돌아온 햅쌀 라떼
                    에스프레소 샷과 어우러진 쌀, 흑임자가 더해져 더욱 고소해지고 입에서 톡톡 터지는 흑미 토핑이 소복하게 쌓여 건강하게 즐기는 라떼 음료
                </span><br><br>
                <span>
                    몸도 마음도 든든하게 채워줄 #블랙햅쌀고봉라떼 한 잔으로
                    2023년도 힘차게 출발해 보자구요. 🏃
                </span><br><br>   
                <span>
                    ✅ 에스프레소 샷과 블랙 햅쌀이 만나 더욱 고소하고,
                    흑미 토핑이 팝콘처럼 소복이 쌓인 블랙 햅쌀 고봉 라떼는 1월 1일 출시합니다.
                </span>
            </div>
        </div><br><br>

        <!-- 소개글 수정하기(소개글이 있을 경우) or 소개글 추가하기(소개글이 없을 경우) 버튼-->
        <div>
            <div class="gallery_info_btn">
                 <div class=" gallery_info_pen">
                    <!-- 소개글 수정하기(소개글이 있을 경우)-->
                    <button style="border: none; background-color: white;" type="button" data-bs-toggle="modal" data-bs-target="#introModify">
                    <i class="gallery_info_btn1 fa-regular fa-pen-to-square"></i>
                    </button>
                    	<%@include file="intro_modify.jsp" %>
                    	
                    <!-- 소개글 추가하기(소개글이 없을 경우) 버튼-->
                    <button style="border: none; background-color: white;" type="button" data-bs-toggle="modal" data-bs-target="#newintro">
                    <i class="gallery_info_btn1 fa-regular fa-square-plus"></i>
                    </button>
                    	<%@include file="intro_modify.jsp" %>
                 </div>
            </div>
         </div> 
        <br><br>

</body>
</html>