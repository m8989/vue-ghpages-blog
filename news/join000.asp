<%@LANGUAGE="VBSCRIPT.encode" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--#include file="../inc/check.asp" -->
<!--# inc lude file file="../inc/setDefType.asp"-->
<!--# inc lude file file="../inc/htm2ubb.asp"-->
<!--# inc lude file file="../inc/ubbcode.asp"-->
<!--# inc lude file file="../inc/func.asp"-->
<!--#include file="OptionList3.asp" -->
<%
table="news_info"
typeID=request("TypeID")
'PATHNAME = GETLISTPATH() 'ȡ���ļ������ļ�����
if request("TypeID")="" then   '����Ĭ��ֵ
	 'TypeID=setDefaultType("News_Type","News_TypeGroup")   '��setDefType.asp�ļ���setDefaultType������Ĭ�Ϸ���
	 TypeID="201"
end if 
'Type_Name=getTypeName("News_Type",TypeID)  '����typeID���type_name����
'if request("editid")<>"" then
'   if CheckMight(Type_Name,"Edit_It")<>true  then  '���Ȩ��   'Edit_It���ֶ���
'	Response.Write ("<script language=JavaScript1.1>alert(' Sorry! ����Ȩ�������� ');history.back(-1);</script>" )
'   end if
'else
'   if CheckMight(Type_Name,"Add_It")<>true  then  '���Ȩ��   'Add_It���ֶ���
'	Response.Write ("<script language=JavaScript1.1>alert(' Sorry! ����Ȩ�������� ');history.back(-1);</script>" )
'   end if
'end if
'
if request.form("addedit_subed")="true" then 
'���ύ��
	editid=request.form("editid")
'	if session("temp_Can_Checked")=true then  '�ܷ����
		Is_Check=1
'	else
'		Is_Check=0
'	end if 
	 n_body=request("Remark")  
	Input_Name=Request.Form("Input_Name")
	Input_Dept=Request.Form("Input_Dept")
	Input_Time=now()
	Input_IP=Request.ServerVariables("REMOTE_ADDR")
	TypeID=Request.Form("TypeID")
	n_Title=Request.Form("n_Title")
	Pic_Path=Request.Form("Pic")
	About_It=Request.Form("About_It")
	Click_Count=Request.Form("Click_Count")
	on_Top=Request.Form("on_Top")
	filecontentid = request("filecontentid")

	
	'����������֤
	'outcheck(CheckValue(Input_Name,,,1,"������"))
	'outcheck(CheckValue(Input_Dept,,,1,"��������"))
	outcheck(CheckValue(n_Title,1,250,1+32,"����"))
	'outcheck(CheckValue(n_body,,,1,"��������"))
	'outcheck(CheckValue(pic,,,1,"ͼƬ"))
	'outcheck(CheckValue(About_It,,,1,"�������"))
	'outcheck(CheckValue(Click_Count,,,1,"�������"))

	if editid="" then	'���״̬
		' ��ֹ��������Ϣ�߼�****************
		'set rs_test=Server.CreateObject("ADODB.RECORDSET")
		'rs_test.Open "select count(*) as counter from " & table & " where username='" & username & "'",conn
		'if  rs_test("counter")>0 then
		'	call Msgout("�û����Ѵ���, �������!","javascript:history.back()",3)
		'	Response.End
		'end if
		'************************************

		'���ʱʹ�õ��ֶ�
		field1=array("Is_Check","Input_Name","Input_Dept","Input_Time","Input_IP","TypeID","n_Title","n_body","Pic_Path","About_It","on_Top","filecontentid","document")
		value1=array(Is_Check,Input_Name,Input_Dept,Input_Time,Input_IP,TypeID,n_Title,n_body,Pic_Path,About_It,on_Top,filecontentid,PATHNAME)

		for i=0 to ubound(field1)
			if value1(i)<>"" then 
				value1SQL=value1SQL & "'"& replace(value1(i),"'","''")&"'," 
			else
				value1SQL=value1SQL &"null"&","
			end if
		next
		
		'sql = "INSERT INTO " & table & " (" & Join(field1, ",") & ") VALUES ('" & Join(value1, "','") & "')"
		sql = "INSERT INTO " & table & " (" & Join(field1, ",") & ") VALUES (" & left(value1SQL, len(value1SQL)-1) & ")"
		word="�����Ϣ�ѳɹ�����!"
	else	'�༭״̬

		'�༭ʱʹ�õ��ֶ�
		field1=array("Is_Check","Input_Name","Input_Dept","Input_Time","Input_IP","TypeID","n_Title","n_body","Pic_Path","About_It","on_Top","filecontentid")
		value1=array(Is_Check,Input_Name,Input_Dept,Input_Time,Input_IP,TypeID,n_Title,n_body,Pic_Path,About_It,on_Top,filecontentid)

		sql="UPDATE " & table & " SET "
		for i=0 to ubound(field1)
			sql = sql & field1(i) & "='" & replace(value1(i),"'","''") & "'" 
			if i <> ubound(field1) then
				sql=sql & "," 
			else
				sql=sql & " where newsID=" & editid 
			end if	
		next
		word="�����Ϣ�ѳɹ��޸�!"
	end if 
'����
'Response.Write sql
'Response.End
	conn.Execute sql

else
	Dim oFCKeditor
'����ҳ��ʱ(���ύ)
	editid=request("editid")
	if editid<>"" then '�༭״̬
	    set rs1=Server.CreateObject("ADODB.RECORDSET")
		rs1.Open "select * from " & table & " where newsID =" & editid ,conn
			
		newsID=rs1("newsID")
		typeID=rs1("typeID")
		Input_Name=rs1("Input_Name")
		Input_Dept=rs1("Input_Dept")
		Input_Time=rs1("Input_Time")
		Input_IP=rs1("Input_IP")
		n_Title=rs1("n_Title")
		n_body=rs1("n_body")
		Pic_Path=rs1("Pic_Path")
		About_It=rs1("About_It")
		Click_Count=rs1("Click_Count")
		on_Top=rs1("on_Top")
		'filecontentid = rs1("filecontentid")
'����
'Response.Write "dsfdg"
'Response.End()

           Rs1.Close()
           Set Rs1 = Nothing

	else	'���״̬
		Input_Name=session("temp_UserName")
		Input_Dept=session("temp_My_Dept")
		Input_Time=now()
		'Type_name=Request("Type_name")
	
		n_Title="�ڴ��������"
		n_body=" "
		Pic_Path=""
		About_It=""
		Click_Count="0"

	end if

end if
%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../inc/Adminstyle.css">
<title><%= This_Site_Name %></title>
<% if request.form("addedit_subed")<>"true" then '********************* %>
<%page_onload="onload='page_onload()'"%>
<script language="JavaScript" src="../inc/check.js"></script>
<script LANGUAGE="javascript">
<!--
function add_onsubmit(add) {

//�ͻ�����֤
//if (!checkvalue(add.Input_Name,0,0,1,"������")) return false;
//if (!checkvalue(add.Input_Dept,0,0,1,"��������")) return false;
//if (!checkvalue(add.Type_name,0,0,1,"����")) return false;
if (!checkvalue(add.n_Title,0,0,1,"����")) return false;
if (!checkvalue(add.Remark,1,5000000,33,"��������")) return false;
//if (!checkvalue(add.Pic_Path,0,0,1,"ͼƬ")) return false;
//if (!checkvalue(add.About_It,0,0,1,"�������")) return false;
//if (!checkvalue(add.Click_Count,0,0,1,"�������")) return false;

//����
//  if (editor.EditMode.checked==true)
//	  document.add.Remark.value=editor.HtmlEdit.document.body.innerText;
 // else
//	  document.add.Remark.value=editor.HtmlEdit.document.body.innerHTML; 
}

function page_onload(){
//���õ�ѡ�򡢶�ѡ�������˵���ֵ
SetSelectedAndChecked(add.TypeID,"<% Response.Write HtmlOut(TypeID)  %>");
//SetSelectedAndChecked(add.Is_Check,"<% Response.Write HtmlOut(Is_Check)  %>"); 


 loadForm();
}

function loadForm()
{
  setTimeout('intHtmlEdit()',2000);
  return true
}
function intHtmlEdit()
{
  //editor.HtmlEdit.document.body.innerHTML=document.add.p_Remark.value;
 // if (editor.EditMode.checked==true)
//	  editor.HtmlEdit.document.body.innerText=document.add.Remark.value;
//  else
//	  editor.HtmlEdit.document.body.innerHTML=document.add.Remark.value; 
  return true
}

//-->
</SCRIPT>
<% end if '************************************************* %>
<style type="text/css">
<!--
-->
</style>
</head>

<body bgcolor="#FFFFFF"  text="#000000" leftmargin="0" topmargin="0" <%=page_onload%>>
<!--# inc lude file file="incLeft.asp"-->
<% if request.form("addedit_subed")="true" then %>

<!--center><% =word %></center-->
<%reURL=Request("reURL") 'ȡ��ǰһҳ��URL
if(reURL="") then
	reURL=Request.ServerVariables("HTTP_REFERER") 'ȡ��ǰһҳ��URL
end if
Response.Write "<script language=JavaScript1.1>alert(' "& word &" ');/*history.back(-1); ����ǰҳ*/" 
Response.Write " document.location='"& reURL&"';</script>" '�Զ�ˢ��ǰһҳ
%>
<% else %>

<form method=POST  name=add LANGUAGE=javascript onsubmit="return add_onsubmit(this)">
<%for i=0 to 49%><TEXTAREA rows=2 cols=20 name=content<%=i%> style="DISPLAY: none" ></TEXTAREA><%next%>
<input type=hidden name="addedit_subed" value="true">
<input type=hidden name=editid value="<% =editid %>">
<input type=hidden name=reURL value="<% =Request.ServerVariables("HTTP_REFERER") %>">
<div align=center>
<table width="90%" border="0" cellspacing="1" cellpadding="0">
  <tr>
                    <td height="54" align="center" valign="middle"><H3>����  <% =HtmlOut(Type_name)  %></h3></td>
  </tr>
</table>

                  
    <table border=0 cellpadding=0 width=100% cellspacing=1 bgcolor="#CCCCCC">
      <tr> 
        <td width=15% height="25" align=center bgcolor=#F8F9FD><p><span class=fstyle>�����ߣ�</span></p></td>
        <td width=35% height="25" bgcolor="#FFFFFF"> <% =Input_Dept%> <% =Input_Name %>
		<input name="Input_Name" type="hidden"  value="<% =Input_Name %>"> 
          <input name="Input_Dept" type="hidden"  value="<% =Input_Dept %>"> 
        </td>
        <td width=15% height="25" align="center" bgcolor="#F8F9FD">ʱ�䣺</td>
        <td height="25" bgcolor="#FFFFFF"><input type=text name="Input_Time" size=16 class=fstyle  value="<% =HtmlOut(Input_Time)  %>"> 
          <input name="Type_Name" type="hidden" value="<% =HtmlOut(Type_name)  %>"></td>
      </tr>
      <tr> 
        <td width=15% height="25" align=center bgcolor=#F8F9FD>���ŷ��ࣺ</td>
        <td height="25" colspan="3" bgcolor="#FFFFFF">
		<select name="TypeID">
                <%call OutOptionList3(conn,"News_Types","c_Code","c_Name",TypeID,"")%>
              </select>
	  	</td>
      <tr> 
        <td width=15% height="25" align=center bgcolor=#F8F9FD>���⣺</td>
        <td height="25" colspan="3" bgcolor="#FFFFFF"><input type=text name="n_Title" size=44 class=fstyle  value="<% =HtmlOut(n_Title)  %>"> 
        </td>
      </tr>
      <tr> 
        <td height="25" colspan="4" align=center bgcolor=#F8F9FD>�������ݣ�<BR>
		   <input type="hidden" name="Remark" value="<%=HtmlOut(trim(n_Body)&" ")%>">
              <iframe ID="editor" src="../HtmlEditor/HtmlEditor.asp?id=Remark&style=" frameborder=1 scrolling=no width="100%" height="400"> 
            </iframe>
		</td>
      </tr>
      <tr> 
        <td width=15% height="25" align=center bgcolor=#F8F9FD>ͼƬ·����</td>
        <td height="25" colspan="3" bgcolor="#FFFFFF"><input type=text name="pic" size=44 class=fstyle  value="<% =HtmlOut(Pic_Path)  %>">
          &nbsp;(��URL)</td>
      </tr>
	  <tr bgcolor="#FFFFFF"> 
            <td height="25" align=right>�ϴ�ͼƬ��</td>
        <td height="25" colspan="21"> <iframe class="TBGen" style="top:2px" ID="UploadFiles" src="../HtmlEdit/upload2.htm" frameborder=0 scrolling=no width="250" height="25"></iframe></td>
      </tr>
      <tr> 
        <td width=15% height="25" align=center bgcolor=#F8F9FD>������Դ��</td>
        <td height="25" colspan="3" bgcolor="#FFFFFF"><input type=text name="About_It" size=44 class=fstyle  value="<% =HtmlOut(About_It&" ")  %>">
          (��URL) </td>
      </tr>
<tr> 
                      <td width=208 align=right bgcolor=#65C7E0>�Ƽ����ţ�</td>
        <td width=359><select name="on_Top" size=1  class=fstyle>
                          <option value="0">���Ƽ�</option>
                          <option value="1">�Ƽ�</option>
                        </select>
          ������ǰ</td>
                    </tr>    </table>
</div>
<div align=center><br>

<input type=submit value="�ύ"  name=B1 class=fstyle >
<!--input type=submit value="�ύ"  name=B1 class=fstyle onClick="spilt_long_str(this.value)"-->
&nbsp;&nbsp;&nbsp; 
<input type=reset value="����" name=B2 class=fstyle>
</div>
</form>
<% end if %>
<!--# inc lude file file="incRight.asp"-->    
</body>
</html>
<%
Set conn= Nothing
%>
