<%@page import="com.smhrd.model.MessageVO"%>
<%@page import="com.smhrd.model.MessageDAO"%>
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
	
	<!--아이콘-->
<script src="https://kit.fontawesome.com/fa92a52c34.js"
	crossorigin="anonymous"></script>
	

<!-- 현아 css -->
<link href="./assets/css/main.css" rel="stylesheet">
<link href="./assets/css/header.css" rel="stylesheet">
<link href="./assets/css/message.css" rel="stylesheet">


<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

<style>

.msgWrapper>div {
	background-color: rgba(255, 255, 255, 0.681);
	padding: 20px;
	border: 1px solid rgb(181, 179, 179);
	border-radius: 10px;
	width : 70%;
	margin-top : 3%;
}
.msgHeader, .msg_header>span{
	width : 70%;
	font-size : 20px;
	font-weight : bold;

}

</style>

</head>
<body>
	<!-- 현아 헤더  -->
	<%@include file="header.jsp"%>

	<% ArrayList<MessageVO> list = (ArrayList<MessageVO>)request.getAttribute("my_msg"); %>


	<div class="msgWrapper" align="center">
       
        <div class="msg_header"> 
            <span><i class="fa-solid fa-heart" style="color: rgba(14, 138, 41, 0.765);"></i> 나에게 온 메세지 <i class="fa-solid fa-heart" style="color: rgba(14, 138, 41, 0.765);"></i></span>
           
        </div>    

        <div class="chat_main"> 
		<table style="text-align : center; width : 100%;">
			<tbody class="msgHeader">
				<tr>
					<td> 번호 </td>
					<td> 보낸 사람 </td>
					<td> 내용 </td>
					<td> 날짜 </td>
					<td> 삭제 </td>
				</tr>
			</tbody>
			
			<% if(list != null){
				for(int i = 0; i<list.size(); i++){ %>
				<tr>
				<td> <%= (i+1) %>
				<td> <%= list.get(i).getSend_email() %> </td>
				<td> <%= list.get(i).getContents() %> </td>
				<td> <%= list.get(i).getDay() %> </td>
				<td> <a href="removeMessageService?msg_num=<%=list.get(i).getMsg_num()%>" style="text-decoration : none;"> ✖ </a></td>	
				</tr>
				<%}
				}else{%>
					
					<tr> 
					<td colspan="5">메세지가 없습니다.</td>
					</tr>
				<%}%>
			
		</table>

 </div>
    </div>
    

               
    
</body>
</html>