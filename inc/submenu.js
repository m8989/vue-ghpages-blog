	if (mtDropDown.isSupported()) {
    var ms = new mtDropDownSet(mtDropDown.direction.down, 0, 0, mtDropDown.reference.bottomLeft);
var Menu1=ms.addMenu(document.getElementById("Menu01"));
// Menu1.addItem(' ��˾���','#');
 //Menu1.addItem(' ��˾����','#');
// Menu1.addItem(' �˲ż���','#');
 //Menu1.addItem(' �Ƚ��豸','#');
//����������Ŀ

var Menu2=ms.addMenu(document.getElementById("Menu02"));
// Menu2.addItem(' ҽ�õ�˿1','#');
 //Menu2.addItem(' ҽ�õ�˿2','#');
// Menu2.addItem(' ҽ�õ�˿3','#');//��Ʒչʾ��Ŀ
 
//var Menu5=ms.addMenu(document.getElementById("Menu05"));
//Menu5.addItem(' ϵͳ����','rpt1.htm');
//Menu5.addItem(' �û�Ȩ��','rpt1.htm');
 //Menu5.addItem(' �ʺŹ���','rpt1.htm');
 //Menu5.addItem(' �˵�����','rpt1.htm');
 //�ͻ�������Ŀ

		mtDropDown.renderAll();
	}
