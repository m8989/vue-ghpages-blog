<%@LANGUAGE="VBScript.Encode" CODEPAGE="936"%>
<!--#include file="e_product_list.vb.asp" -->
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/toolsEn.asp" -->
<!--#include file="../news/in_About.asp" -->
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
	   <table align="left" border="0" cellpadding="0" cellspacing="0" width="777" height="100%">
		  <tr>
		   <td height="22" bgcolor="#FFFFFF"></td>
		  </tr>
		  <tr>
		    <td><img name="cp" src="../images/cp.jpg" width="511" height="33" border="0" alt=""></td>
		  </tr>
		  <tr>
		   <td height="90%" bgcolor="#FFFFFF" valign="top"><%call show_list()%></td>
		  </tr>
		</table></td>
	   <td valign="top"></td>
	  </tr>
	</table></td>
  </tr>
  <tr>
   <td><!--#include file="../en/wb.asp" --></td>
  </tr>
</table>
</body>
</html>
