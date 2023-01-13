<%@page import="com.smhrd.model.BoardsDAO"%>
<%@page import="com.smhrd.model.JoinVO"%>
<%@page import="com.smhrd.model.CmtVO"%>
<%@page import="com.smhrd.model.CmtDAO"%>
<%@page import="com.smhrd.model.UserVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>gallery_post</title>

<!--부트스트랩css-->
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
   crossorigin="anonymous">


<!-- 현아 header css -->
<link href="./assets/css/header.css" rel="stylesheet">

<!-- 장 -->
<link rel="stylesheet" href="./assets/kjh/css/postModal.css">
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
   crossorigin="anonymous">
   
   <!-- 게시글 수정 css -->
<link rel="stylesheet" href="./assets/kjh/css/postModify.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">



<!--gallery_info.css 외부연결-->
<link rel="stylesheet" href="./assets/css_gallery/gallery_info.css">
<link rel="stylesheet" href="./assets/css_gallery/gallery_post2.css">
<link rel="stylesheet" href="./assets/css_gallery/gallery_img_input.css">
<link rel="stylesheet" href="./assets/cee_gallery/gallery_Subscrib.css">
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

<!-- 게시글 모달 연결 기능 -->
<script type="text/javascript">
         // body에서 for문 i 활용 -- checkModel() 의 매개변수로
        function MyPost(i){
              $('#postModal'+i).modal("show");
           }
     
   </script>

</head>
<body>


   <!-- header include -->
     
   <div class="class_name4" id="boxWrap">
   
   
   

<%   

	//boards에서 게시물을 가져온다
	BoardsDAO dao1 = new BoardsDAO();
	ArrayList<JoinVO> boards_my_post = dao1.getBoardNick();

   //로그인할때 저장된 user의 info를 가져옴
   UserVO info_my_post = (UserVO) session.getAttribute("info");
   
   
   // 댓글
   CmtDAO cmtdao = new CmtDAO();
   ArrayList<CmtVO> cmtView = cmtdao.cmtView();
   
   
   for(int i=0 ; i<boards_my_post.size() ; i++) { 
	      if((boards_my_post.get(i).getUser_email()).equals(info_my_post.getUser_email())){%>
      
      <div class="sub_img sub_img<%=i%>">
      <a href="javascript:MyPost(<%=i%>)" class="sub_img sub_img<%=i%>">
      <img class="sub_img sub_img<%=i%>"  src="imges/<%= boards_my_post.get(i).getBoard_pic() %>" alt="" ></a>
      </div>
      
      <div class="modal fade" id="postModal<%=i%>"  data-bs-keyboard="false" tabindex="-1" aria-labelledby="postModal"
            aria-hidden="true">
            <button class="modal-close-btn" data-bs-dismiss="modal">
               <img src="./assets/kjh/icon/x.svg" alt="">
            </button>
            <button class="modal-next-btn" data-bs-dismiss="modal">
               <img src="./assets/kjh/icon/arrow-right-circle.svg" alt="">
            </button>
            <button class="modal-prev-btn" data-bs-dismiss="modal">
               <img src="./assets/kjh/icon/arrow-left-circle.svg" alt="">
            </button>
            <div class="modal-dialog modal-xl">
               <div class="modal-content" style="overflow: auto;">
                  <div class="modal-body">
                     <div class="post-container">
                        <div class="post-img-container">
                        
                        <!-- 게시판 상세 - 이미지 -->
                           <img class="img_post" src="imges/<%= boards_my_post.get(i).getBoard_pic() %>" alt="">
                           
                        </div>
                        
                        <!-- 게시글 상세보기  -->
                        <div class="post-rest-container">
                           <div class="post-rest-header">
                              <div class="post-user-container">
                              
						<!-- 게시판 상세 - 유저 -->
                           <a style="text-decoration: none; color: black;"
                           href ="gallery_user.jsp?getUser_email=<%= boards_my_post.get(i).getUser_email()%>"></a>
                                    <img class="user-card-img"    src="<%= info_my_post.getUser_pic() %>" alt="">
                                       <span class="card-user-name">
                                          <%= boards_my_post.get(i).getUser_nick() %>
                                          </span>
                              </div>
                                 

                                    <!-- 게시글 수정 / 삭제 -->
                                    <div class="postBtn_all">
                                       <button class="postBtn" onclick="location.href='BoardSelectService?getBoard_num=<%= boards_my_post.get(i).getBoard_num()%>'"> 수정 </button>
                                       <button class="postBtn" onclick="location.href='BoardSelectService?getBoard_num=<%= boards_my_post.get(i).getBoard_num()%>'"> 삭제 </button>                        
                                    </div>
                           
                           </div>
                           
                           <div class="post-info-padding">
                              <div class="post-info">
                              
                              <!-- 게시글 상세 페이지 타이틀 -->
                                 <p class="post-title">
                                 <%= boards_my_post.get(i).getBoard_title()%>
                                 </p>
                                 
                              <!-- 게시글 상세 페이지 내용 -->
                                 <p class="post-des">
                                 <%= boards_my_post.get(i).getBoard_content()%>
                              
                                 </p>
                              </div>
                           </div>
                           <div class="comment-container-padding">
                              <div class="post-comment-container">
                                 <%for (int allCmt = 0; allCmt<cmtView.size(); allCmt++) {
                                    if (cmtView.get(allCmt).getBoard_num() == boards_my_post.get(i).getBoard_num()) {%>
                                 <div class="post-comment-card">
                                    <span class="card-user-name"><%= cmtView.get(allCmt).getUser_email() %></span>
                                    <span class="comment-body"><%= cmtView.get(allCmt).getCmt_content() %></span>
                                 </div>
                                    <% }
                                    }
                                    %>
                              </div>
                           </div>
                           <div class="post-btn-padding">
                              <div class="post-list-btn">
                                 <div class="post-left-btn">
                                    <button class="normal-btn">
                                       <img src="./assets/kjh/icon/heart-nofill.svg" alt="">
                                    </button>
                                    <button class="normal-btn">
                                       <img src="./assets/kjh/icon/journal.svg" alt="">
                                    </button>
                                 </div>
                                 <div class="post-right-btn">
                                    <button class="normal-btn">
                                       <img src="./assets/kjh/icon/coin.svg" alt="">
                                    </button>
                                 </div>
                              </div>
                           </div>
                           <div class="post-view-padding">
                              <div class="post-view-info">
                                 <span class="likes">3.2k likes</span><span class="views">10k
                                    views</span>
                              </div>
                           </div>
                           <div class="comment-box-padding">
                           <form action="CmtWriteService">
                           <input type="text" style="display:none;" name="board_num" value="<%=boards_my_post.get(i).getBoard_num()%>">
                           <input type="text" style="display:none;" name="redirecto" value="mp">   
                              <div class="comment-box">
                                 <input type="text" class="comment-input"
                                    placeholder="소중한 댓글을 남겨주세요" name="cmt_content">
                                 <button class="add-comment-btn" type="submit">
                                    <img class="add-comment-icon"
                                       src="./assets/kjh/icon/envelope.svg" alt="">
                                 </button>         
                              </div>
                              </form>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      
      
      <%} %>
      <%} %>      
     </div>

   
	<div class="btnWrap post_append_btn" >
		<button data-remote="post_write.jsp" style="border: none; background-color: white; " type="button" data-bs-toggle="modal" data-bs-target="#postWrite" onclick ="popWrite()">
			<i class="post_append fa-regular fa-square-plus"></i>
		</button>
	</div>
  
<!--부트스트랩 js 현아-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>


<!-- 게시글 작성 js -->
 <script src="./assets/js_gallery/gallery_postWrite.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script type="text/javascript">
//Bootstrap multiple modal

var count = 0; // 모달이 열릴 때 마다 count 해서  z-index값을 높여줌

$(document).on('show.bs.modal', '.modal', function () {

    var zIndex = 1040 + (10 * count);

    $(this).css('z-index', zIndex);

    setTimeout(function() {

        $('.modal-backdrop').not('.modal-stack').css('z-index', zIndex - 1).addClass('modal-stack');

    }, 0);

    count = count + 1

});



// multiple modal Scrollbar fix

$(document).on('hidden.bs.modal', '.modal', function () {

    $('.modal:visible').length && $(document.body).addClass('modal-open');

});

function popWrite() {
	
	var popWriteX = (window.screen.width / 2) - (1000 / 2);
	window.open('post_write.jsp', 'popWrite', 'top=10, left='+ popWriteX +', width=1000, height=800, status=no, menubar=no, toolbar=no, resizable=no');

}

</script>
</body>
</html>