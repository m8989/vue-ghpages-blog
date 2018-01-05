<%@LANGUAGE="VBSCRIPT.encode" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--# inc lude file file="../inc/check.asp" -->
<%

table="News_Types"
TypeID=Request("ID")
DelYes=Request("DelYes")
CMD=Request("CMD")
if CMD="删除" then 
   txt="Is_Del = 1"
end if
if CMD="恢复" then 
   txt="Is_Del =0 "
end if
if CMD="通过审核" then 
   txt="Is_Check = 1"
end if
if CMD="彻底删除" then 
   DelYes=1
end if
   
IF  Application("This_Del_Yes")= 1  OR DelYes=1 Then
conn.execute "DELETE FROM " & table & " WHERE cID in (" &  TypeID & ")"   
'从数据库中删除
word="信息已从数据库中成功删除!  不可再恢复！！！ "
else
conn.execute "UPDATE " & table & " SET "&txt&"  WHERE cID in (" &  TypeID & ")"
'只做删除标记，不真的从数据库中删除！ '0未删除 1己删除
word="操作成功! !"
end if
%>
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../inc/style.css">
<title><%= This_Site_Name %></title>
</HEAD>
<body leftmargin="0" topmargin="0" bgcolor="#FFFFFF">
<!--# inc lude file file="incLeft.asp"-->
<DIV align=center></DIV>
<%reURL=Request.ServerVariables("HTTP_REFERER") '取得前一页的URL并自动刷新
Response.Write "<script language=JavaScript1.1>alert(' "& word &" ');/*history.back(-1);*/" 
Response.Write " document.location='"& reURL&"';</script>"
%>
<!--# inc lude file file="incRight.asp"-->    
</BODY>
</HTML>


