<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--#include file="../inc/check.asp" -->
<%
table="News_TypeGroup"

if request.form("addedit_subed")="true" then 
'表单提交后

	editid=request.form("editid")
	TypeG_Name=Request.Form("TypeG_Name")
	TypeG_Code=Request.Form("TypeG_Code")
	TypeG_Remark=Request.Form("TypeG_Remark")
	'Input_IP=Request.ServerVariables("REMOTE_ADDR")
	at_document=Request.Form("at_document")

	
	'服务器端验证
	'outcheck(CheckValue(Type_Name,,,1,"类别名称"))
	'outcheck(CheckValue(TypeGID,,,1,"类别组"))

		'防止二义性信息逻辑****************
		set rs_test=Server.CreateObject("ADODB.RECORDSET")
		rs_test.Open "select count(*) as counter from " & table & " where TypeG_Code='" & TypeG_Code & "'",conn
		if  rs_test("counter")>0 and TypeG_Code<>"" then
			Response.Write "<script language=JavaScript1.1>alert('该类别组代号己存在，不能重复!');history.back(-1);</script>" 
			Response.End
		end if
		'************************************	
	if editid="" then	'添加状态


		'添加时使用的字段
		field1=array("TypeG_Name","TypeG_Code","TypeG_Remark","at_document")
		value1=array(TypeG_Name,TypeG_Code,TypeG_Remark,at_document)

		for i=0 to ubound(field1)
			value1(i)=replace(value1(i),"'","''")
		next
		
		sql = "INSERT INTO " & table & " (" & Join(field1, ",") & ") VALUES ('" & Join(value1, "','") & "')"
		word="你的信息已成功加入!"
	else	'编辑状态

		'编辑时使用的字段
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
		word="你的信息已成功修改!"
	end if 
'response.Write(sql)
'response.End()
	conn.Execute sql

else
'进入页面时(非提交)
	editid=request("editid")
	if editid<>"" then '编辑状态
		set rs1=Server.CreateObject("ADODB.RECORDSET")
		rs1.Open "select * from " & table & " where typeGid =" & editid ,conn
		if rs1.EOF then
			reURL=Request.ServerVariables("HTTP_REFERER") '取得前一页的URL
			Response.Write "<script language=JavaScript1.1>alert(' 该记录不存在,请正确输入！');/*history.back(-1); 返回前页*/" 
			Response.Write " document.location='"& reURL&"';</script>" '自动刷新前一页
		else
		TypeGID=rs1("TypeGID")			
		TypeG_Name=Rs1("TypeG_Name")
		TypeG_Code=Rs1("TypeG_Code")
		TypeG_Remark=Rs1("TypeG_Remark")
		at_document=Rs1("at_document")  '所在文件目录名

		end if
           Rs1.Close()
           Set Rs1 = Nothing

	else	'添加状态
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
//客户端验证
//if (!checkvalue(add.Input_Name,0,0,1,"用户名")) return false;

//-->
</SCRIPT>
<% end if '************************************************* %>
<link href="../inc/style-Text.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="#FFFFFF"  text="#000000" leftmargin="0" topmargin="0">
<!--#include file="incLeft.asp"-->

<% if request.form("addedit_subed")="true" then %>

<center><% '=word %></center>
<%reURL=Request("reURL") '取得前一页的URL
if(reURL="") then
	reURL=Request.ServerVariables("HTTP_REFERER") '取得前一页的URL
end if
Response.Write "<script language=JavaScript1.1>alert(' "& word &" ');/*history.back(-1); 返回前页*/" 
Response.Write " document.location='"& reURL&"';</script>" '自动刷新前一页
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
                    <td height="40" colspan="2"><font size="+1"><b class="CSS-text1">增新类别组</b></font></td>
                  </tr>
                  <tr> 
                    <td align=right>目标文件夹：</td>
                    <td><input type=text name="at_document" size=20   value="<% =at_document %>"></td>
                  </tr>
                  <tr> 
                    <td width=208 align=right>类别组名称：</td>
                    <td width=359><input type=text name="TypeG_Name" size=20   value="<% =TypeG_Name %>">
                      * </td>
                  </tr>
                  <tr> 
                    <td width=208 align=right>类别组代号：</td>
                    <td width=359><input type=text name="TypeG_Code" size=20   value="<% =TypeG_Code%>"> 
                    </td>
                  </tr>
                  <tr> 
                    <td width=208 align=right>备注说明：</td>
                    <td width=359><textarea name="TypeG_Remark" cols="20" rows="4"><% =TypeG_Remark  %></textarea> 
                    </td>
                  </tr>
                </table>
</div>
<div align=center>
<input type=submit value="提交"  name=B1 >
                &nbsp; 
                <input type=reset value="重填" name=B2 >
                &nbsp;&nbsp;<a href="javaScript:history.back(-1)" >返回前页</a></div>
</form>
<% end if %>
<!--#include file="incRight.asp"--> 
</body>
</html>
<%
Set conn= Nothing
%>

