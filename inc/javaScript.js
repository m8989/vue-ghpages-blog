
function openWindow(theURL) { //v2.0
  window.open(theURL,'pop','toolbar=no,location=no,status=no,menubar=no,scrollbars=yes,resizable=no,left=200,top=20,width=700,height=500');
}


function reloadImg(thisObj,w,h) { //v1.0
	img=thisObj;
  if((img.width-w)>(img.height-h)){
  	img.width=w;
  }else{
  	img.height=h
  }
}

function img_mouseOver(thisObj) { //v1.0
	//alert("ok!");
	var img=thisObj;
	var srcTag=img.lowsrc;
  	img.lowsrc=img.src;
  	img.src=srcTag;
}
function img_mouseOut(thisObj) { //v1.0
	img_mouseOver(thisObj);
}