<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>

<body>
    
    <div>
        <img src="" alt="" width="100px" height="100px">
        <a id="user-nick">유저 닉네임</a>
        
        <!-- 프로필 드랍다운 띄우기  -->
        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
              프로필 사진 변경
        </button>
        <ul class="dropdown-menu">
            <li><button class="dropdown-item" type="button">사진업로드</button></li>
            <li><button class="dropdown-item" type="button">기본이미지 변경</button></li>
        </ul>
        
    
    </div>
<div class = >
    <form action="">
    <div class="row mb-3">
        <label for="colFormLabel" class="col-sm-2 col-form-label">변경할 닉네임 </label>
        <div class="col-sm-5">
         <input type="email" class="form-control" id="colFormLabelSm" placeholder="변경할 nick ">
         <input type="submit" value="중복확인" style="color:white;border:none;background-color: rgba(8, 209, 25, 0.849);">
        </div>
    </div>
    
    <div class="row mb-3">
        <label for="colFormLabel" class="col-sm-2 col-form-label">현재 비밀번호 </label>
        <div class="col-sm-5">
         <input type="password" class="form-control" id="colFormLabelSm" placeholder="변경할 pw ">
        </div>
    </div>
    <div class="row mb-3">
        <label for="colFormLabel" class="col-sm-2 col-form-label">새 비밀번호 </label>
        <div class="col-sm-5">
        <input type="password" class="form-control" id="colFormLabel" placeholder="새 pw">
        </div>
    </div>
    <div class="row">
        <label for="colFormLabel" class="col-sm-2 col-form-label">새 비밀번호 확인</label>
        <div class="col-sm-5">
        <input type="password" class="form-control" id="colFormLabelLg" placeholder="새 pw 확인">
        </div>
    </div>
</form>
    <div class="input-t">
        <input style="color:white;border:none;background-color: rgba(8, 209, 25, 0.849);" type="submit" value="등록하기" > <input style="color:white;border:none;background-color: rgba(8, 209, 25, 0.849);" type="reset" value="취소하기">
    </div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>
