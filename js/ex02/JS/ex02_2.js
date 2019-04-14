alert("回転すし！");
var imgLeft = 10;
function moveImgX(){
	document.getElementById("img1").style.top = "300px";
	document.getElementById("img1").style.left = imgLeft + "px";
	imgLeft += 5;
	document.getElementById("img1").style.visibility = "visible";
	setTimeout("moveImgX()", 100);
}

function move2xImgX(){
	document.getElementById("img1").style.top = "300px";
	document.getElementById("img1").style.left = imgLeft + "px";
	imgLeft += 50;
	document.getElementById("img1").style.visibility = "visible";
	setTimeout("moveImgX()", 100);
}

(function(){
    var dosuu=60;//度数
    var kaiten=document.getElementById("kaiten");
    var count=dosuu;
        if(kaiten){
            kaiten.addEventListener("click",function(){
            var tmp="rotate("+count+"deg)";
            kaiten.style.transforWebkitm=tmp;
            kaiten.style.transform=tmp;
            count+=dosuu|0;
        },false);
    }
}());