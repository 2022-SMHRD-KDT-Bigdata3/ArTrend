<%@page import="com.smhrd.model.UserVO"%>
<%@page import="com.smhrd.model.UserDAO"%>
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
<%
System.out.println("소개글 가져오기 실행(user_info)");

String user_email_info = request.getParameter("getUser_email"); //글쓴사람의 이메일

UserDAO user_info_dao = new UserDAO();
UserVO user_info_vo = user_info_dao.getinfo(user_email_info);

response.setCharacterEncoding("UTF-8"); // 한글이 들어가기때문에 인코딩

if (user_info_vo != null) {
	System.out.println("info3 정보 받아오기 성공");
	System.out.println(user_info_vo.toString());//확인용출력
	//세션에저장
	session.setAttribute("info3", user_info_vo);
} else {
	System.out.println("정보 받아오기 실패");
}


%>
   
        <br>
        <!--소개글이 나올 디브-->
        <div class="gallery_info_div">
            <div class="gallery_info_title">
                <h3>@<%=user_info_vo.getUser_nick() %> 님의 소개글입니다!</h3>
            </div><br><br>
            <div class="gallery_info_post">
                <span>
                   <%=user_info_vo.getUserInfo() %>
                </span>
            </div>
        </div><br><br>

        <!-- 소개글 수정하기(소개글이 있을 경우) or 소개글 추가하기(소개글이 없을 경우) 버튼-->
        <!--  <div>
            <div class="gallery_info_btn">
                 <div class=" gallery_info_pen">-->
                    <!-- 소개글 수정하기(소개글이 있을 경우)
                    <button style="border: none; background-color: white;" type="button" data-bs-toggle="modal" data-bs-target="#introModify">
                    <i class="gallery_info_btn1 fa-regular fa-pen-to-square"></i>
                    </button>
                    	include file="intro_modify.jsp" %>-->
                    	
                    <!-- 소개글 추가하기(소개글이 없을 경우) 버튼
                    <button style="border: none; background-color: white;" type="button" data-bs-toggle="modal" data-bs-target="#newintro">
                    <i class="gallery_info_btn1 fa-regular fa-square-plus"></i>
                    </button>
                    	include file="intro_modify.jsp" %>
                 </div>
            </div>
         </div> 
        <br><br>-->

</body>
</html>