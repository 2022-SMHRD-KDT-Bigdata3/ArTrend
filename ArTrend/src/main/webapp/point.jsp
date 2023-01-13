 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> point </title>
    
    <!-- 애리 css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel = "stylesheet" href="./assets/css/point.css">
    
    <!-- 현아 header css -->
    <link href="./assets/css/header.css" rel="stylesheet">

  </head>
<style>
  
</style>

 
<body>

<!-- header include -->
	<%@include file="header.jsp"%>
	 
<div class="wrapper">  
  <br>
  <h5>포인트 충전</h5>
  <br>
  <div class="pay_box">
  <%  String email = ""; // 내가 보고 있었던 사용자의 이메일 @ 앞부분까지만 가져오기  %>
    <form action="gallery_user_support.jsp?getUser_email=<%=email %>" method="get">
      <div class="recharge">
        <div class="point1">
          <p>충전할 포인트</p>
        </div> 
      </div>
      <div class=" point">
       <div class="col-sm-10">
        <div class="form-check">
            <input class="form-check-input" type="radio" name="pay" id="gridRadios1" value="5000">
            <label class="form-check-label" for="gridRadios1">
              5,000P
            </label>
          </div>
          <div class="form-check">
            <input class="form-check-input" type="radio" name="pay" id="gridRadios2" value="10000">
            <label class="form-check-label" for="gridRadios2">
              10,000P
            </label>
          </div>
          <div class="form-check disabled">
            <input class="form-check-input" type="radio" name="pay" id="gridRadios3" value="15000" >
            <label class="form-check-label" for="gridRadios3">
              15,000P
            </label>
          </div>
          <div class="form-check disabled">
            <input class="form-check-input" type="radio" name="pay" id="gridRadios3" value="20000" >
            <label class="form-check-label" for="gridRadios3">
              20,000P
            </label>
          </div>

        </div>
      </div>
        <hr width="60%" >
        <div class="pay_m">
          <p>결제 방법</p>
        </div> 
        <div class="pay_check">
          <div class="col-sm-10">
            <div class="form-check">
              <input class="form-check-input" type="radio" name="method" id="gridRadios1" value="kakao">
              <label class="form-check-label" for="gridRadios1">
                카카오페이
              </label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="method" id="gridRadios2" value="naver">
              <label class="form-check-label" for="gridRadios2">
                네이버페이
              </label>
            </div>
          </div>
        </div>
      <hr width="60%" >
          
    
  
    <div class="row mb-3">
        <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm"><b>결제정보</b></label>
        <div class="col-sm-5">
          <input type="text" class="form-control form-control-sm" id="colFormLabelSm" placeholder="이름">
        </div>
    </div>
    <div class="row mb-3">
        <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm"></label>
        <div class="col-sm-5">
            <input type="email" class="form-control form-control-sm" id="colFormLabelSm" placeholder="이메일">
        </div>
    </div>
    <div class="row mb-3">
        <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm"></label>
        <div class="col-sm-5">
        <input type="text" class="form-control form-control-sm" id="colFormLabelSm" placeholder="전화번호">
        </div>
    </div>
    <hr width="60%">
      
    <div class="row mb-3">
        <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm" ><strong>결제 금액</strong></label>
    <div class="col-sm-4">
        0000원
        </div>
    </div>

    <div class="agree-area" id="agree_checkbox">
        <input type="checkbox" id="agree">
        <label for="l_agree">주문 내용과 아래 유의사항을 확인하였으면 결제 진행에 동의합니다
        </label>
    </div>
    <br>
    <input class="input-btn" type="button" value="결제하기" style="font-weight:bold;">
    <br>
    <br>
    <p>유의사항이 적혀있는 줄글,무엇을 위하여 설산에서 <br>고행을 하였으며, 예수는 무엇을 위하여
    광야에서 <br>방황하였으며, 공자는 무엇을 위하여 천하를 철환하였는가? </p>
    
   
    </form>

  </div>
</div>  

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script> 
</body>
</html>