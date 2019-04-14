function browserCheck(){
	var browAgent = navigator.userAgent.toLowerCase();
	var myBrow;

	if(browAgent.indexOf("trident") > -1){
		myBrow = "Internet Explorer";
	}else if(browAgent.indexOf("opr") > -1){
		myBrow = "Opera";
	}else if(browAgent.indexOf("chrome") > -1){
		myBrow = "Google Chrome";
	}else if(browAgent.indexOf("safari") > -1){
		myBrow = "Safari";
	}else if(browAgent.indexOf("firefox") > -1){
		myBrow = "Firefox";
	}else{
		myBrow = "unknown";
	}
	document.write(myBrow);
}