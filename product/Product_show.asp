<%@LANGUAGE="VBScript.Encode" CODEPAGE="936"%>
<!--#include file="product_list.vb.asp" -->
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--#include file="../news/in_About.asp" -->
<%

table="Product_list"

PID=request("PID")
set rs=Server.CreateObject("ADODB.RECORDSET")
rs.Open "select * from " & table & " where PID =" & PID ,conn

PID=rs("PID")
p_Code=rs("p_Code")
p_name=rs("p_name")
p_ename=rs("p_ename")
p_oldno=rs("p_oldno")
p_picType=rs("p_picType")
p_class=rs("p_class")
p_CostPrice=rs("p_CostPrice")
p_RetailPrice=rs("p_RetailPrice")
p_RetailExplain=rs("p_RetailExplain")
p_Spec=rs("p_Spec")
p_Area=rs("p_Area")
P_picpath=rs("P_picpath")
P_picpath2=rs("P_picpath2")
P_picpath3=rs("P_picpath3")
g_id=rs("g_id")
p_Remark=rs("p_Remark")
p_Storage=rs("p_Storage")
mydept=rs("mydept")
p_ProducingArea=rs("p_ProducingArea")
p_RetailMoney=rs("p_RetailMoney")
p_Unit=rs("p_Unit")
mypublic=rs("mypublic")
Is_Del=rs("Is_Del")
Is_Check=rs("Is_Check")
Is_Display=rs("Is_Display")
%>
<html>
<head>
<title><%=This_Site_Name%></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body bgcolor="#ffffff" leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0">
<table border="0" cellpadding="0" cellspacing="0" width="1004">
  <tr>
   <td><!--#include file="../en/top.asp" --></td>
  </tr>
  <tr>
   <td><table align="left" border="0" cellpadding="0" cellspacing="0" width="1004">
	  <tr>
	   <td width="20" height="474" bgcolor="#FFFFFF">&nbsp;</td>
	   <td valign="top"><!--#include file="../en/left.asp" --></td>
	   <td width="10" height="474" bgcolor="#FFFFFF"></td>
	   <td valign="top">
	   <table align="left" border="0" cellpadding="0" cellspacing="0" width="511" height="100%">
		  <tr>
		   <td width="511" height="22" bgcolor="#FFFFFF"></td>
		  </tr>
		  <tr>
		    <td><img name="cp" src="../images/cp.jpg" width="511" height="33" border="0" alt=""></td>
		  </tr>
		  <tr>
		   <td width="511" height="90%" bgcolor="#FFFFFF" valign="top"><TABLE WIDTH=500 BORDER=0 CELLPADDING=0 CELLSPACING=0 bgcolor="#FFFFFF">
   <tr>
     <td align="center" valign="top" class="heise10"><br><%if(P_picpath<>"") then Response.Write "<img border=1 src='"&P_picpath&"'>"%><br><br><!--此行显示产品图片-->
	 Product Name:<%=p_Code%><br><!--此行显示产品名称-->
	 product type:<%=P_name%><br><!--此行显示产品规格--></td>
   </tr>
      <tr>
     <td valign="top"></td>
   </tr>
      <tr>
     <td valign="top" class="heise10"><%=P_Remark%><br><!--此行显示备注内容--></td>
   </tr>
</table></td>
		  </tr>
		</table></td>
	   <td valign="top"><!--#include file="../en/left.asp" --></td>
	  </tr>
	</table></td>
  </tr>
  <tr>
   <td><!--#include file="../en/wb.asp" --></td>
  </tr>
</table>
</body>
</html>
