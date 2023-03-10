<%@page import="com.smhrd.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> postWrite </title>
    <link rel="stylesheet" href="./assets/kjh/css/postWrite.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

<%
//유저의 정보 가져오기
UserVO write_post = (UserVO) session.getAttribute("info");
%>

  <!-- Modal -->
        <form action="PostWriteService" method="post" onsubmit="return getContent()" enctype="multipart/form-data">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="postWriteLabel">새 게시물 만들기</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <div class="write-container">
                <div class="write-img-container">
                    <img id="write-img" src="" alt="">
                    <input type="file" id="write-img-input" name="board_pic" onchange="imgPreview(this);" style="display:none;" accept=".jpg,.png">
                    <label class="write-img-btn" for="write-img-input"><img src="./assets/kjh/icon/plus.svg" alt=""></label>
                </div>
                <div class="write-info-container">
                    <div class="writer-info-padding">
                        <div class="writer-info-container">
                        <!-- 로그아웃했다가 다시 로그인 해야지 바뀌어있음 -->
                            <img src="uimges/<%=write_post.getUser_pic()%>" alt="">
                            <span class="writer-info-name"><%=write_post.getUser_nick() %></span>
                        </div>
                    </div>
                    <div class="write-title-container">
                        <input type="text" class="write-title-input" placeholder="제목을 입력하세요" name="board_title">
                    </div>
                    <div class="write-category-container">
                        <input list="cate-list" class="write-category-input" placeholder="카테고리를 선택하세요" name="board_type" autocomplete="off">
                        <datalist id="cate-list">
                            <option value="그림"></option>
                            <option value="사진"></option>
                            <option value="기타"></option>
                        </datalist>
                    </div>
                    <div class="write-desc-container">
                        <div class="write-desc-input" placeholder="내용을 입력하세요" contenteditable="true"></div>
                        <textarea id="real-textarea" style="display:none;" name="board_content"></textarea>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal-footer">
          <button type="submit" class="post_write_btn" data-bs-dismiss="modal">만들기</button>
        </div>
        </form>
        
    <script src="./assets/kjh/js/postWrite.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>