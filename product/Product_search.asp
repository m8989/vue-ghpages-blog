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
	//if (!checkvalue(add.p_Code,0,0,1,"��Ʒ���")) return false;
//if (!checkvalue(add.p_name,0,0,1,"��Ʒ����")) return false;
//if (!checkvalue(add.p_ename,0,0,1,"Ӣ������")) return false;
//if (!checkvalue(add.p_oldno,0,0,1,"��Ӧ�̱��")) return false;
//if (!checkvalue(add.p_picType,0,0,1,"ͼƬ��ȡ��ʽ")) return false;
//if (!checkvalue(add.p_class,0,0,1,"���")) return false;
//if (!checkvalue(add.p_CostPrice,0,0,1,"�ɱ���")) return false;
//if (!checkvalue(add.p_RetailPrice,0,0,1,"���ۼ�")) return false;
//if (!checkvalue(add.p_RetailExplain,0,0,1,"�۸�˵��")) return false;
//if (!checkvalue(add.p_Spec,0,0,1,"���")) return false;
//if (!checkvalue(add.p_Area,0,0,1,"���÷�Χ")) return false;
//if (!checkvalue(add.P_picpath,0,0,1,"ͼƬ·��")) return false;
//if (!checkvalue(add.g_id,0,0,1,"��Ӧ��")) return false;
//if (!checkvalue(add.p_Remark,0,0,1,"��ע")) return false;
//if (!checkvalue(add.p_Storage,0,0,1,"�����")) return false;
//if (!checkvalue(add.mydept,0,0,1,"��������")) return false;
//if (!checkvalue(add.p_ProducingArea,0,0,1,"����")) return false;
//if (!checkvalue(add.p_RetailMoney,0,0,1,"���ۼ۱���")) return false;
//if (!checkvalue(add.p_Unit,0,0,1,"��λ")) return false;
//if (!checkvalue(add.mypublic,0,0,1,"���ڲ�����")) return false;
//if (!checkvalue(add.Is_Del,0,0,1,"ɾ�����")) return false;
//if (!checkvalue(add.Is_Check,0,0,1,"��˱��")) return false;
//if (!checkvalue(add.Is_Display,0,0,1,"��ʾ���")) return false;

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

<tr><td width=208 align=right bgcolor=#D2D8BE><span class=fstyle>��Ʒ��ţ�</span></td>
<td width=359><input type=text name="p_Code" size=20 class=fstyle  value="">
</td></tr><tr><td width=208 align=right bgcolor=#D2D8BE><span class=fstyle>��Ʒ���ƣ�</span></td>
<td width=359><input type=text name="p_name" size=20 class=fstyle  value="">
</td></tr><tr><td width=208 align=right bgcolor=#D2D8BE><span class=fstyle>�ɱ��ۣ�</span></td>
<td width=359><input type=text name="p_CostPrice" size=20 class=fstyle  value="">
</td></tr><tr><td width=208 align=right bgcolor=#D2D8BE><span class=fstyle>���ۼۣ�</span></td>
<td width=359><input type=text name="p_RetailPrice" size=20 class=fstyle  value="">
</td></tr><tr><td width=208 align=right bgcolor=#D2D8BE><span class=fstyle>ɾ����ǣ�</span></td>
<td width=359><input type=text name="Is_Del" size=20 class=fstyle  value="">
</td></tr><tr><td width=208 align=right bgcolor=#D2D8BE><span class=fstyle>��˱�ǣ�</span></td>
<td width=359><input type=text name="Is_Check" size=20 class=fstyle  value="">
</td></tr><tr><td width=208 align=right bgcolor=#D2D8BE><span class=fstyle>��ʾ��ǣ�</span></td>
<td width=359><input type=text name="Is_Display" size=20 class=fstyle  value="">
</td></tr>

</table>
</div>
<div align=center>
<input type=submit value="�ύ"  name=B1 class=fstyle>
<input type=reset value="����" name=B2 class=fstyle>
</div>
</form>
<!--#include file="incRight.asp"-->  
</body>
</html>

