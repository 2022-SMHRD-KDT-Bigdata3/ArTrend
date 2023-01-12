<%@page import="com.smhrd.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>intro_modify</title>
    
    <link rel="stylesheet" href="./assets/kjh/css/introModify.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<%UserVO my_info1 = (UserVO) session.getAttribute("info");%>   

 <form action="InfoUpdateService" method="post"> 
  <!--  소개글 수정 Modal -->
  <div class="modal fade" id="introModify" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="introModifyLabel" aria-hidden="true">
    <div class="modal-dialog">
    
		<!-- 게시글 수정 mapper에서 where 매칭 시켜줄 값 - hidden으로 해서 출력은 X  -->
		<input name="board_num" type="hidden">
		<%= my_info1.getUser_email() %>
		
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="introModifyLabel"> 내 소개 수정하기 </h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <div class="intro-container">
                <div class="intro-input" placeholder="내용을 입력하세요" contenteditable="true">
                	<input type="text" name="info_update_content" class="write-title-input" required>
                </div>
            </div>
        </div>
        <div class="modal-footer">
          <button type="submit" class="intro_modify_btn" data-bs-dismiss="modal"> 저장 </button>
        </div>
      </div>
    </div>
  </div>
</form>    
  

<form action="InfoUpdateService" method="post">   
  <!-- 새로운 소개글 작성 Modal -->
  <div class="modal fade" id="newintro" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="newintroLabel" aria-hidden="true">
    <div class="modal-dialog">
    
    	<!-- 게시글 수정 mapper에서 where 매칭 시켜줄 값 - hidden으로 해서 출력은 X  -->
		<input name="board_num" type="hidden">
		<%= my_info1.getUser_email() %>
		
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="newintroLabel"> 내 소개 등록하기 </h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <div class="intro-container">
                <div class="intro-input" placeholder="내용을 입력하세요" contenteditable="true">
                	<input type="text" name="info_insert_content" class="write-title-input" required>
                </div>
            </div>
        </div>
        <div class="modal-footer">
          <button type="submit" class="intro_modify_btn" data-bs-dismiss="modal"> 저장 </button>
        </div>
      </div>
    </div>
  </div>
</form>  
  
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>