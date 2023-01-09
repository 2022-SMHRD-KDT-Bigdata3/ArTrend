<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> post_modify </title>
    <link rel="stylesheet" href="./assets/kjh/css/postModify.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
   
  <!-- Modal -->
  <div class="modal fade" id="postModify" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="postModifyLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="postModifyLabel">게시물 수정하기</h1>
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
                    <div class="writer-info-padding">
                        <div class="writer-info-container">
                            <img src="./assets/kjh/img/poke01.jpg" alt="">
                            <span class="writer-info-name">poke</span>
                        </div>
                    </div>
                    <div class="write-title-container">
                        <input type="text" class="write-title-input" placeholder="제목을 입력하세요">
                    </div>
                    <div class="write-category-container">
                        <input list="cate-list" class="write-category-input" placeholder="카테고리를 선택하세요">
                        <datalist id="cate-list">
                            <option value="그림"></option>
                            <option value="사진"></option>
                            <option value="영상"></option>
                        </datalist>
                    </div>
                    <div class="write-desc-container">
                        <div class="write-desc-input" placeholder="내용을 입력하세요" contenteditable="true"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-bs-dismiss="modal">수정하기</button>
        </div>
      </div>
    </div>
  </div>
    <script src="./assets/kjh/js/postModify.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>