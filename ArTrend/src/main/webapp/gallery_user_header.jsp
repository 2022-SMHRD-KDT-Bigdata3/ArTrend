<%@page import="com.smhrd.model.UserDAO"%>
<%@page import="com.smhrd.model.SubscribeVO"%>
<%@page import="com.smhrd.model.SubscribeDAO"%>
<%@page import="com.smhrd.model.JoinVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>gallery_header</title>
<!-- 현아 header css -->
<link href="./assets/css/main.css" rel="stylesheet">
<link href="./assets/css/header.css" rel="stylesheet">
<link href="./asstes/css_gallery/gallery_Subscrib.css" rel="stylesheet">

<!--부트스트랩css-->
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
   crossorigin="anonymous">


<!--다니css파일-->
<link rel="stylesheet" href="./assets/profile_css_dani/font_dani.css">
<link rel="stylesheet" href="./assets/profile_css_dani/main_dani.css">
<link rel="stylesheet" href="./assets/profile_css_dani/reset_dani.css">

<!-- 구글폰트 연결-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous">
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
   <%@include file="header.jsp"%>
   
   



<%   //post_view에서 세션에 저장한 boards를 가져온다
   ArrayList<JoinVO> boards_user_header = (ArrayList<JoinVO>) session.getAttribute("boards");
   String user_email_header = request.getParameter("getUser_email"); //글쓴사람의 이메일
   String user_nick_header = request.getParameter("getUser_nick"); //글쓴사람의 닉
   
   
   
   
   //글쓴사람 프로필사진 가져오기 
   UserDAO user_pic_dao = new UserDAO();
   UserVO user_pic_vo = user_pic_dao.userSelectOne(user_email_header);
   if(user_pic_vo !=null){
      System.out.println("글쓴사람 정보(프로필사진) 가져오기 성공");
   }else{
      System.out.println("글쓴사람 정보(프로필사진) 가져오기 실패");
   }
   
   //확인용콘솔출력
   System.out.print(user_nick_header);
   int board_user_cnt = 0;
   for(int i=0 ; i<boards_user_header.size() ; i++) { 
      if((boards_user_header.get(i).getUser_email()).equals(user_email_header)){
         board_user_cnt++; } 
            }
  
%>






   <div class="wrapper">
      <br> <br> <br>
      <!--다니가 만들어준 프로필..-->
      <div class="Wrap">
         <header id="header"></header>
         <main id="main2">
            <div class="mainVisual">
               <div class="profile">
                  <div class="pic">
                     <img class="profile_pic" src="uimges/<%= user_pic_vo.getUser_pic() %>"
                        alt="" style="width: 150px; height: 150px;">
                  </div>
                  <div class="info">
                     <div class="username">
                        <h2 class="name">@<%=user_nick_header %></h2>
                        <div class="sub_msg_btn">
                        <button id="subscrib_btn" style="border: none;"><span class="subBtn_text">구독하기</span></button>
                                    
                                    <!-- 메세지 보내기 모달창 -->
                                    <button type="button" id="message_send_btn" style="border:hidden;background: white;" data-bs-toggle="modal" data-bs-target="#exampleModal"><span>메세지</span></button>
                                      <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                         <div class="modal-dialog">
                                            <div class="modal-content">
                                               <div class="modal-header">
                                                  <h1 class="modal-title fs-5" id="exampleModalLabel">New message</h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                               </div>
                                               <div class="modal-body">
                                                   <form action="SendMessage" method="post" >
                                                  <div class="mb-3">
                                                    <label for="recipient-name" class="col-form-label">받는 사람</label>
                                                    <input type="text" class="form-control" name="receive_email" id="recipient-name" >
                                                 </div>
                                                 <div class="mb-3">
                                                    <label for="message-text" class="col-form-label">메세지</label>
                                                    <input type="text" class="form-control" id="message-text" name="contents">
                                                 </div>
                                                 <div>
                                                  <button type="submit" data-bs-dismiss="modal" id="msg_send_bt" style="border:hidden;background: white;" onclick="location.href='main.jsp'" ><span>보내기</span></button>
                                                  <button type="button" data-bs-dismiss="modal" id="msg_close_bt" style="border:hidden;background: white;" ><span>닫기</span></button>
                                                 </div>
                                                </form>
                                               </div>
                                              
                                            </div>
                                          </div>
                                       </div>
                                   </div>
                                </div>

                     <div class="subinfo">
                        <div class="con">
                           <p class="a">게시글 수</p>
                           <p>
                           <!-- 유저의 게시글수로 바꿔줘야함 -->
                           <a class="a_font" href="gallery_post.jsp"><%=board_user_cnt %></a>
                           </p>
                        </div>

                        <!-- 구독자 목록 버튼 -->
                        <div class="con">
                                    <p class="a">구독자</p>
<a class="a_font" data-bs-toggle="modal" data-bs-target="#subscribed_ja" href="#"><span class="subscriberCnt">412</span></a>
                                    
                                    <!-- Modal -->
                                    <div class="modal fade" id="subscribed_ja" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content" style="width:80%;">
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-6" id="exampleModalLabel" style="margin:0px;">@<%=user_nick_header %>< 님을 구독하고있는 유저</h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <!--구독자가 들어가야할 모달의 body-->
                                                <div class="subscrib_div wrapper">
                                                    <div class="class5 subscrib_img"><img class = "subscrib_img1"src="./assets/img_gallery/정사각형.jpg" alt=""></div>
                                                    <div class="class5 subscrib_nick"><p>@dooboo</p></div>
                                                    <div class="class5 subscrib_btn"><button>구독하기</button></div>
                                                </div><br>
                                                <div class="subscrib_div wrapper">
                                                    <div class="class5 subscrib_img"><img class = "subscrib_img1"src="./assets/img_gallery/정사각형.jpg" alt=""></div>
                                                    <div class="class5 subscrib_nick"><p>@dooboo</p></div>
                                                    <div class="class5 subscrib_btn"><button>구독하기</button></div>
                                                </div><br>
                                                <div class="subscrib_div wrapper">
                                                    <div class="class5 subscrib_img"><img class = "subscrib_img1"src="./assets/img_gallery/정사각형.jpg" alt=""></div>
                                                    <div class="class5 subscrib_nick"><p>@dooboo</p></div>
                                                    <div class="class5 subscrib_btn"><button>구독하기</button></div>
                                                </div><br>
                                                <div class="subscrib_div wrapper">
                                                    <div class="class5 subscrib_img"><img class = "subscrib_img1"src="./assets/img_gallery/정사각형.jpg" alt=""></div>
                                                    <div class="class5 subscrib_nick"><p>@dooboo</p></div>
                                                    <div class="class5 subscrib_btn"><button>구독하기</button></div>
                                                </div><br>
                                                <div class="subscrib_div wrapper">
                                                    <div class="class5 subscrib_img"><img class = "subscrib_img1"src="./assets/img_gallery/정사각형.jpg" alt=""></div>
                                                    <div class="class5 subscrib_nick"><p>@dooboo</p></div>
                                                    <div class="class5 subscrib_btn"><button>구독하기</button></div>
                                                </div><br>
                                             </div>
                                           </div>
                                        </div>
                                    </div>
                                   </div>
                        <!-- 구독자 모달 끝  -->

                        <!--  구독중 -->
                        <div class="con">
						<p class="a">구독중</p>
						<a class="a_font subscribingCnt" data-bs-toggle="modal" data-bs-target="#subscribing_ja" href="#"><span class="subscribingCnt">2</span></a>
                             
                                    
                                    <!-- Modal -->
                                    <div class="modal fade" id="subscribing_ja" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content" style="width:80%;">
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-6" id="exampleModalLabel" style="margin:0px;">@ 님이 구독하고있는 유저</h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <!--구독자가 들어가야할 모달의 body-->
                                                <div class="subscrib_div wrapper">
                                                    <div class="class5 subscrib_img"><img class = "subscrib_img1"src="./assets/img_gallery/정사각형.jpg" alt=""></div>
                                                    <div class="class5 subscrib_nick"><p>@dooboo</p></div>
                                                    <div class="class5 subscrib_btn"><button>구독중</button></div>
                                                </div><br>
                                                <div class="subscrib_div wrapper">
                                                    <div class="class5 subscrib_img"><img class = "subscrib_img1"src="./assets/img_gallery/정사각형.jpg" alt=""></div>
                                                    <div class="class5 subscrib_nick"><p>@dooboo</p></div>
                                                    <div class="class5 subscrib_btn"><button>구독중</button></div>
                                                </div><br>
       
                                             </div>
                                           </div>
                                        </div>
                                    </div>
                                   </div>
                        <!-- 구독중 모달 끝  -->

                     </div>
                  </div>
               </div>
            </div>
         </main>
      </div>
   </div>
   

 <script>
 //구독체크
 $('#subscrib_btn').click(function(){
    var my_nick = '<%= info.getUser_nick()%>';
    var my_email = '<%= info.getUser_email()%>';
    var gallery_user_email = '<%=user_email_header%>';
    
    $.ajax({
       url : "SubCheckService",
       method : "POST",
       datatype : "JSON",
       data : {"my_nick" : my_nick, "my_email" : my_email, "gallery_user_email" : gallery_user_email},
       success : function(data){
          console.log(data);
          
          var datum = JSON.parse(data);
          
          $(".subBtn_text").html(datum.btn_status);
          var beforeSubCnt = Number($('.subscriberCnt').text());
          
          if (datum.btn_crease == "PLUS") {
             $(".subscriberCnt").text(beforeSubCnt+1);
          }else {
             $(".subscriberCnt").text(beforeSubCnt-1);
          }
          
          console.log(btn_status);
          
       },
       error : function(){
          console.log("통신 실패 ");
          
       }
    });
 });
 

 
</script>  

</body>
</html>