alert("回転すし！");
var images = ["img01","img02","img03","img04","img05","img06","img07"];
var maguro = ["m1","m2","m3","m4","m5","m6","m7","m8","m9","m10","m11","m12","m13"]
var i = 0;
var imgLeft = 10;
function moveImgX(){
  if(imgLeft < window.innerWidth){
    imgLeft += 50;
    document.getElementById(images[i]).style.top = "100px";
    document.getElementById(images[i]).style.left = imgLeft + "px";
    document.getElementById(images[i]).style.visibility = "visible";
    setTimeout("moveImgX()", 100);
  }else{
    if(imgLeft != 0){
        imgLeft -= 50;
        document.getElementById(images[i]).style.left = imgLeft + "px";
        document.getElementById(images[i]).style.visibility = "visible";
    }
    moveImgX();
  }
}

function maguroMove(){
    document.getElementById(maguro[0]).style.top = "150px";
    document.getElementById(maguro[0]).style.left = imgLeft + "px";
    document.getElementById(maguro[0]).style.visibility = "visible";

    document.getElementById(maguro[1]).style.top = "200px";
    document.getElementById(maguro[1]).style.left = imgLeft + "px";
    document.getElementById(maguro[1]).style.visibility = "visible";

    document.getElementById(maguro[2]).style.top = "250px";
    document.getElementById(maguro[2]).style.left = imgLeft + "px";
    document.getElementById(maguro[2]).style.visibility = "visible";

    document.getElementById(maguro[3]).style.top = "300px";
    document.getElementById(maguro[3]).style.left = imgLeft + "px";
    document.getElementById(maguro[3]).style.visibility = "visible";

    document.getElementById(maguro[4]).style.top = "350px";
    document.getElementById(maguro[4]).style.left = imgLeft + "px";
    document.getElementById(maguro[4]).style.visibility = "visible";

    document.getElementById(maguro[5]).style.top = "400px";
    document.getElementById(maguro[5]).style.left = imgLeft + "px";
    document.getElementById(maguro[5]).style.visibility = "visible";

    document.getElementById(maguro[6]).style.top = "450px";
    document.getElementById(maguro[6]).style.left = imgLeft + "px";
    document.getElementById(maguro[6]).style.visibility = "visible";

    document.getElementById(maguro[7]).style.top = "500px";
    document.getElementById(maguro[7]).style.left = imgLeft + "px";
    document.getElementById(maguro[7]).style.visibility = "visible";

    document.getElementById(maguro[8]).style.top = "550px";
    document.getElementById(maguro[8]).style.left = imgLeft + "px";
    document.getElementById(maguro[8]).style.visibility = "visible";

    document.getElementById(maguro[9]).style.top = "600px";
    document.getElementById(maguro[9]).style.left = imgLeft + "px";
    document.getElementById(maguro[9]).style.visibility = "visible";

    document.getElementById(maguro[10]).style.top = "650px";
    document.getElementById(maguro[10]).style.left = imgLeft + "px";
    document.getElementById(maguro[10]).style.visibility = "visible";

    document.getElementById(maguro[11]).style.top = "700px";
    document.getElementById(maguro[11]).style.left = imgLeft + "px";
    document.getElementById(maguro[11]).style.visibility = "visible";

    document.getElementById(maguro[12]).style.top = "750px";
    document.getElementById(maguro[12]).style.left = imgLeft + "px";
    document.getElementById(maguro[12]).style.visibility = "visible";
}