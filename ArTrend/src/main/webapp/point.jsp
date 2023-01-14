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
    
    <!-- 토스 결제 api -->
    <script src="https://js.tosspayments.com/v1/payment"></script>
  </head>
  
<body>

<!-- header include -->
	<%@include file="header.jsp"%>
	 
<div class="wrapper2">
 <div class="wrapper">  
  <br>
  <h5>포인트 충전</h5>
  <br>
  <div class="pay_box">
    <form action="PointUpService" method="post">
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
        
      <hr width="70%" >
          
    
  
    <div class="row mb-3">
        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm"><b>결제정보</b></label>
        <div class="col-sm-5">
          <input type="text" class="form-control form-control-sm" id="colFormLabelSm" placeholder="이름">
        </div>
    </div>
    <div class="row mb-3">
        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm"></label>
        <div class="col-sm-5">
            <input type="email" class="form-control form-control-sm" id="colFormLabelSm" placeholder="이메일">
        </div>
    </div>
    <div class="row mb-3">
        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm"></label>
        <div class="col-sm-5">
        <input type="text" class="form-control form-control-sm" id="colFormLabelSm" placeholder="전화번호">
        </div>
    </div>
    <hr width="70%">
      
    <div class="agree-area" id="agree_checkbox">
        <input type="submit" id="agree" value="✔" style=" border-radius: 50%; border-color:white;background-color:white;" >
        <label for="l_agree">주문 내용을 확인하였으며 결제 진행에 동의합니다. '결제하기'를 눌러주세요.
        </label>
    </div>
    <br>
    <br>
    <br>
    <button type="button" class="input-btn" id="payment-button" 
    style="font-weight:bold;background-color: white;border: 1px solid rgba(14, 138, 41, 0.765);color: rgba(14, 138, 41, 0.765);border-radius: 4px;">결제하기</button>
    </form>
  
  
  </div>
  
 </div>  
</div> 
<script>
      var clientKey = 'test_ck_D5GePWvyJnrK0W0k6q8gLzN97Eoq'
      var tossPayments = TossPayments(clientKey)
      var button = document.getElementById('payment-button') // 결제하기 버튼
      button.addEventListener('click', function () {
        tossPayments.requestPayment('카드', {
          amount: 5000,
          orderId: 'fiqdmSdmz2JdmCI5lPUuK',
          orderName: '포인트 충전',
          customerName: '박토스',
          successUrl: 'http://localhost:8082/ArTrend/pay_success.jsp',
          failUrl: 'http://localhost:8082/ArTrend/fail',
        })
      })
    </script>
   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script> 
</body>
</html>