<%@page import="com.smhrd.model.UserDAO"%>
<%@page import="com.smhrd.model.JoinVO"%>
<%@page import="com.smhrd.model.CmtVO"%>
<%@page import="com.smhrd.model.CmtDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.BoardsDAO"%>
<%@page import="com.smhrd.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   UserVO info1=new UserVO();
   if(session.getAttribute("info")!=null){   
     info1 = (UserVO) session.getAttribute("info");
   } 
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>post_view</title>
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
   crossorigin="anonymous">

<link href="./assetes/css/main.css" rel="stylesheet">
<link href="./assetes/css/header.css" rel="stylesheet">

<!-- 장호 css view css -->
<link rel="stylesheet" href="./assets/kjh/css/postModal.css">
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
   crossorigin="anonymous">
   
   <!-- 게시글 수정 css -->
<link rel="stylesheet" href="./assets/kjh/css/postModify.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
   <!-- 로그인 상태 확인해서 게시글 상세 or 로그인 모달 띄우기 -->
   
   <script type="text/javascript">
         // body에서 for문 i 활용 -- checkModel() 의 매개변수로
        function checkModel(i){
           if(<%=info1.getUser_email()!=null%>){
         // 내가 클릭한 게시글과 mapping
              $('#postModal'+i).modal("show");
           }else{
              $('#LoginModal').modal('show'); 
           }
      }
     
   </script>
</head>
<body>

<!-- 게시물 정보 가져오기  -->
<% BoardsDAO dao = new BoardsDAO();
ArrayList<JoinVO> boards = dao.getBoardNick();

CmtDAO cmtdao = new CmtDAO();
ArrayList<CmtVO> cmtView = cmtdao.cmtView();

response.setCharacterEncoding("UTF-8"); // 한글이 들어가기때문에 인코딩

if(boards != null) {
   System.out.println("boards 정보 받아오기 성공");
   System.out.println(boards.toString());//확인용출력
   //세션에저장
   session.setAttribute("boards", boards);
   
}else {
   System.out.println("정보 받아오기 실패");
}





%>
   
   <% for(int i=0 ; i<boards.size() ; i++) { %>
   
   <!-- 전체 반복 하면 메인에 그 만큼 출력 됨 -->
   <div class="col-lg-4 col-md-6">
      <div class="card text-bg-light">

         <a href="javascript:checkModel(<%=i%>)" class="banner_img">
          <img class="img_post"
            src="imges/<%= boards.get(i).getBoard_pic() %>" alt="">
            <p class="hover_text">
               <%= boards.get(i).getBoard_title()%>
               
               </p>
         </a>
         
         <div class="modal fade" id="postModal<%=i%>" data-bs-backdrop="static"
            data-bs-keyboard="false" tabindex="-1" aria-labelledby="postModal"
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
                           <img class="img_post" src="imges/<%= boards.get(i).getBoard_pic() %>" alt="">
                           <p class="hover_text">몽크 - 절규</p>
                        </div>
                        
                        <!-- 게시글 상세보기  -->
                        <div class="post-rest-container">
                           <div class="post-rest-header">
                           
						<!-- 게시판 상세 - 유저 -->
                           <div class="post-user-container">   
                              <span style="text-decoration: none; color: black;"></span>
                              
                              			<!-- 해당 유저의 프로필 사진이 떠야하는데.. 안뜸.... why.... -->
                                       <img class="user-card-img" src="uimges/<%=boards.get(i).getUser_pic()%>" alt="">
                                       <span class="card-user-name" style="cursor:pointer;" onclick="location.href='UserInfoCheck?getUser_email=<%= boards.get(i).getUser_email()%>&getUser_nick=<%=boards.get(i).getUser_nick()%>'">
                                          <%= boards.get(i).getUser_nick() %>
                                          </span>
                           </div>
                           
                              <!-- 게시글 수정/삭제 버튼 삭제 -->
                           </div>
                           
                           <div class="post-info-padding">
                              <div class="post-info">
                              
                              <!-- 게시글 상세 페이지 타이틀 -->
                                 <p class="post-title">
                                 <%=  boards.get(i).getBoard_title()%>
                                 </p>
                                 
                              <!-- 게시글 상세 페이지 내용 -->
                                 <p class="post-des">
                                 <%= boards.get(i).getBoard_content()%>
                              
                                 </p>
                              </div>
                           </div>
                           <div class="comment-container-padding">
                              <div class="post-comment-container comment-container-ajax<%=i%>">
                                 <%for (int allCmt = 0; allCmt<cmtView.size(); allCmt++) {
                                    if (cmtView.get(allCmt).getBoard_num() == boards.get(i).getBoard_num()) {%>
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
<!--                            <form action="CmtWriteService"> -->
                           <input type="text" class="cmt_board_num cmt_board_num_ajax<%=i%>" style="display:none;" name="board_num" value="<%=boards.get(i).getBoard_num()%>">
                           <input type="text" style="display:none;" name="redirecto" value="main">
                              <div class="comment-box">
                                 <input type="text" class="comment-input cmt_content_ajax<%=i%>"
                                    placeholder="소중한 댓글을 남겨주세요" name="cmt_content">
                                 <button class="add-comment-btn cmt_btn_ajax<%=i%>" type="submit">
                                    <img class="add-comment-icon"
                                       src="./assets/kjh/icon/envelope.svg" alt="">
                                 </button>         
                              </div>
<!--                               </form> -->
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
<%} %>
   
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

<% for(int i=0 ; i<boards.size() ; i++) { %>
$('.cmt_btn_ajax<%=i%>').click(function(){
	var cmt_board_num = $('.cmt_board_num_ajax<%=i%>').val();
	var cmt_content = $('.cmt_content_ajax<%=i%>').val();
	var user_email = '<%= info1.getUser_email() %>';
	console.log(cmt_board_num);
	console.log(cmt_content);
	console.log(cmt_content);
	
	$.ajax({
		url : "CmtWriteServiceAjax",
		method : "POST",
		data : {"cmt_content" : cmt_content, "user_email" : user_email, "board_num" : cmt_board_num},
		dataType : "JSON",
		success : function(data){
			
            console.log("통신성공");
            console.log(data.cmtCheck);
            
           	$('<div class=\"post-comment-card\"><span class=\"card-user-name\"><%=info1.getUser_nick()%></span><span class=\"comment-body\"> ' + cmt_content + '</span></div>').appendTo('.comment-container-ajax<%=i%>');
           	$('.cmt_content_ajax<%=i%>').val("");

         },
         error : function(err){
            console.log("통신 실패")
         }
	});
});
<%} %>


</script>
</body>
</html>