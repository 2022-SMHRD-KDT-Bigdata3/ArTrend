<%@page import="com.smhrd.model.SupportVO"%>
<%@page import="com.smhrd.model.SupportDAO"%>
<%@page import="com.smhrd.model.UserDAO"%>
<%@page import="com.smhrd.model.UserVO"%>
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

<%UserVO my_info = (UserVO) session.getAttribute("info");
System.out.println(my_info.getUserInfo());%>   


	<%
	//로그인된 정보 받아오기
	System.out.println("소개글 가져오기 실행(my_info)");
	UserVO my_info13 = (UserVO) session.getAttribute("info");
	String user_email1 = my_info13.getUser_email();

	//user 정보 받아오기 
	UserDAO dao_my_info1996 = new UserDAO();

	UserVO info_my1996 = dao_my_info1996.getinfo(user_email1);
	response.setCharacterEncoding("UTF-8"); // 한글이 들어가기때문에 인코딩
	
	if (info_my1996 != null) {
		System.out.println("info3 정보 받아오기 성공");
		System.out.println(info_my1996.toString());//확인용출력
		//세션에저장
		session.setAttribute("info3", info_my1996);
	} else {
		System.out.println("정보 받아오기 실패");
	}
	%>


        <br>
        <!--소개글이 나올 디브-->
        
        <div class="gallery_info_div">
            <div class="gallery_info_title">
                <h3>@<%=info_my1996.getUser_nick() %> 님의 소개글입니다!</h3>
            </div><br><br>
            <div class="gallery_info_post">
                <span> 
                	<%=info_my1996.getUserInfo() %>
                </span>
            </div>
            <br><br><br><br>
       

        <!-- 소개글 수정하기(소개글이 있을 경우) or 소개글 추가하기(소개글이 없을 경우) 버튼-->
        <div>
        
      
            <div class="gallery_info_btn">
                 <div class=" gallery_info_pen" style=" margin: 0 0 0 180px; padding: 0;">
                    <!-- 소개글 추가하기(소개글이 없을 경우) 버튼-->
                    <button style="border: none; background-color: white;" type="button" data-bs-toggle="modal" data-bs-target="#newintro">
                    <i class="gallery_info_btn1 fa-regular fa-square-plus post_append" style="font-size: 2rem; "> </i>
                    </button>
                    	<%@include file="intro_modify.jsp"%>
                  
                    
                 </div>
            </div>
         </div> 
        <br><br>
 </div><br><br>
</body>
</html>