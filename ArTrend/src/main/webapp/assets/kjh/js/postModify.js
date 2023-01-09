function imgPreview(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function(event) {
            document.getElementById('write-img').src = event.target.result;
        };
        reader.readAsDataURL(input.files[0]);
        } else {
        document.getElementById('write-img').src = "";
        }
    }
    