let horizontalUnderLine = document.getElementById("horizontal-underline");
let horizontalMenus = document.querySelectorAll("a.g_column");

horizontalMenus.forEach(menu=>menu.addEventListener("click",(e) => horizontalIndicator(e)))

function horizontalIndicator(e){
    horizontalUnderLine.style.left = e.currentTarget.offsetLeft-30 + "px";
    horizontalUnderLine.style.width = e.currentTarget.offsetWidth-91 + "px";
    horizontalUnderLine.style.top = e.currentTarget.offsetTop + e.currentTarget.offsetHeight + "px";
}