<%@LANGUAGE="VBScript.EnCODE" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--#include file="../inc/check.asp" -->
<%
table="News_Types"

if request.form("addedit_subed")="true" then 
'���ύ��

	editid=request.form("editid")
	c_Code=Cstr(Request.Form("c_Code1"))&Cstr(Request.Form("c_Code2"))
	c_Name=Request.Form("c_Name")
	c_Remark=Request.Form("c_Remark")

	
	'����������֤
	'outcheck(CheckValue(gc_Homepage,,,1,"��˾��ҳ"))

	' ��ֹ��������Ϣ�߼�****************
		set rs_test=Server.CreateObject("ADODB.RECORDSET")
		test_sql="select count(*) as counter from " & table & " WHERE c_Code='" & c_Code & "' "
		if editid <>"" then
		test_sql=test_sql & "AND cid <> "&editid
		end if
		'response.Write(test_sql)
		'response.End
		rs_test.Open test_sql,conn
		if  rs_test("counter")>0 then
			Response.Write "<script language=JavaScript1.1>alert('�ô��ż�����!');history.back(-1);" 
  			' Response.Write " document.location='" 
  			Response.Write "</script>"
		end if
		'************************************
	if editid="" then	'���״̬
		
		'���ʱʹ�õ��ֶ�
		field1=array("c_Code","c_Name","c_Remark")
		value1=array(c_Code,c_Name,c_Remark)

		for i=0 to ubound(field1)
			value1(i)=replace(value1(i),"'","''")
		next
		
		sql = "INSERT INTO " & table & " (" & Join(field1, ",") & ") VALUES ('" & Join(value1, "','") & "')"
		word="�����Ϣ�ѳɹ�����!"
	else	'�༭״̬

		'�༭ʱʹ�õ��ֶ�
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
		word="�����Ϣ�ѳɹ��޸�!"
	end if 
	conn.Execute sql

else
'����ҳ��ʱ(���ύ)
	editid=request("editid")
	if editid<>"" then '�༭״̬
		set rs1=Server.CreateObject("ADODB.RECORDSET")
		rs1.Open "select * from " & table & " where cid =" & editid ,conn
		
      if rs1.EOF then 
  Response.Write "<script language=JavaScript1.1>alert('�ü�¼������!');history.back(-1);" 
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

	else	'���״̬
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
//�ͻ�����֤
//if (!checkvalue(add.c_name,0,8,1+32,"����")) return false;
if (!checkvalue(add.c_code2,3,3,33,"����")) return false;

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
<%reURL=Request.ServerVariables("HTTP_REFERER") 'ȡ��ǰһҳ��URL
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
        <td align=right >�������ƣ�</td>
        <td><input type=text name="c_name" size=40   value="<%=c_name %>">
          * </td>
      </tr>
      <tr> 
        <td align=right >�ϼ����</td>
        <td><select name="c_code1">
            <option value="">���ϼ�</option>
            <%call OutOptionList3(conn,"product_class","c_Code","c_Name",c_code1," WHERE Is_Del=0 ")%>
          </select>
          * </td>
      </tr>
      <tr> 
        <td align=right >�����ţ�</td>
        <td> <input type=text name="c_code2" size=3   value="<%=c_code2  %>">
          ��д 000-999��������λ��*</td>
      </tr>
      <tr> 
        <td width=208 align=right >��ע��</td>
        <td width=359><textarea name="c_Remark" cols="40" ><%=c_Remark  %>
</textarea> 
        </td>
      </tr>
    </table>
</div>
<div align=center>
<input type=submit value="�ύ"  name=B1 >
<input type=reset value="����" name=B2 >
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

