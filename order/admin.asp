<%@LANGUAGE="VBScript.Encode" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp"-->
<!--#include file="../inc/tools.asp"-->
<!--#include file="../inc/check.asp"-->
<%
dim id
id=request("id")

set rs=server.createobject("adodb.recordset")
sql="select * from Product_Order where id="&id
rs.open sql,conn,1,1
%>
<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">
<title>订购信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
a:visited    { color: #306898; font-family: Arial; text-decoration: underline }
a:active     { color: #FF6600; font-family: Arial; text-decoration: none }
a:hover      { color: #FF6600; text-decoration: none }
body         { color: #000000; font-size: 10pt; line-height: 12pt; font-family: Arial }
th           { font-size: 10pt; line-height: 12pt }
td           { font-size: 10pt; line-height: 12pt }
a.1:link     { font-family: Arial; text-decoration: none; color: silver }
a.1:visited  { font-family: Arial; text-decoration: none; color: silver }
a.1:hover    { font-family: Arial; text-decoration: none; color: white }
a.2:link     { font-family: Arial; text-decoration: none; color: #000000 }
a.2:visited  { font-family: Arial; text-decoration: none; color: #000000 }
a.2:hover    { font-family: Arial; text-decoration: none; color: silver }
a.3:link     { font-family: Arial; text-decoration: none; color: white }
a.3:visited  { font-family: Arial; text-decoration: none; color: white }
a.3:hover    { font-family: Arial; text-decoration: none; color: #d0ccd0 }
.line        { line-height: 10pt }
.il          { line-height: 12pt }
.form        { font-size: 9pt }
.btn         { font-size: 9pt; height: 21; border-style: ridge; border-width: 1 }
.text        { font-family: Arial; font-size: 9pt; border: 1 solid #707070 }
body         { scrollbar-face-color: #D8D4C8; scrollbar-highlight-color: #D8D4C8; 
               scrollbar-shadow-color: #D8D4C8; scrollbar-3dlight-color: 
               #ffffff; scrollbar-arrow-color: blcak; scrollbar-track-color: 
               #E9EDEF; scrollbar-darkshadow-color: #888484 }
</style>
</head>
<body marginheight="0" marginwidth="0" rightmargin="0" topmargin="0" leftmargin="0" bgcolor="#FFFFFF" text="#000000">
<div align="center">
<table border="1" cellpadding="0" cellspacing="0" width="750" height="584" bgcolor="#FFFFFF" background="../images/bg/page_line.gif">
<tr>
<td width="750" height="30" colspan="4">此客户加入时间：<%=rs("dt")%>&nbsp;&nbsp;&nbsp;(下表是该客户详细情况)</td>
</tr>
<tr align="center" valign="middle">
<td width="100" height="25" align="center">产品名称：</td>
<td width="650" height="25"><font color="#000000"><%=rs("productID")%></font></td>
</tr>
<tr>
<td width="100" height="25" align="center">联系人姓名：</td>
<td width="650" height="25"><font color="#000000"><%=rs("user")%></font></td>
</tr>
<tr>
<td width="100" height="25" align="center">E-mail：</td>
<td width="650" height="25"><font color="#000000"><%=rs("email")%></font></td>
</tr>
<tr>
<td width="100" height="25" align="center">OICQ：</td>
<td width="650" height="25"><font color="#000000"><%=rs("oicq")%></font></td>
</tr>
<tr>
<td width="100" height="25" align="center">公司名称：</td>
<td width="650" height="25"><font color="#000000"><%=rs("corp")%></font></td>
</tr>
<tr>
<td width="100" height="25" align="center">URL：</td>
<td width="650" height="25"><font color="#000000"><%=rs("url")%></font></td>
</tr>
<tr>
<td width="100" height="25" align="center">Tel：</td>
<td width="650" height="25"><font color="#000000"><%=rs("tel")%></font></td>
</tr>
<tr>
<td width="100" height="25" align="center">Address：</td>
<td width="650" height="25"><font color="#000000"><%=rs("add")%></font></td>
</tr>
<tr>
<td width="100" height="98" align="center">Memo：</td>
<td width="650" height="98"><font color="#000000"><%=rs("memo")%></font></td>
</tr>
</table>
</div>
</body>
<%
rs.close
set rs=nothing
conn.close
set conn=nothing
%>

</html>
