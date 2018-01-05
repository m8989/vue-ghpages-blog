<%@LANGUAGE="VBScript.EnCODE" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--#include file="../inc/check.asp" -->
<%
table="News_Types"

if request.form("addedit_subed")="true" then 
'表单提交后

	editid=request.form("editid")
	c_Code=Cstr(Request.Form("c_Code1"))&Cstr(Request.Form("c_Code2"))
	c_Name=Request.Form("c_Name")
	c_Remark=Request.Form("c_Remark")

	
	'服务器端验证
	'outcheck(CheckValue(gc_Homepage,,,1,"公司网页"))

	' 防止二义性信息逻辑****************
		set rs_test=Server.CreateObject("ADODB.RECORDSET")
		test_sql="select count(*) as counter from " & table & " WHERE c_Code='" & c_Code & "' "
		if editid <>"" then
		test_sql=test_sql & "AND cid <> "&editid
		end if
		'response.Write(test_sql)
		'response.End
		rs_test.Open test_sql,conn
		if  rs_test("counter")>0 then
			Response.Write "<script language=JavaScript1.1>alert('该代号己存在!');history.back(-1);" 
  			' Response.Write " document.location='" 
  			Response.Write "</script>"
		end if
		'************************************
	if editid="" then	'添加状态
		
		'添加时使用的字段
		field1=array("c_Code","c_Name","c_Remark")
		value1=array(c_Code,c_Name,c_Remark)

		for i=0 to ubound(field1)
			value1(i)=replace(value1(i),"'","''")
		next
		
		sql = "INSERT INTO " & table & " (" & Join(field1, ",") & ") VALUES ('" & Join(value1, "','") & "')"
		word="你的信息已成功加入!"
	else	'编辑状态

		'编辑时使用的字段
		field1=array("c_Code","c_Name","c_Remark")
		value1=array(c_Code,c_Name,c_Remark)
		
		sql="UPDATE " & table & " SET "
		for i=0 to ubound(field1)
			sql = sql & field1(i) & "='" & replace(value1(i),"'","''") & "'" 
			if i <> ubound(field1) then
				sql=sql & "," 
			else
				sql=sql & " where cid=" & editid 
			end if	
		next
		word="你的信息已成功修改!"
	end if 
	conn.Execute sql

else
'进入页面时(非提交)
	editid=request("editid")
	if editid<>"" then '编辑状态
		set rs1=Server.CreateObject("ADODB.RECORDSET")
		rs1.Open "select * from " & table & " where cid =" & editid ,conn
		
      if rs1.EOF then 
  Response.Write "<script language=JavaScript1.1>alert('该记录不存在!');history.back(-1);" 
  ' Response.Write " document.location='" 
  Response.Write "</script>"
  response.end
       end if	
		cid=rs1("cid")
		c_Code1=left(rs1("c_Code"),len(trim(rs1("c_Code")))-3 )
		c_Code2=right(rs1("c_Code"),3 )
		c_name=rs1("c_name")
		c_Remark=rs1("c_Remark")

           Rs1.Close()
           Set Rs1 = Nothing

	else	'添加状态
		dept_Code1=""
  		dept_Code2=""

		c_Name=""
		c_Remark=""
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
//if (!checkvalue(add.c_name,0,8,1+32,"名称")) return false;
if (!checkvalue(add.c_code2,3,3,33,"代号")) return false;

}
//-->
</SCRIPT>
<% end if '************************************************* %>
</head>

<body bgcolor="#FFFFFF"  text="#000000" leftmargin="0" topmargin="0">
<!--# inc lude file file="incLeft.asp"-->
<table width="450" border="1" align="center" class="body_table">
  <tr>
    <td>
<% if request.form("addedit_subed")="true" then %>

<center><%' =word %></center>
<%reURL=Request.ServerVariables("HTTP_REFERER") '取得前一页的URL
Response.Write "<script language=JavaScript1.1>alert(' "& word &" ');history.back(-2); " 
Response.Write "</script>" 
%>
<% else %>

<form method=POST  name=add LANGUAGE=javascript onsubmit="return add_onsubmit(this)">
<input type=hidden name="addedit_subed" value="true">
<input type=hidden name=editid value="<%=editid %>">
<div align=center><table width="100%" border="0" cellspacing="1" cellpadding="0">
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
</table>
<!--#include file="OptionList3.asp" -->
    <table border=0 cellpadding=0 width=435 cellspacing=1>
      <tr> 
        <td align=right >分类名称：</td>
        <td><input type=text name="c_name" size=40   value="<%=c_name %>">
          * </td>
      </tr>
      <tr> 
        <td align=right >上级类别：</td>
        <td><select name="c_code1">
            <option value="">最上级</option>
            <%call OutOptionList3(conn,"product_class","c_Code","c_Name",c_code1," WHERE Is_Del=0 ")%>
          </select>
          * </td>
      </tr>
      <tr> 
        <td align=right >类别代号：</td>
        <td> <input type=text name="c_code2" size=3   value="<%=c_code2  %>">
          填写 000-999的任意三位数*</td>
      </tr>
      <tr> 
        <td width=208 align=right >附注：</td>
        <td width=359><textarea name="c_Remark" cols="40" ><%=c_Remark  %>
</textarea> 
        </td>
      </tr>
    </table>
</div>
<div align=center>
<input type=submit value="提交"  name=B1 >
<input type=reset value="重填" name=B2 >
</div>
</form>
<% end if %>
</td>
  </tr>
</table>
<!--# inc lude file file="incRight.asp"--> 
</body>
</html>
<%
Set conn= Nothing
%>

