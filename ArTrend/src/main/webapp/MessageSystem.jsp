<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<!-- 헤더 부트 스트랩  -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">


<!-- 현아 css -->
<link href="./assets/css/main.css" rel="stylesheet">
<link href="./assets/css/header.css" rel="stylesheet">
<link href="./assets/css/message.css" rel="stylesheet">



<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<body>
	<!-- 현아 헤더  -->
	<%@include file="header.jsp"%>


	<div class="container">
        <div class="chat_top"> 
            <a class="chat_my" href="#"> hy0na </a>
        </div>

        <div class="chat_header"> 
            <div> <img src="./assets/img_gallery/KakaoTalk_20221201_141427224_03.jpg" class="chat_pic"> </div>    
            <a class="chat_user" href="#"> dooboo </a>
        </div>

        <div class="chat_aside" style="height: 100%; overflow: hidden auto;">
            <div class="chat_list" style="cursor: pointer;" onclick="location.href='#';">
                
                    <img src="./assets/img_gallery/KakaoTalk_20221201_141427224_03.jpg" class="chat_pic_list">
                    <p class="chat_list_nick"> dooboo </p>
                
            </div>

        </div>

        <div class="chat_main" style="height: 100%; overflow: hidden auto;" > main </div>

        <div class="chat_bottom"> 
            <input type="text" name="message" class="chat_input" placeholder="메세지를 입력해주세요... ">    
            <input type="submit" class="chat_send" value="send">
        </div>

    </div>

</html>