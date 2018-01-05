<%@LANGUAGE="VBScript.Encode" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--#include file="../inc/func2.asp" -->
<!--#include file="../news/in_About.asp" -->
<html>
<head>
<title><%=This_Site_Name%></title>
<meta http-equiv="Content-Type" content="text/html;">
</head>
<body bgcolor="#ffffff" leftmargin="0" rightmargin="0" topmargin="0" bottommargin="0">
<table border="0" cellpadding="0" cellspacing="0" width="1004">
  <tr>
   <td><!--#include file="top.asp" --></td>
  </tr>
  <tr>
   <td><table align="left" border="0" cellpadding="0" cellspacing="0" width="1004">
	  <tr>
	   <td valign="top" background="../images/zb_r7_c1.jpg"><!--#include file="left.asp" --></td>
	   <td width="641" height="420" valign="top" bgcolor="#FFFFFF" align="center">
	     <table width="95%"  border="0" cellspacing="0" cellpadding="0">
           <tr>
             <td height="98%" valign="top"><br><% getAbout("AboutUs") %></td>
           </tr>
         </table></td>
	   <td width="216" height="420" background="../images/yb.jpg"></td>
	  </tr>
	</table></td>
  </tr>
  <tr>
   <td><!--#include file="wb.asp" --></td>
  </tr>
</table>
</body>
</html>
