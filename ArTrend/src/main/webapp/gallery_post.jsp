<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>gallery_post</title>

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
<link rel="stylesheet" href="./assets/css_gallery/gallery_info.css">
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

<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

</head>
<body>
	<!-- header include -->
	<%@include file="gallery_header.jsp"%> 
	<div class="class_name3">
 
    <!-- <a href="" class="image image1"><img class="image image1" src="/img_gallery/KakaoTalk_20221201_141427224.jpg" alt="" ></a> -->
    <div class="image_decorate image image2"><a href="" class="image image2"><img class="image image2" src="./assets/img_gallery/KakaoTalk_20221201_141427224_01.jpg" alt="" ></a></div>
    <div class="image_decorate image image5"><a href="" class="image image5"><img class="image image5" src="./assets/img_gallery/KakaoTalk_20221201_141427224_07.jpg" alt=""></a></div>
    <div class="image_decorate image image6"><a href="" class="image image6"><img class="image image6" src="./assets/img_gallery/KakaoTalk_20221201_141427224_08.jpg" alt=""></a></div>
    <div class="image_decorate image image7"><a href="" class="image image7"><img class="image image7" src="./assets/img_gallery/KakaoTalk_20221201_141427224_09.jpg" alt=""></a></div>
    <div class="image_decorate image image8"><a href="" class="image image8"><img class="image image8" src="./assets/img_gallery/KakaoTalk_20221201_141427224_11.jpg" alt="" ></a></div>


  </div>
  <br><br>
  <footer id="footer"></footer>

  <div class="class_name4">
     <div class="image_decorate sub_img sub_img1"><a href="#" class="sub_img sub_img1"> <img src="./assets/img_gallery/KakaoTalk_20221201_141427224_10.jpg" alt="" class="sub_img sub_img1"></a></div>
      <div class="image_decorate sub_img sub_img2"><a href="#" class="sub_img sub_img2"><img src="./assets/img_gallery/KakaoTalk_20221201_141427224_17.jpg" alt="" class="sub_img sub_img2"> </a></div>
      <div class="image_decorate sub_img sub_img3"><a href="#"  class="sub_img sub_img3"> <img src="./assets/img_gallery/KakaoTalk_20221201_141427224_22.jpg" alt="" class="sub_img sub_img3"></a></div>
      <div class="image_decorate sub_img sub_img4"><a href="#" class="sub_img sub_img4"> <img src="./assets/img_gallery/KakaoTalk_20221201_141427224_08.jpg" alt="" class="sub_img sub_img4"></a></div>
  </div>
  
<!--부트스트랩 js 경원-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<!--부트스트랩 js 현아-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<!--자바스크립트-->
<script src="./assets/js_gallery/post.js"></script>

</body>
</html>