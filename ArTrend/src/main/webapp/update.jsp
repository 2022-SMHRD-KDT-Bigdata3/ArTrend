<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

    <link href="./assetes/css/main.css" rel="stylesheet">
    <link href="./assetes/css/header.css" rel="stylesheet">
    
    <!-- 애리 css -->
    <link rel ="stylesheet" href="./assets/css/update.css">
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
    
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
  
  
  
  
  
  
  </head>
<body>
<%@include file="header.jsp"%>  

<div class="wrapper2">
     <div class="head">
        <br>
        <div class="profile">
            <div class="pic">
                <img class="profile_pic" id="profile_pic_preview" src="./assets/img_gallery/KakaoTalk_20221201_141427224_01.jpg" alt="">
            </div>
            <div class="info">
                <div class="username">


                    <h2 class="name">@<%=info.getUser_nick() %></h2>

                    <div class="dropdown">
                        <button class="dropbtn" >프로필 사진변경</button>
                            <div class="dropdown-content">
                              <a  href="photoupload.html" onclick="window.open(this.href, '_blank', 'width=800, height=600'); return false;">사진 업로드</a>
                              <a href="#">기본이미지 변경</a>
                            </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div> 
        <br><br>
    <div class = "info_modify">
        <form action="UpdateService" method="post" style="display:inline-block;">
            <div class="row ">
                <label for="colFormLabel" class="col-sm-5 col-form-label">변경할 닉네임 입력 </label>
                <div class="col-sm-7">
                <input type="text" class="form-control" id="colFormLabelSm" name="user_nick" placeholder="변경할 닉네임 ">
                <br>
                <input class="nickChe-btn" type="submit" value="중복확인">
                </div>
            </div>
            <br>
        
            <div class="row ">
                <label for="colFormLabel" class="col-sm-5 col-form-label">현재 비밀번호 </label>
                <div class="col-sm-7">
                <input type="password" class="form-control" id="colFormLabelSm" name="user_pw" placeholder="현재 비밀번호">
                </div>
            </div>
            <br>
            <div class="row ">
                <label for="colFormLabel" class="col-sm-5 col-form-label"> 새 비밀번호 </label>
                <div class="col-sm-7">
                <input type="password" class="form-control" id="colFormLabel" name="user_new_pw" placeholder="변경할 비밀번호">
                </div>
            </div>
            <br>
            <div class="row">
                <label for="colFormLabel" class="col-sm-5 col-form-label">새 비밀번호 확인</label>
                <div class="col-sm-7">
                <input type="password" class="form-control" id="colFormLabelLg" placeholder="변경할 비밀번호 확인">
                </div>
            </div>
        <br>
        <br>
         <div class="input-t">
            <!-- 등록하기 버튼 클릭시 바뀐 정보 db저장 -> 바뀐 정보가 유저 갤러리 화면에 출력(닉네임의 경우) -->
            <input class="input-btn" type="submit" value="등록하기" > 
            <!-- 취소하기 버튼 클릭시 유저 갤러리 화면으로 이동 -> 경로 넣기 -->
            <button class="close-btn" onclick="location.href='galley_my.jsp'">취소하기</button>
         </div>
        </form>
        
        <!-- 비밀번호 일치 확인 -->
  
   <script type="text/javascript">
   function test() {
     var p1 = document.getElementById('password1').value;
     var p2 = document.getElementById('password2').value;
     if( p1 != p2 ) {
       alert("비밀번호가 일치 하지 않습니다");
       return false;
     } else{
       alert("비밀번호가 일치합니다");
       return true;
     }

   }

</script>
    </div>
</div>
   
</body>
</html>