	if (mtDropDown.isSupported()) {
    var ms = new mtDropDownSet(mtDropDown.direction.down, 0, 0, mtDropDown.reference.bottomLeft);
var Menu1=ms.addMenu(document.getElementById("Menu01"));
// Menu1.addItem(' 公司简介','#');
 //Menu1.addItem(' 公司荣誉','#');
// Menu1.addItem(' 人才技术','#');
 //Menu1.addItem(' 先进设备','#');
//关于我们栏目

var Menu2=ms.addMenu(document.getElementById("Menu02"));
// Menu2.addItem(' 医用导丝1','#');
 //Menu2.addItem(' 医用导丝2','#');
// Menu2.addItem(' 医用导丝3','#');//产品展示栏目
 
//var Menu5=ms.addMenu(document.getElementById("Menu05"));
//Menu5.addItem(' 系统设置','rpt1.htm');
//Menu5.addItem(' 用户权限','rpt1.htm');
 //Menu5.addItem(' 帐号管理','rpt1.htm');
 //Menu5.addItem(' 菜单更新','rpt1.htm');
 //客户留言栏目

		mtDropDown.renderAll();
	}
