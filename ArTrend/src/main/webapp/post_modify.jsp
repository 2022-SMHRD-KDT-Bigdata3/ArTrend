<%@page import="com.smhrd.model.BoardsVO"%>
<%@page import="com.smhrd.model.BoardsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> post_modify </title>
    
    <!-- 현아 헤더 css -->
    <link href="./assets/css/main.css" rel="stylesheet">
	<link href="./assets/css/header.css" rel="stylesheet">
    
    <!-- 장호 css -->
    <link rel="stylesheet" href="./assets/kjh/css/postModify.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

		<!-- header include -->
	<%@include file="header.jsp"%> 
	
	<%
		 BoardsVO selectedBoard = (BoardsVO)request.getAttribute("selectedBoard");
	%>
		
		<form action="PostModifyService" method="post">
            <div class="write-container">
                <div class="write-img-container">
                
                <!-- 게시글 수정 mapper에서 where 매칭 시켜줄 값 - hidden으로 해서 출력은 X  -->
                <input name="board_num" type="hidden">
                <%= selectedBoard.getBoard_num() %>
                
                <!-- 해당 게시글의 img 가져오기 -- 이미지는 수정 불가 -->
                    <img id="write-img" src="imges/<%= selectedBoard.getBoard_pic() %>" alt="">
                    
                </div>
                <div class="write-info-container">
                    <div class="writer-info-padding">
                        <div class="writer-info-container">
                        
                        <!-- 해당 게시글 작성자의 프사, 닉네임 뿌려주기 -->
                            <img src="<%= info.getUser_pic() %>" alt="">
                            <span class="writer-info-name"> <%= selectedBoard.getUser_email() %></span>
                        </div>
                    </div>
                    <div class="write-title-container">
                    
                    <!-- 변경할 제목 -->
                        <input type="text" name="board_title" class="write-title-input" placeholder="제목을 입력하세요" required>
                        <!-- 해당 게시글 번호의 타이틀 뿌려주기 -->
                        <%= selectedBoard.getBoard_title() %>
                    </div>
                    
                    <!-- 변경할 글 타입 -->
                    <div class="write-category-container">
                        <input list="cate-list" class="write-category-input" placeholder="카테고리를 선택하세요" required>
                        <datalist id="cate-list" name="board_type">
                            <option value="그림"> 그림 </option>
                            <option value="사진"> 사진 </option>
                            <option value="기타"> 기타 </option>
                        </datalist>
                    </div>
                    
                    <!-- 변경할 글 내용 -->
                    <div class="write-desc-container">
                        <div class="write-desc-input" contenteditable="true">
                        <input type="text" name="board_content" style="border: none; background-color: #fafafa;" placeholder="내용을 입력하세요">
                        <!-- 해당 게시글 번호의 텍스트 뿌려주기 -->
                        <%= selectedBoard.getBoard_content() %>
                        </div>
                    </div>
                    <div class="post_modify_btn">
         			 <button type="submit" class="save_btn"> 저장 </button>
         			 
         			 									<!-- 클릭 시 뒤로가기 버튼 구현  -->
         			 <button type="button" class="save_btn" onclick="history.back()"> 취소 </button>
                    </div>
                </div>
            </div>
        </form>
    <script src="./assets/kjh/js/postModify.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>