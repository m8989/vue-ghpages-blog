<%@LANGUAGE="VBScript.Encode" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--# inc lude file file="../inc/check.asp" -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../inc/style.css">
<title><%=#@~^HwAAAA==~zw2^k1lYbW	cJ:tr/|?rO{1mh+r#PtQoAAA==^#~@%></title>

<%#@~^SAAAAA==~b0~M+$E+kYcWWM:cJmN[n9kY|dE(+Nrb@!@*rYMEnJ~O4+UPEMeCeMMCeeMMCeMeCMCeMCP9hMAAA==^#~@%>
<script language="JavaScript" src="../inc/check.js"></script>
<script LANGUAGE="javascript">
<!--

function add_onsubmit(add) {
	//if (!checkvalue(add.p_Code,0,0,1,"商品编号")) return false;
//if (!checkvalue(add.p_name,0,0,1,"商品名称")) return false;
//if (!checkvalue(add.p_ename,0,0,1,"英文名称")) return false;
//if (!checkvalue(add.p_oldno,0,0,1,"供应商编号")) return false;
//if (!checkvalue(add.p_picType,0,0,1,"图片读取方式")) return false;
//if (!checkvalue(add.p_class,0,0,1,"类别")) return false;
//if (!checkvalue(add.p_CostPrice,0,0,1,"成本价")) return false;
//if (!checkvalue(add.p_RetailPrice,0,0,1,"零售价")) return false;
//if (!checkvalue(add.p_RetailExplain,0,0,1,"价格说明")) return false;
//if (!checkvalue(add.p_Spec,0,0,1,"规格")) return false;
//if (!checkvalue(add.p_Area,0,0,1,"适用范围")) return false;
//if (!checkvalue(add.P_picpath,0,0,1,"图片路径")) return false;
//if (!checkvalue(add.g_id,0,0,1,"供应商")) return false;
//if (!checkvalue(add.p_Remark,0,0,1,"备注")) return false;
//if (!checkvalue(add.p_Storage,0,0,1,"库存量")) return false;
//if (!checkvalue(add.mydept,0,0,1,"所属部门")) return false;
//if (!checkvalue(add.p_ProducingArea,0,0,1,"产地")) return false;
//if (!checkvalue(add.p_RetailMoney,0,0,1,"零售价币种")) return false;
//if (!checkvalue(add.p_Unit,0,0,1,"单位")) return false;
//if (!checkvalue(add.mypublic,0,0,1,"在内部公开")) return false;
//if (!checkvalue(add.Is_Del,0,0,1,"删除标记")) return false;
//if (!checkvalue(add.Is_Check,0,0,1,"审核标记")) return false;
//if (!checkvalue(add.Is_Display,0,0,1,"显示标记")) return false;

}
//-->
</SCRIPT>
<%#@~^OwAAAA==~x[,k6PBCeCMeCeMeCeMMCeeCMeCeeCMMeCeCeMeMMCeMeCMeCeMMCeeM~twoAAA==^#~@%>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0">
<!--#include file="incLeft.asp"-->


<form method=GET action=Product_list.asp name=add LANGUAGE=javascript onsubmit="return add_onsubmit(this)">
<div align=center>
<table border=0 cellpadding=0 width=435 cellspacing=1>

<tr><td width=208 align=right bgcolor=#D2D8BE><span class=fstyle>商品编号：</span></td>
<td width=359><input type=text name="p_Code" size=20 class=fstyle  value="">
</td></tr><tr><td width=208 align=right bgcolor=#D2D8BE><span class=fstyle>商品名称：</span></td>
<td width=359><input type=text name="p_name" size=20 class=fstyle  value="">
</td></tr><tr><td width=208 align=right bgcolor=#D2D8BE><span class=fstyle>成本价：</span></td>
<td width=359><input type=text name="p_CostPrice" size=20 class=fstyle  value="">
</td></tr><tr><td width=208 align=right bgcolor=#D2D8BE><span class=fstyle>零售价：</span></td>
<td width=359><input type=text name="p_RetailPrice" size=20 class=fstyle  value="">
</td></tr><tr><td width=208 align=right bgcolor=#D2D8BE><span class=fstyle>删除标记：</span></td>
<td width=359><input type=text name="Is_Del" size=20 class=fstyle  value="">
</td></tr><tr><td width=208 align=right bgcolor=#D2D8BE><span class=fstyle>审核标记：</span></td>
<td width=359><input type=text name="Is_Check" size=20 class=fstyle  value="">
</td></tr><tr><td width=208 align=right bgcolor=#D2D8BE><span class=fstyle>显示标记：</span></td>
<td width=359><input type=text name="Is_Display" size=20 class=fstyle  value="">
</td></tr>

</table>
</div>
<div align=center>
<input type=submit value="提交"  name=B1 class=fstyle>
<input type=reset value="重填" name=B2 class=fstyle>
</div>
</form>
<!--#include file="incRight.asp"-->  
</body>
</html>

