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

function getContent(){
    document.getElementById("real-textarea").value = document.querySelector("div.write-desc-input").innerText;
}