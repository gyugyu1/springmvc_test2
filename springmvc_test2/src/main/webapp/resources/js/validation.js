



//jquery형 함수
checkNull = function(obj, v, message) {
			if(v == "" || v ==null){
			alert("validation : " + message);
			obj.focus();
			return false;
		}else {
			return true;
		}
}
/*
//자바스크립트 형 함수
function checkNull (obj, value, message){
	if(value="" || value==null){
		alert("validation:" +message);
		obj.focus;
		return false;
	}
}*/