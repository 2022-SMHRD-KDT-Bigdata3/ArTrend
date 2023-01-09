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
<link rel="stylesheet" href="./assets/css_gallery/gallery_post.css">
<link rel="stylesheet" href="./assets/css_gallery/gallery_img_input.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


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
	  
	    
	     <!-- Modal -->
  <div class="modal fade" id="postWrite" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="postWriteLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="postWriteLabel">새 게시물 만들기</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <div class="write-container">
                <div class="write-img-container">
                    <img id="write-img" src="" alt="">
                    <input type="file" id="write-img-input" onchange="imgPreview(this);" style="display:none" accept=".jpg,.png">
                    <label class="write-img-btn" for="write-img-input"><img src="./assets/kjh/icon/plus.svg" alt=""></label>
                </div>
                <div class="write-info-container">
                    <div class="writer-info-padding">
                        <div class="writer-info-container">
                            <img src="" alt="">
                            <span class="writer-info-name"><%=info.getUser_nick() %></span>
                        </div>
                    </div>
                    <div class="write-title-container">
                        <input type="text" class="write-title-input" placeholder="제목을 입력하세요">
                    </div>
                    <div class="write-category-container">
                        <input list="cate-list" class="write-category-input" placeholder="카테고리를 선택하세요">
                        <datalist id="cate-list">
                            <option value="그림"></option>
                            <option value="사진"></option>
                            <option value="영상"></option>
                        </datalist>
                    </div>
                    <div class="write-desc-container">
                        <div class="write-desc-input" placeholder="내용을 입력하세요" contenteditable="true"></div>
                    </div>
                </div>
            </div>
        </div>
        <div id="append_div" class="modal-footer">
          <button id="append_div" type="button" class="btn btn-primary" data-bs-dismiss="modal">만들기</button>
        </div>
      </div>
    </div>


  </div>
  <br><br>
  <footer id="footer"></footer>

   
	<div class="class_name4" id="boxWrap">
	
	  <div class=" sub_img sub_img1"><a href="#" class="sub_img sub_img1"> <img src="./assets/img_gallery/KakaoTalk_20221201_141427224_10.jpg" alt="" class="sub_img sub_img1"></a></div>
      <div class=" sub_img sub_img2"><a href="#" class="sub_img sub_img2"> <img src="./assets/img_gallery/KakaoTalk_20221201_141427224_17.jpg" alt="" class="sub_img sub_img2"> </a></div>
      <div class=" sub_img sub_img3"><a href="#" class="sub_img sub_img3"> <img src="./assets/img_gallery/KakaoTalk_20221201_141427224_22.jpg" alt="" class="sub_img sub_img3"></a></div>
      <div class=" sub_img sub_img4"><a href="#" class="sub_img sub_img4"> <img src="./assets/img_gallery/KakaoTalk_20221201_141427224_08.jpg" alt="" class="sub_img sub_img4"></a></div>
      
  	</div>
  
	<div class="btnWrap post_append_btn" ><button style="border: none; background-color: white;" type="button" data-bs-toggle="modal" data-bs-target="#postWrite"><i class="post_append fa-regular fa-square-plus"></i></button></div>

  
  
<!--부트스트랩 js 현아-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>


<!-- 게시글 작성 js -->
 <script src="./assets/js_gallery/gallery_postWrite.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>