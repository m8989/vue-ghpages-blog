<%@LANGUAGE="VBSCRIPT.encode" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--# inc lude file file="../inc/check.asp" -->
<%

table="News_Types"
TypeID=Request("ID")
DelYes=Request("DelYes")
CMD=Request("CMD")
if CMD="ɾ��" then 
   txt="Is_Del = 1"
end if
if CMD="�ָ�" then 
   txt="Is_Del =0 "
end if
if CMD="ͨ�����" then 
   txt="Is_Check = 1"
end if
if CMD="����ɾ��" then 
   DelYes=1
end if
   
IF  Application("This_Del_Yes")= 1  OR DelYes=1 Then
conn.execute "DELETE FROM " & table & " WHERE cID in (" &  TypeID & ")"   
'�����ݿ���ɾ��
word="��Ϣ�Ѵ����ݿ��гɹ�ɾ��!  �����ٻָ������� "
else
conn.execute "UPDATE " & table & " SET "&txt&"  WHERE cID in (" &  TypeID & ")"
'ֻ��ɾ����ǣ�����Ĵ����ݿ���ɾ���� '0δɾ�� 1��ɾ��
word="�����ɹ�! !"
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
<%reURL=Request.ServerVariables("HTTP_REFERER") 'ȡ��ǰһҳ��URL���Զ�ˢ��
Response.Write "<script language=JavaScript1.1>alert(' "& word &" ');/*history.back(-1);*/" 
Response.Write " document.location='"& reURL&"';</script>"
%>
<!--# inc lude file file="incRight.asp"-->    
</BODY>
</HTML>


