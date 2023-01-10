<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./assets/kjh/css/supportWrite.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
 
  <!-- Modal -->
  <div class="modal fade" id="supportWrite" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="supportWriteLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="supportWriteLabel">후원 상품 등록하기</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <div class="write-container">
                <div class="write-img-container">
                    <img id="write-img" src="" alt="">
                    <input type="file" id="write-img-input" onchange="imgPreview(this);" style="display:none" accept=".jpg,.png">
                    <label class="write-img-btn" for="write-img-input"><img src="./assets/kjh/icon/plus.svg" alt=""></label>
                </div>
                <div class="write-info-container">
                    <div class="support-info-title">상품명</div>
                    <div class="write-title-container">
                        <input type="text" class="write-title-input" placeholder="상품명을 입력하세요">
                    </div>
                    <div class="support-info-title">상품 설명</div>
                    <div class="write-desc-container">
                        <div class="write-desc-input" placeholder="상품 설명을 입력해주세요" contenteditable="true"></div>
                    </div>
                    <div class="support-info-title">후원 액수</div>
                    <div class="support-heart-container">
                        <input class="support-heart" type="number" min="5000" value="5000">
                    </div>
                </div>
            </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-bs-dismiss="modal">등록하기</button>
        </div>
      </div>
    </div>
  </div>
    <script src="./assets/kjh/js/supportWrite.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>