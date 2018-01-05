<%@LANGUAGE="VBSCRIPT.Encode" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--#include file="../inc/check.asp" -->
<html>
<head>
<title>后台管理专区</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../inc/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.t1 {
	filter: Glow(Color=#FF0000, Strength=5);
}
-->
</style>
</head>
<base target="mainFrame">
<body topmargin="5" leftmargin="0" style="background-color:#ffffff;">
<br>
<br>

<table width="120" height="80%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr> 
    <td align="center" class="t1">后台管理专区</td>
  </tr>
  <tr> 
    <td align="center">&nbsp;</td>
  </tr>
  <tr> 
    <td align="center"><a href="../admin/SiteConfig.asp">网站信息管理</a></td>
  </tr>
  <tr> 
    <td align="center"><a href="../news/joinAbout.asp">独立网页管理</a></td>
  </tr>
	<%
'	for i=0 to ubound(AboutType)
'		Response.Write "<tr><td nowrap  align='center'><a href=""../news/joinAbout.asp?About="& server.URLEncode(AboutType(i))&""">"&AboutType(i)&"</a></td></tr>"&vbCrlf
'	Next
	%>
  <tr> 
    <td align="center">&nbsp;</td>
  </tr>
  <tr> 
    <td align="center"><a href="../product/product_manage.asp">管理商品</a></td>
  </tr>  <tr> 
    <td align="center"><a href="../product/type_manage.asp">管理商品分类</a></td>
  </tr>
  <!--<tr> 
    <td align="center"><a href="../order/List.asp">在线订单(留言)</a></td>
  </tr> 因本系统前台未设该栏目,所以将该栏目隐藏!-->
  <tr> 
    <td align="center">&nbsp;</td>
  </tr>
  <tr> 
    <td align="center"><a href="../news/manage.asp">管理新闻</a></td>
  </tr>
  <tr> 
    <td align="center"><a href="../news/Type_manage.asp">管理新闻分类</a></td>
  </tr>
  <tr> 
    <td align="center">&nbsp;</td>
  </tr>
  <tr> 
    <td align="center"><a href="../index.asp" target="_blank">返回首页</a></td>
  </tr>
  <tr> 
    <td align="center"><a href="logout.asp" target="_top">退出</a></td>
  </tr>
  <tr> 
    <td align="center"><a href="chpwd.asp?editID=<%= session("temp_ID")%>">修改密码</a></td>
  </tr>
  <tr> 
    <td align="center">&nbsp;</td>
  </tr>
</table>
<p>&nbsp; </p>
<!--
<table width="90%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td>
	session("Checked")<%=	session("Checked")%><br>
session("temp_UserName")<%= session("temp_UserName")%><br>
session("temp_ID")<%= session("temp_ID")%><br>
session("temp_Company")<%= session("temp_Company")%><br>
session("temp_My_Group") = <%=session("temp_My_Group") %><br>
session("Is_Admin")<%= session("Is_Admin")%><br>
	</td>
  </tr>
</table>
-->
</body>
</html>


