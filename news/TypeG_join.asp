<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--#include file="../inc/check.asp" -->
<%
table="News_TypeGroup"

if request.form("addedit_subed")="true" then 
'���ύ��

	editid=request.form("editid")
	TypeG_Name=Request.Form("TypeG_Name")
	TypeG_Code=Request.Form("TypeG_Code")
	TypeG_Remark=Request.Form("TypeG_Remark")
	'Input_IP=Request.ServerVariables("REMOTE_ADDR")
	at_document=Request.Form("at_document")

	
	'����������֤
	'outcheck(CheckValue(Type_Name,,,1,"�������"))
	'outcheck(CheckValue(TypeGID,,,1,"�����"))

		'��ֹ��������Ϣ�߼�****************
		set rs_test=Server.CreateObject("ADODB.RECORDSET")
		rs_test.Open "select count(*) as counter from " & table & " where TypeG_Code='" & TypeG_Code & "'",conn
		if  rs_test("counter")>0 and TypeG_Code<>"" then
			Response.Write "<script language=JavaScript1.1>alert('���������ż����ڣ������ظ�!');history.back(-1);</script>" 
			Response.End
		end if
		'************************************	
	if editid="" then	'���״̬


		'���ʱʹ�õ��ֶ�
		field1=array("TypeG_Name","TypeG_Code","TypeG_Remark","at_document")
		value1=array(TypeG_Name,TypeG_Code,TypeG_Remark,at_document)

		for i=0 to ubound(field1)
			value1(i)=replace(value1(i),"'","''")
		next
		
		sql = "INSERT INTO " & table & " (" & Join(field1, ",") & ") VALUES ('" & Join(value1, "','") & "')"
		word="�����Ϣ�ѳɹ�����!"
	else	'�༭״̬

		'�༭ʱʹ�õ��ֶ�
		field1=array("TypeG_Name","TypeG_Code","TypeG_Remark","at_document")
		value1=array(TypeG_Name,TypeG_Code,TypeG_Remark,at_document)

		sql="UPDATE " & table & " SET "
		for i=0 to ubound(field1)
			sql = sql & field1(i) & "='" & replace(value1(i),"'","''") & "'" 
			if i <> ubound(field1) then
				sql=sql & "," 
			else
				sql=sql & " where typeGid=" & editid 
			end if	
		next
		word="�����Ϣ�ѳɹ��޸�!"
	end if 
'response.Write(sql)
'response.End()
	conn.Execute sql

else
'����ҳ��ʱ(���ύ)
	editid=request("editid")
	if editid<>"" then '�༭״̬
		set rs1=Server.CreateObject("ADODB.RECORDSET")
		rs1.Open "select * from " & table & " where typeGid =" & editid ,conn
		if rs1.EOF then
			reURL=Request.ServerVariables("HTTP_REFERER") 'ȡ��ǰһҳ��URL
			Response.Write "<script language=JavaScript1.1>alert(' �ü�¼������,����ȷ���룡');/*history.back(-1); ����ǰҳ*/" 
			Response.Write " document.location='"& reURL&"';</script>" '�Զ�ˢ��ǰһҳ
		else
		TypeGID=rs1("TypeGID")			
		TypeG_Name=Rs1("TypeG_Name")
		TypeG_Code=Rs1("TypeG_Code")
		TypeG_Remark=Rs1("TypeG_Remark")
		at_document=Rs1("at_document")  '�����ļ�Ŀ¼��

		end if
           Rs1.Close()
           Set Rs1 = Nothing

	else	'���״̬
		TypeG_Name=""
		TypeG_Code=""
		TypeG_Remark=""
		at_document=""
	end if

end if

%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../inc/style.css">
<title><%= Application("This_Site_Name") %></title>

<% if request.form("addedit_subed")<>"true" then '********************* %>
<script language="JavaScript" src="../inc/check.js"></script>
<script LANGUAGE="javascript">
<!--
function add_onsubmit(add) {
//�ͻ�����֤
//if (!checkvalue(add.Input_Name,0,0,1,"�û���")) return false;

//-->
</SCRIPT>
<% end if '************************************************* %>
<link href="../inc/style-Text.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="#FFFFFF"  text="#000000" leftmargin="0" topmargin="0">
<!--#include file="incLeft.asp"-->

<% if request.form("addedit_subed")="true" then %>

<center><% '=word %></center>
<%reURL=Request("reURL") 'ȡ��ǰһҳ��URL
if(reURL="") then
	reURL=Request.ServerVariables("HTTP_REFERER") 'ȡ��ǰһҳ��URL
end if
Response.Write "<script language=JavaScript1.1>alert(' "& word &" ');/*history.back(-1); ����ǰҳ*/" 
Response.Write " document.location='"& reURL&"';</script>" '�Զ�ˢ��ǰһҳ
%>
<% else %>

<form method=POST  name=add LANGUAGE=javascript onsubmit="return add_onsubmit(this)">
<input type=hidden name="addedit_subed" value="true">
<input type=hidden name=editid value="<% =editid %>">
<input type=hidden name=reURL value="<% =Request.ServerVariables("HTTP_REFERER") %>">
<div align=center>
                <table width="100%" border="0" cellspacing="1" cellpadding="0">
                  
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
</table>
                <table border=0 cellpadding=0 width=435 cellspacing=1>
                  <tr align="center"> 
                    <td height="40" colspan="2"><font size="+1"><b class="CSS-text1">���������</b></font></td>
                  </tr>
                  <tr> 
                    <td align=right>Ŀ���ļ��У�</td>
                    <td><input type=text name="at_document" size=20   value="<% =at_document %>"></td>
                  </tr>
                  <tr> 
                    <td width=208 align=right>��������ƣ�</td>
                    <td width=359><input type=text name="TypeG_Name" size=20   value="<% =TypeG_Name %>">
                      * </td>
                  </tr>
                  <tr> 
                    <td width=208 align=right>�������ţ�</td>
                    <td width=359><input type=text name="TypeG_Code" size=20   value="<% =TypeG_Code%>"> 
                    </td>
                  </tr>
                  <tr> 
                    <td width=208 align=right>��ע˵����</td>
                    <td width=359><textarea name="TypeG_Remark" cols="20" rows="4"><% =TypeG_Remark  %></textarea> 
                    </td>
                  </tr>
                </table>
</div>
<div align=center>
<input type=submit value="�ύ"  name=B1 >
                &nbsp; 
                <input type=reset value="����" name=B2 >
                &nbsp;&nbsp;<a href="javaScript:history.back(-1)" >����ǰҳ</a></div>
</form>
<% end if %>
<!--#include file="incRight.asp"--> 
</body>
</html>
<%
Set conn= Nothing
%>

