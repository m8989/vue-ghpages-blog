<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--# inc lude file file="../inc/tools.asp" -->
<!--# inc lude file file="../inc/check.asp" -->
<%

table="News_TypeGroup"
TypeGID=Request("TypeGID")
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
   
IF  (Application("This_Del_Yes")= 1  OR DelYes=1 ) AND (CMD="ɾ��" or CMD="����ɾ��") Then
conn.execute "DELETE FROM " & table & " WHERE TypeGID in (" &  TypeGID & ")"   
'�����ݿ���ɾ�������
word="��Ϣ�Ѵ����ݿ��гɹ�ɾ��!  �����ٻָ������� "
conn.execute "DELETE FROM photo_type WHERE TypeGID in (" &  TypeGID & ")"   
'�����ݿ���ɾ�������
word=word & "\n����������¼�����Ҳһ��ɾ�������� "
else
conn.execute "UPDATE " & table & " SET "&txt&"  WHERE TypeGID in (" &  TypeGID & ")"
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


