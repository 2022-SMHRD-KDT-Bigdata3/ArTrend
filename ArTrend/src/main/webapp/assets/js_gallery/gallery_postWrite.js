function imgPreview(input) {
if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function(e) {
        document.getElementById('write-img').src = e.target.result;
    };
    reader.readAsDataURL(input.files[0]);
    } else {
    document.getElementById('write-img').src = "";
    }
}



$(document).ready(function() {
	var i=1; // 변수설정은 함수의 바깥에 설정!
  $("#append_div").click(function() {
    
    $("#boxWrap").append("<div class='sub_img'><a href='#' class='sub_img'> <img src=''  class='sub_img '></a></div>");
    
    i++; // 함수 내 하단에 증가문 설정
    

  });
});

