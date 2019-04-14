alert("回転すし！");
var images = ["img01","img02","img03","img04","img05","img06","img07"];
var maguro = ["m1","m2","m3","m4","m5","m6","m7","m8","m9","m10","m11","m12","m13"]
var i = 0;
var step = 50;
var count = 0;
var imgLeft = 10;
function moveImgX(){
    if(imgLeft >= window.innerWidth | imgLeft <= 0){
        step *= -1;
        count += 1;
    }
    if(count == 2){
        i += 1;
        if(i > images.length){
            i = 0;
        }
        count = 0;
    }
    document.getElementById(images[i]).style.top = "100px";
    document.getElementById(images[i]).style.left = imgLeft + "px";
    imgLeft += step;
    document.getElementById(images[i]).style.visibility = "visible";
    setTimeout("moveImgX()",100);
}

var m1Left = 10;
var m2Left = 20;
var m3Left = 30;
var m4Left = 40;
var m5Left = 50;
var m6Left = 60;
var m7Left = 70;
var m8Left = 80;
var m9Left = 90;
var m10Left = 100;
var m11Left = 110;
var m12Left = 120;
var m13Left = 130;
function maguroMove(){
    document.getElementById(maguro[0]).style.top = "150px";
    document.getElementById(maguro[0]).style.left = m1Left + "px";
    document.getElementById(maguro[0]).style.visibility = "visible";

    document.getElementById(maguro[1]).style.top = "200px";
    document.getElementById(maguro[1]).style.left = m2Left + "px";
    document.getElementById(maguro[1]).style.visibility = "visible";

    document.getElementById(maguro[2]).style.top = "250px";
    document.getElementById(maguro[2]).style.left = m3Left + "px";
    document.getElementById(maguro[2]).style.visibility = "visible";

    document.getElementById(maguro[3]).style.top = "300px";
    document.getElementById(maguro[3]).style.left = m4Left + "px";
    document.getElementById(maguro[3]).style.visibility = "visible";

    document.getElementById(maguro[4]).style.top = "350px";
    document.getElementById(maguro[4]).style.left = m5Left + "px";
    document.getElementById(maguro[4]).style.visibility = "visible";

    document.getElementById(maguro[5]).style.top = "400px";
    document.getElementById(maguro[5]).style.left = m6Left + "px";
    document.getElementById(maguro[5]).style.visibility = "visible";

    document.getElementById(maguro[6]).style.top = "450px";
    document.getElementById(maguro[6]).style.left = m7Left + "px";
    document.getElementById(maguro[6]).style.visibility = "visible";

    document.getElementById(maguro[7]).style.top = "500px";
    document.getElementById(maguro[7]).style.left = m8Left + "px";
    document.getElementById(maguro[7]).style.visibility = "visible";

    document.getElementById(maguro[8]).style.top = "550px";
    document.getElementById(maguro[8]).style.left = m9Left + "px";
    document.getElementById(maguro[8]).style.visibility = "visible";

    document.getElementById(maguro[9]).style.top = "600px";
    document.getElementById(maguro[9]).style.left = m10Left + "px";
    document.getElementById(maguro[9]).style.visibility = "visible";

    document.getElementById(maguro[10]).style.top = "650px";
    document.getElementById(maguro[10]).style.left = m11Left + "px";
    document.getElementById(maguro[10]).style.visibility = "visible";

    document.getElementById(maguro[11]).style.top = "700px";
    document.getElementById(maguro[11]).style.left = m12Left + "px";
    document.getElementById(maguro[11]).style.visibility = "visible";

    document.getElementById(maguro[12]).style.top = "750px";
    document.getElementById(maguro[12]).style.left = m13Left + "px";
    document.getElementById(maguro[12]).style.visibility = "visible";
}