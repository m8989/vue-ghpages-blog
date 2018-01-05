<%@LANGUAGE="VBScript.Encode" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--#include file="../inc/check.asp" -->
<!--#include file="OptionList3.asp" -->
<%#@~^KgIAAA==@#@&Kza+|1ls+{E商品资料J@#@&@#@&zN[m&Y',/tm3trLtD`:X2+mHm:n~r3NbYm(DJ#~v检查权限要在设置了:X2+|Hm:nv模块名#值以后才可以运行@#@&29kDmqD'~Z4+^Vtko4O`:XwmHls+BJ3NrO|qOJ*~B检查权限要在设置了:X2n|1lhnv模块名#值以后才可以运行@#@&@#@&b0~NbYk9@!@*EJ,Y4+	@#@&7b0PA[kD{qD@!@*KMEPOtnU@#@&7d"n/aWUdR.rD+~J@!d1DraY,Vl	o!Co'Bl7lj^MkwDqR8@*l^n.YvB你的权限不够！E#ItrdDW.XcLWvOqbpJP@#@&id]+k2KxdRqDkD+,E@!J/^DbwO@*r@#@&inx9Pk6@#@&+^/@#@&drW,b[N|(Y@!@*P.!+PO4x@#@&i7"+daW	/+cMrYPE@!km.raYP^CxTElTnx9m\m?^Dr2DF F@*CVDOcE你的权限不够！B#I4b/OWMzcoGvO8#irP@#@&diIn/aWUdRMrYPJ@!&dmMkaY@*J@#@&i+UN,r0@#@&nU9PkW@#@&@#@&eYoAAA==^#~@%>
<%#@~^9xoAAA==@#@&YC(V'JhDK[E1YmVb/OE@#@&@#@&r0,D+$;n/DR6W.:cEmN[+9rY|/;8NJbxrY.EE,Y4x,@#@&iB表单提交后@#@&d@#@&7+9kOr9'D5E/YcWGDs`r+[kOr9Jb@#@&7@#@&d2m;WNnx"+5EdDRoKDs`Ja{;GNJb@#@&d2m	l:xI;EdORwWM:cJ2m	lh+rb@#@&d2mxlhn{In;!nkY wWM:`rw|nxm:nJ*@#@&7a{W^[xK'I5;+kYcsGDhcrwmW^[xKJb@#@&dwm2bmPXan{In$E/YcsK.:vJ2{ak^PHw+rb@#@&dw|^slk/{In;;nkY sK.:vJ2m1Vlddr#@#@&i2|ZGkYhDk1+{]+$En/DRoGM:`r2{;W/DK.k1+r#@#@&72|InYmrVhDr^'In5!+dYcoKDhvJa{IYmrVhDrmJb@#@&dw|]+Dlk^3aw^lbxxIn5!+dYcoWM:cEa{InOmks2X2^lr	J*@#@&iw|jwmxI;;nkYRwGDs`Jamjwmr#@#@&72|b.+mxI;;nkYRoGM:cJamzDnmJ*@#@&in|2k1wCY4']n$E+kORwWDscEwbmr#@#@&7K|wrmaCY4 x];EndDRoWMhvJK|wbmwmY4+J*@#@&dh{2r1wlD4&{I+$;n/DRwW.:cEh{2k12lDtfE*@#@&7L|k['"n$EnkYcsWM:vEo|k[J*@#@&7a{IhlM3'"n5E/DRoW.hvJ]+sCD0Jb@#@&dwmjDW.lTn{In$E/YcsK.:vJ2{UYG.mo+rb@#@&dW	PGw{I;;+dOcsGDscJKxPGaJ#@#@&i:zN2D'];!+/DRwGDs`E:HNn2DJ#@#@&da{nMG[E1k	o)DnC{In;!n/DRoGM:`E2|n.W9;1kUTbM+lr#@#@&da{]+DlrstWxz'"+;!ndYcsKDh`E2|InYmrVtWUnHJ#@#@&iwmj	rD'];!+/DRwGDs`Ew|jUrDJ#@#@&dsXw!8sk1'"+5EndDRoWMh`r:z2!4Vr^r#@#@&i(k{9V{I+$EdYcsGDs`E(k{fsJ*@#@&i(d{;tmV']n$En/D sKDhcrq/m/4+^3rb@#@&7&/|fkkw^CX{JqJ@#@&@#@&@#@&w|]+slD0x^EDj"Scwm]:CD0b@#@&@#@&W!xmOrKx~m!O`IJv/DD#,P,veCeMeCeMMCee去掉图片中自动加入的域名信息，改为相对路径CMeCeeCMMeCeCeMeMMCeMeC@#@&,PvO:w2CDtxJ4ODwlJzrPI;!n/DRj+M\n.jlDbC4^+/vEj2".AIm1)\AJb["n;!+dOc?+.-D#lMrm4s/vJ?;I&KK|1)HAJb@#@&PPEO+swx!hxq	/DD.+-cD+hwaCY4~E&r#Oq@#@&P~BDnsw2mY4'V0DcY:2wmY4SD+:aUEs#@#@&~~Y:awCY4xrtOYalzJJ'];EndDRj+M-D#mDbl4^+kcJU2].AImHzH2rb[:tkkmjkD+|nCY4~LJ&J@#@&P,Ynha/Y.xM+2Vm^`dDDBY+swaCY4~ERczEb@#@&P,^EDjId~xPD+swdY.@#@&+UN,WE	mOrKx@#@&@#@&d@#@&iv服务器端验证@#@&7EW!Ym4+1V`;tnm0.Cs!+`amZKN+BSSFBJ商品编号r#b@#@&7EW;Y14+13c/4+mV#mV;+v2|xCs+B~~8~r商品名称E#*@#@&dEW;O1t+1V`;t+1V#l^E`2{nUm:n~BSFBJ英文名称Eb*@#@&7vKEOm4n13c;tm3jl^;+vwmW^NUGB~~8SJ供应商编号r##@#@&7BKEDm4+^VvZ4+1V.mV;nvw{2r1KzwSB~qBJ图片读取方式r##@#@&ivW!Y^tmVc;t+1V.mVEc2{1Vm/d~SS8~E类别J*b@#@&dvG!Ym4n13cZ4n13#mV!+`a{;G/Dn.k1+SSBF~r成本价E#*@#@&ivGEDm4+^3c/4+^3jCV!+c2|I+OCbVKDb^~SBFBJ零售价J*#@#@&dEW;Y1tn^0`Z4nm0.l^;n`a{"+OlrsA62VmrxB~SqBJ价格说明Jbb@#@&7BK;Dm4m0`Z4+1V.mV;+vwmja+mBS~8~J规格rbb@#@&dEW;Y^4mV`;4+13#C^E+c2|b.+mSB~qBJ适用范围r##@#@&ivW!Y^tmVc;t+1V.mVEcK{ak1wCY4SB~q~r图片路径E#*@#@&7EWEO^4+^3v/4+^0.mVE`Tmk9~S~8~E供应商E*#@#@&7BKEY14nm0`;tnmV#mV;+v2{"+hCM3~SS8~E备注J*b@#@&7EW!Ym4+1V`;tnm0.Cs!+`am?DWDmLn~B~8~E库存量Jbb@#@&7BK;Y1tn^0`Z4n13#l^;`hHNwYB~Bq~r所属部门Jb#@#@&7vKEY14+13`;4nm0.mV;+c2|n.W9;mbxL)M+lSSBFSJ产地rb*@#@&iBKEY1t^3vZ4+13#C^E+v2{"+YmrsHKxXS~SqBJ零售价币种E#*@#@&iBG;Dmtn^0`/t^0.C^E`w|j	rYB~SFBJ单位Eb*@#@&ivW!Ym4n^3vZ4+^3#C^En`szw!4sr1~~SqBJ在内部公开E#*@#@&dvKEDmtm0cZ4+^3jls;`qkmfV~BSq~r删除标记J*#@#@&7vKEOm4nm0`/4m3#C^En`&d|Z4m0~~BFBE审核标记J*#@#@&iBG;Dmt^3vZt^V.mV!+cqdmGkdw^CXB~SqBJ显示标记Jbb@#@&7@#@&7@#@&@#@&db0PNbOk9'EJ,Y4n	dB添加状态@#@&diBP防止二义性信息逻辑CMMeCeCeMeMMCeMe@#@&diBdnDPDdmD+dY{jD-DcZDlDnr(LnmD`E)Grf~ IAZr"9j2:J*@#@&d7vM/mYdYcr2n	PJdn^+^Y,^KEUD`C#Pm/,^W!xO+MPW.K:Pr~[,Yl(snPLPrPAtn.P;/.xm:nxEJP'~!/nD	Cs+~LPrBJBmKUx@#@&7dEkW~,D/|O+kY`r^GE	YDE#@*T,Y4+	@#@&idv71lVs~t/LW!OvJ用户名已存在S,不能添加"r~JNl7C/1DrwD)4rkYWMzR(lm0cbJB&*@#@&d7viIn/aGxk+ 3	N@#@&7iBnx9~b0@#@&diBeCeCMeCeMeCeMMCeeCMeCeeCMMeCeCeMeMMC@#@&d@#@&diB添加时使用的字段@#@&id0rn^Nq'm.MlzvJa{ZKNE~rwmxm:nEBJw|nxm:+rSEw|W^NUWESrwmwb^KHwnEBJwm^^ld/rSrwm;WkYnMk1nJBJ2{"+OCbVnMrmJ~r2mIYmks2a2^lrxrSJa{j2mJSEa{)DCr~Eh{akmalD4JBJK{ak^2mYtyE~rn{ar^wmY4&E~EL|k[JBEw|InhmD3ESrwm?DGMlLJBJ:HN2Yr~Ew|n.G9EmbUozD+mESJa{"+OlrstWU+HE~rwmi	kYESrWUKK2r~EsXaE4^k1E~rqd{G+sEBJqkmZ4+m0ESJ&/|fr/2smXE#@#@&di\Cs!+FxCMDCXv2|ZG9+Bw{	lsn~a{nxm:nSa{W^[xK~w|2rm:Xa+Swm^^ld/B2{;WdOhDk^nBwmIOmkshDbm+Bw|]+DlrVA62smkxB2{Uw+1S2{zDlSnm2bm2lD4~h{2r1wlO4y~K{ar1wCDt2~o|k9Sw|In:mDVSa{?DGDmo+BhzNwD~2{K.KN;mbUozDnCBw{]nDlrVtG	+zBw|jxbYBGx:W2~sX2;(Vk1Sqk{fsSqk{;tnmVS&/mfbdw^lzb@#@&d@#@&id-l^;Fj5S{JJ@#@&i70KD~k{!~OKPE(GE	N`6rnV9F*@#@&d77b0~\msEFcr*@!@*EE,Y4+	~@#@&7idi\l^Eq?5Sx\mV;n8?pd~[,JBr'~Dw^l^+c-mV;+8ck*~Evr~Jvvr#'JESrP@#@&did+^/@#@&id7d7ls;F?5J'7lV!nq?5S,[Ex;s^J'JBE@#@&d77xN~r6@#@&diU6O@#@&id\mV!nFUpJ'^+WOv\l^;+8?pdSs+	`7lsEnqUpJ# q#@#@&77@#@&d7vk;sP{~rqHU2"KP&1:6PrP'PDl8sP[,EPvJPL~BWbxv0r+s[8~~JBE#,[~E*P.)J`2jPvvrP',9Kkxv\msEFSPrBSvr#PL~JE#J@#@&7dk;^PxPE(g?3I:~qgK6~rP[~Om4s+,',J~vJ,[PxWbU`6knV9FS~r~J*~[,J#,#)S`2UPcJ'~7lsEq?5S'~,J#E@#@&d7hK.9'E你的信息已成功加入eJ@#@&dVkndE编辑状态@#@&d@#@&77E编辑时使用的字段@#@&i70b+V9qxlMDmXcJ2m;W[+rSJa{UCs+JSEa{nxmhJSrw|WV9xKE~rwmwbmPza+JBEw|mVmddJBJa{/WdOhDrmE~rwm]YlrshDrmEBJ2|IYlbVAaw^lrxr~E2|?w^JBJw|).+mJBJK{2r1wCY4E~rnm2bmwCO4 E~rK|wr1wmYt2JBEo|k[JBJ2m"+:m.3r~JamjYKDmonJSEsX[+aOJBJ2mhDW[;1kUoz.lEBJa{IYmrVtWU+HJSEa{j	rYr~JKUPWaJBJhX2;(VrmrSJ&/m9VJSE&/mZ4n13EBJ&/{Gkk2VmXE#@#@&777lV!nF{lDMCz`a{;W[+S2|xC:Sw|+UCs+~2mKV[xKSa{2bm:Xw~amm^ld/Bwm/K/Yh.k1+~am]+DlbVKDr^~2{"nYmks3XwVCr	~2{U2mSa{zD+m~hmwbm2lDtSK|wk12lDt BKmwbmalOtfST{rNB2{"+hCM3~2mUYGDmL~hHNwYBw|KDKN;mbxL)M+lB2{"+YmrsHKxXSwmi	kO~KUKKwShHwE8sbmSqkmG+sBqk{Z4+1V~&/mfb/2smX#@#@&d@#@&did5V{J`n9bP3,J~[,Ol(Vn~LPJ~jAK~J@#@&idWKD,k'ZPDGP!4GE	NcWb+V9q#@#@&di7r0,\mV;+qcb#@!@*rEPDtnU,@#@&77idd;^~{Pd$V,[P6ksN8`r#,[~E{BJ,'PM+w^C^+v\mV;+qcb#SJEE~rBvE*P[~EEJ~@#@&7idn^/@#@&idi7/$V~',/5s,[P6r+^NFvrbPLPr'UEssr@#@&di7+	N~r6@#@&77ikWPb~@!@*~!4KEx9`6r+^Nq#,Y4n	@#@&i7di/;^xd;^PLPE~E~@#@&7dinVk+@#@&idd7d$Vx/$s,[~rPSt+M+,KqG'EPLPn[bYk9~@#@&ddinUN,k6d@#@&77	+aY@#@&dihG.9'J你的信息已成功修改ZE@#@&7+	[,kW,@#@&dBM+k2W	/nRSDrOP/$s@#@&dBMndwKxk+ +U[@#@&7mKUxc2an1EYn~k;s@#@&@#@&+sk+@#@&dE进入页面时`非提交*@#@&i+[kDk[xM+;!n/D`J[rYbNr#@#@&7r6PnNbOk9@!@*ErPY4n	Pv编辑状态@#@&7iwCT+|Wx^Wm['rWUVKl[xrJwmL+|Wx^GCNv#rJE@#@&7i/nY,./8'jnM\+. ;DnlDn}4%mD`Jzf}9AcI3Z}I9jAKJ*@#@&idDkq ra+	PE/nsmOPC~0MWh~rP[~Om4s+,',J~StD+,n&9P{J~[,+[rDkN,SmKxx@#@&7di@#@&d7n(9{DdFvEn&fEb@#@&d72|ZGNxM/qvJa{ZKNE#@#@&7da{UCs+'MdFvJw|UC:J*@#@&d72|+Ulsn'M/qcrw{nUm:nJ*@#@&d7a{KVN	W{./8`Ew|Ws[	WJ*@#@&idw|2rm:Xa+xDdqvJ2{arm:X2nr#@#@&7iwmm^Ck/xM/8`Ja{1slk/E#@#@&77a{ZKdYhDk1nxDkFvJ2{/GkYKDb^+r#@#@&idwm]YCk^KMk^'M/FvJamIYCk^n.r1+J*@#@&idw|]nYmk^2awsCbxxDkq`rwm]YlrsA62Vmr	Jb@#@&idw|?anm{DdFvJ2mUw+1E#@#@&di2mbM+m'./qcrwmbMnlr#@#@&idnm2bm2lD4{Dd8`rn{ak12lDtE#@#@&77h{wb^wmYtyx./8`rnmwr^alOtyE#@#@&77h{wr^alOt2xM/qvJh{wbmaCY4&E#@#@&77T{k9xDkF`rLmk9J*@#@&d72|In:m.3{DdqvJwm]:CD0E*@#@&ida{?DWMCo'./8`E2|?YK.lT+J*@#@&diW	KGwx.kFcJKUKKwEb@#@&d7hHNnwDxM/qvJsXNwDE#@#@&7da{K.KNE1rxTbDCxDkFvJ2{K.KN;mbUozDnCr#@#@&7iwmIOmkstW	+X{Dkq`rwmIYCr^HW	nXr#@#@&77w|j	kO'.d8`Ew|ixbYEb@#@&d7hHw;4^r1'.kFvJ:Hw!8VbmE#@#@&77&/{GnV{D/8cEqk{G+sJb@#@&d7qkmZ4+^V{D/qcrqd{;4mVr#@#@&diqkmfb/2VmXx.kF`r(/|fkk2slHJ*@#@&d@#@&i@#@&d@#@&d@#@&77,PP]d8R/VKd`b@#@&idP,PUnY,IdF,'~HKYtbUo@#@&d@#@&7+^/dv添加状态@#@&7iwmZK[+{JE@#@&dd2m	lh+{Er@#@&ida{+	lsn'rJ@#@&id2mKVN	G'rJ@#@&77w|wbmPX2n{JE@#@&7da{^sm//xEr@#@&di2|ZGkYhDk1+{EJ@#@&7da{]nDlk^KDbm+{EE@#@&diwm?2n1'EJ@#@&dinm2bmwCO4'EJ@#@&idK|wbmwmY4+'rJ@#@&idKmakmaCY4&'rE@#@&idT{rNxEr@#@&di2{UYG.mo+xEr@#@&dihHNnaY{JJ@#@&i7w|n.W9E^r	obMnl{JJ@#@&7da{"+OlrstWU+HxJr@#@&7iw{iUbYxJr@#@&d7Kx:Ww{Jr@#@&idhXaE8sbm'rE@#@&dd&dmfV{JE@#@&7iqd{;4+13xEr@#@&77&/mfbdaVCH'rJ@#@&d@#@&dx[Pb0@#@&@#@&+	[Pb0@#@&@#@&GGkHAA==^#~@%><html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><%=#@~^HwAAAA==~zw2^k1lYbW	cJ:tr/|?rO{1mh+r#PtQoAAA==^#~@%></title>
<link rel="stylesheet" href="../inc/style.css">
<script language="JavaScript" src="../inc/check.js"></script>
<script LANGUAGE="javascript">
<!--

<%#@~^MQAAAA==~b0~M+$E+kYcWWM:cJmN[n9kY|dE(+Nrb@!@*rYMEnJ~O4+UPPRAAAA==^#~@%>

function page_onload(){
//设置单选框、多选框、下拉菜单的值
 SetSelectedAndChecked(add.onTop,"<%#@~^IAAAAA==~"+daW	/+cMrYPuYsV6;D`W	PWa#P,NgsAAA==^#~@%>");
 SetSelectedAndChecked(add.Is_Check,"<%#@~^IwAAAA==~"+daW	/+cMrYPuYsV6;D`qkmZ4+m0b~PHwwAAA==^#~@%>"); 


 loadForm();
}
function loadForm()
{
  setTimeout('intHtmlEdit()',500);
  return true
}
function intHtmlEdit()
{
  //editor.HtmlEdit.document.body.innerHTML=document.add.p_Remark.value;
  if (editor.EditMode.checked==true)
	  editor.HtmlEdit.document.body.innerText=document.add.Remark.value;
  else
	  editor.HtmlEdit.document.body.innerHTML=document.add.Remark.value; 
  return true
}

<%#@~^CAAAAA==~x[,k6PZgIAAA==^#~@%>

function add_onsubmit(add) {

//客户端验证


if (!checkvalue(add.p_class,0,0,1,"商品分类")) return false;
}
//-->
</SCRIPT>
<script type="text/javascript">
// 参数说明
// s_Type : 文件类型，可用值为"image","flash","media","file"
// s_Link : 文件上传后，用于接收上传文件路径文件名的表单名
// s_Thumbnail : 文件上传后，用于接收上传图片时所产生的缩略图文件的路径文件名的表单名，当未生成缩略图时，返回空值，原图用s_Link参数接收，此参数专用于缩略图
function showUploadDialog(s_Type, s_LinkID_SavePathFileName, s_LinkID_SaveFileName){
	var s_ID="eWebEditor1";//编辑器的名称(因为知道这页已经有了一个编辑器，所以直接用，否则要创建一个)
	//EWEBeditor_Create("editor", "coolblue");

	var editor = document.getElementById(s_ID).contentWindow;
	editor.openUploadDialog(s_Type, 1, s_LinkID_SavePathFileName, s_LinkID_SaveFileName, '', 1);
	/*
	参数说明： 
	s_Type: 上传文件类型，可用值为"image","flash","media","file"
		image: 图片
		media: 媒体
		flash: Flash
		file: 附件

	s_Mode: 上传接口对话框模式
		0:常规模式
		1:常规设置+单文件上传
		2:常规设置+多文件上传(默认)

	s_LinkID_SavePathFileName : 文件上传后，用于接收上传文件路径文件名的表单名，返回包含路径的文件名
	s_LinkID_SaveFileName : 返回上传文件的文件名
	s_LinkID_OriginalFileName : 返回原文件名

	s_ReturnFlag : 返回值方式标志
		1: 输入框始终只有最后一次上传的文件名
		2: (默认)支持多个文件，多个上传或多次操作后，输入框中保留多个文件，多个文件如“|”分隔。
	*/
}

function eWebEditorPopUp(style, field, width, height) {
	window.open("../HtmlEditor/popup.htm?style=popup&link="+field, "", "width="+width+",height="+height+",toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no");
}

//创建一个编辑器实例，只用于上传接口，所以此处是隐藏的
function EWEBeditor_Create(s_ID, s_Style){
	document.write('<input type="hidden" name="'+s_ID+'" value="">'
		+'<iframe id="'+s_ID+'__Iframe" src="../HtmlEditor/ewebeditor.htm?id='+s_ID+'&style='+s_Style+'" width=0 height=0 style="display:none" frameborder="0" scrolling="no"></iframe>');
}
</script>
<script type="text/javascript"> 
function showPic(sUrl){ 
 var x,y; 
 x = event.clientX; 
 y = event.clientY; 
 document.getElementById("popDiv").style.left = x; 
 document.getElementById("popDiv").style.top = y; 
 document.getElementById("popDiv").innerHTML = "<img src=\"" + sUrl + "\">"; 
 document.getElementById("popDiv").style.display = "block"; 
} 
function hiddenPic(){ 
 document.getElementById("popDiv").innerHTML = ""; 
 document.getElementById("popDiv").style.display = "none"; 
} 
</script> 

</head>

<body bgcolor="#FFFFFF"  text="#000000" leftmargin="0" topmargin="0" <%=#@~^CwAAAA==2mon|W	VWmNeQQAAA==^#~@%> >
<!--# inc lude file file="incLeft.asp"-->
<%#@~^LgAAAA==~b0~M+$E+kYcWWM:cJmN[n9kY|dE(+NrbxJDD!+EPO4x~ABAAAA==^#~@%>
<center><%=#@~^BQAAAA==AKD[,3AEAAA==^#~@%></center>
<%#@~^7AAAAA==.j]d'"+;!+kORU+.\D#CMkl(s+k`J_PPn|IAs3I3]r#~B取得前一页的`]S@#@&]nkwWUdR	DbOPE@!/1DkaY,sl	o;lT+xBm\lU^DbwY8 q@*mVDO`v~r[~hK.N,[E~E#i&M4kdYK.HR8mm0`O8#p~返回前页eJJ~@#@&IndaWxknRqDkDn~J,NKm;:nUDRsW1CYbWUxEJ[~.j]SLEEi@!J/1DkaY@*EPE自动刷新前一页@#@&MUIAAA==^#~@%>
<%#@~^BgAAAA==~VdP6QEAAA==^#~@%>

<form method=POST  name=add LANGUAGE=javascript onsubmit="return add_onsubmit(this)">
<input type=hidden name="addedit_subed" value="true">
<input type=hidden name=editid value="<%=#@~^BwAAAA==n9kObN,kwIAAA==^#~@%>">
<br>
          <table width="600" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#0033FF">
            <tr> 
              
            <td align="center"><font color="#FFFFFF"><b>商品基本资料</b></font></td>
            </tr>
            <tr>
              <td align="center" bgcolor="#FFFFFF"><table width=100% border=0 cellpadding=0 cellspacing=1>
          <tr> 
            <td width=18% height="25" align=right><font color="#FF0000">* </font>编号：</td>
            <td height="25"><input type=text name="p_Code" size=20  value="<%=#@~^BwAAAA==2|ZG9+,agIAAA==^#~@%>"> 
            </td>
          </tr>
          <tr> 
            <td height="25" align=right>中文名：</td>
            <td height="25" colspan="1"><input type=text name="P_name" size=50  value="<%=#@~^BwAAAA==K|xCs+,cAIAAA==^#~@%>"> 
            </td>
          </tr>
          <tr> 
            <td height="25" align=right>英文名：</td>
            <td height="25" colspan="1"><input type=text name="P_ename" size=50  value="<%=#@~^CAAAAA==K|+Um:P1QIAAA==^#~@%>"> 
            </td>
          </tr>
          <tr class="hidden"> 
            <td height="25" align=right>供应商编号：</td>
            <td height="25" colspan="1"><input type=text name="P_oldno" size=50  value="<%=#@~^CAAAAA==K|Ws9xKP6wIAAA==^#~@%>"> 
            </td>
          </tr>
          <tr> 
            <td height="25" align=right><font color="#FF0000">* </font>商品分类：</td>
            <td height="25"> <select name="p_class">
                <%#@~^RgAAAA==^mVs,r!YraYbGxdkdY2`^G	x~rKDKNE1OmZ^lk/E~E^|ZGNE~rmmHm:+ESa{^Vmdk~Er#whcAAA==^#~@%>
              </select> </td>
          </tr>
          <tr class="hidden"> 
            <td height="25" align=right>数量(吨)：</td>
            <td height="25" colspan="1"><input type=text name="p_CostPrice" size=50  value="<%=#@~^DAAAAA==2|ZGkYhDk1+,ewQAAA==^#~@%>"> 
            </td>
          </tr>
          <tr class="hidden"> 
            <td height="25" align=right>价格(元/吨)：</td>
            <td height="25" colspan="1"><input type=text name="p_RetailPrice" size=50  value="<%=#@~^DgAAAA==2|InDlbVnMk1nPQwUAAA==^#~@%>"> 
            </td>
          </tr>
          <tr > 
            <td height="25" align=right>产品特征：</td>
            <td height="25" colspan="1"><textarea rows=15 name="p_Area" cols="55"><%=#@~^BwAAAA==2|b.l,aAIAAA==^#~@%></textarea> 
            </td>
          </tr>
          <tr class="hidden" > 
            <td height="25" align=center>技术参数：<br>
              (英文)&nbsp;&nbsp;&nbsp;</td>
            <td height="25" colspan="1"><textarea rows=15 name="p_RetailExplain" cols="55"><%=p_RetailExplain %></textarea><br>
		<INPUT TYPE="BUTTON" NAME="btn" VALUE="HTML编辑" ONCLICK="eWebEditorPopUp('add', 'p_RetailExplain', 580, 380)">            </td>
          </tr>
          <tr class="hidden"> 
            <td height="25" align=right>发布日期：</td>
            <td height="25" colspan="1"><input type=text name="p_Spec" size=50  value="<%=#@~^BwAAAA==2|?2m,egIAAA==^#~@%>"> 
            </td>
          </tr>
          <tr > 
            <td height="25" align=right>图片路径：</td>
            <td height="25" colspan="1"><input type=text name="pic" id='add_pic' size=50  value="<%=P_picpath %>"   onMouseOver="showPic('<%=p_picpath%>');" onMouseOut="hiddenPic();"><input type=button value="上传图片..." onClick="showUploadDialog('image', 'add_pic', '')">			</td>
          </tr>

          <tr> 
            <td height="25" align=right>大图片路径：</td>
            <td height="25" colspan="1"><input type=text name="P_picpath2" id='add_P_picpath2'size=50  value="<%=P_picpath2 %>"    onMouseOver="showPic('<%=p_picpath2%>');" onMouseOut="hiddenPic();"><input type=button value="上传图片..." onClick="showUploadDialog('image', 'add_P_picpath2', '')">            </td>
          </tr>
          </tr>
          <tr class="hidden"> 
            <td height="25" align=right>图片3路径：</td>
            <td height="25" colspan="1"><input type=text name="P_picpath3" size=50  value="<%=P_picpath3 %>"    onMouseOver="showPic('<%=p_picpath3%>');" onMouseOut="hiddenPic();"><input type=button value="上传图片..." onClick="showUploadDialog('image', 'add.P_picpath3', '')">            </td>
          </tr>
          <tr class="hidden"> 
            <td height="25" align=right>供应商：</td>
            <td height="25" colspan="1"><input type=text name="g_id" size=50  value="<%=#@~^BwAAAA==K|ombN,YgIAAA==^#~@%>"> 
            </td>
          </tr>
          <tr> 
            <td height="380" colspan="2"> <input type="hidden" name="Remark" value="<%=#@~^JQAAAA==dD-DctYsVUmKNn`DDrhvw{"n:mD3*'EPr#AQ0AAA==^#~@%>" >
              备注说明 
              <iframe ID="eWebEditor1" src="../HtmlEditor/ewebeditor.htm?id=Remark&style=" frameborder=1 scrolling=no width="100%" height="400">            </iframe>			 </td>
			 </td>
          </tr>
          <tr class="hidden"> 
            <td height="25" align=right>库存量：</td>
            <td height="25" colspan="1"><input type=text name="p_Storage" size=50  value="<%=#@~^CgAAAA==2|?OKDmo+,xAMAAA==^#~@%>"> 
            </td>
          </tr>
          <tr class="hidden"> 
            <td height="25" align=right>产地：</td>
            <td height="25" colspan="1"><input type=text name="p_ProducingArea" size=50  value="<%=#@~^EAAAAA==2|n.KN!mk	oz.+mPEwYAAA==^#~@%>"> 
            </td>
          </tr>
          <tr class="hidden"> 
            <td height="25" align=right>零售货币：</td>
            <td height="25" colspan="1"><input type=text name="p_RetailMoney" size=50  value="<%=#@~^DgAAAA==2|InDlbVHKxzPWAUAAA==^#~@%>"> 
            </td>
          </tr>
          <tr class="hidden"> 
            <td height="25" align=right>单位：</td>
            <td height="25" colspan="1"><input type=text name="p_Unit" size=50  value="<%=#@~^BwAAAA==2|jUbY,jwIAAA==^#~@%>"> 
            </td>
          </tr>
          <tr> 
            <td align=right><font color="#FF0000">*</font>产品推荐程度：</td>
            <td><select name="onTop" size=1  class=fstyle>
                <option value="0">不推荐</option>
                <option value="1">推荐1</option>
                <option value="2">推荐2</option>
                <option value="3">推荐3</option>
                <option value="4">推荐4</option>
                <option value="5">推荐5</option>
                <option value="6">推荐6</option>
                <option value="7">推荐7</option>
                <option value="8">推荐8</option>
                <option value="9">推荐9</option>
              </select>
              推荐产品列表是排在最前面 </td>
          </tr>
          <tr class="hidden"> 
            <td align=right><font color="#FF0000">*</font>是否通过审核：</td>
            <td><select name="Is_Check" size=1>
                <option value="">-请选择-</option>
                <option value="1">审核有效</option>
                <option value="0">待审核</option>
              </select> </td>
          </tr>
          <tr class="hidden"> 
            <td align=right><font color="#FF0000">*</font>网站语言：</td>
            <td align="center"><input name="mypublic" type="checkbox" value="English" checked>
              English; 
              <input name="mypublic" type="checkbox" value="简体中文" checked>
              简体中文 (该产品需要出现在哪个版面)</td>
          </tr>
          <tr class="hidden"> 
            <td align=right><span class=fstyle>录入人员：</span></td>
            <td> <%=#@~^GgAAAA==d/dbW	`JVEdY|jd+MM.G!wJ*rAkAAA==^#~@%><%=#@~^GQAAAA==d/dbW	`JVEdY|jd+M1ChJ#IAkAAA==^#~@%> &nbsp; <input name="UserName" type="hidden" value="<%=#@~^GQAAAA==d/dbW	`JVEdY|jd+M1ChJ#IAkAAA==^#~@%>" ></td>
          </tr>
        </table>
		      </td>
            </tr>
          </table>
          
        <table border=0 cellpadding=0 width=100% cellspacing=1>
        </table>
<div align=center>
<input type=submit value="提交"  name=B1>
          &nbsp;&nbsp; 
<input type=reset value="重填" name=B2>
</div>
</form>
<%#@~^CAAAAA==~x[,k6PZgIAAA==^#~@%>
<!--# inc lude file file="incRight.asp"--> 
</body>
</html>
<%#@~^GQAAAA==@#@&?nDP1Wx	',HWDtrxT@#@&XAYAAA==^#~@%>

