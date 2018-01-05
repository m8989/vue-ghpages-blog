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
'加入  关于我们/默认首页/公司简介/组织机构/成长历程/联系我们/认证证书  等到新闻表里，并且不被删除
'AboutType=Split("关于我们/默认首页/公司简介/组织机构/成长历程/联系我们/认证证书","/")
About=Trim(request("About")&" ")
If About="" Then 
	About=AboutType(0)
End if
table="news_info"
typeID=request("TypeID")
	 TypeID="900"
'Type_Name=getTypeName("News_Type",TypeID)  '根据typeID查出type_name名字
'if request("editid")<>"" then
'   if CheckMight(Type_Name,"Edit_It")<>true  then  '检查权限   'Edit_It是字段名
'	Response.Write ("<script language=JavaScript1.1>alert(' Sorry! 您无权操作！！ ');history.back(-1);</script>" )
'   end if
'else
'   if CheckMight(Type_Name,"Add_It")<>true  then  '检查权限   'Add_It是字段名
'	Response.Write ("<script language=JavaScript1.1>alert(' Sorry! 您无权操作！！ ');history.back(-1);</script>" )
'   end if
'end if
'
if request.form("addedit_subed")="true" then 
'表单提交后
	editid=request.form("editid")
'	if session("temp_Can_Checked")=true then  '能否免检
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
	OnTop=Request.Form("OnTop")
	filecontentid = request("filecontentid")

	
	'服务器端验证
	'outcheck(CheckValue(Input_Name,,,1,"操作者"))
	'outcheck(CheckValue(Input_Dept,,,1,"操作部门"))
	outcheck(CheckValue(n_Title,1,250,1+32,"标题"))
	'outcheck(CheckValue(n_body,,,1,"具体内容"))
	'outcheck(CheckValue(pic,,,1,"图片"))
	'outcheck(CheckValue(About_It,,,1,"相关资料"))
	'outcheck(CheckValue(Click_Count,,,1,"点击计数"))

	if editid="" then	'添加状态
		' 防止二义性信息逻辑****************
		'set rs_test=Server.CreateObject("ADODB.RECORDSET")
		'rs_test.Open "select count(*) as counter from " & table & " where username='" & username & "'",conn
		'if  rs_test("counter")>0 then
		'	call Msgout("用户名已存在, 不能添加!","javascript:history.back()",3)
		'	Response.End
		'end if
		'************************************

		'添加时使用的字段
		field1=array("Is_Check","Input_Name","Input_Dept","Input_Time","Input_IP","TypeID","n_Title","n_body","Pic_Path","About_It","OnTop","IsSystem")
		value1=array(Is_Check,Input_Name,Input_Dept,Input_Time,Input_IP,"900",n_Title,n_body,Pic_Path,About_It,OnTop,1)

		for i=0 to ubound(field1)
			if value1(i)<>"" then 
				value1SQL=value1SQL & "'"& replace(value1(i),"'","''")&"'," 
			else
				value1SQL=value1SQL &"null"&","
			end if
		next
		
		'sql = "INSERT INTO " & table & " (" & Join(field1, ",") & ") VALUES ('" & Join(value1, "','") & "')"
		sql = "INSERT INTO " & table & " (" & Join(field1, ",") & ") VALUES (" & left(value1SQL, len(value1SQL)-1) & ")"
		word="你的信息已成功加入!"
	else	'编辑状态

		'编辑时使用的字段
		field1=array("Is_Check","Input_Name","Input_Dept","Input_Time","Input_IP","TypeID","n_Title","n_body","Pic_Path","About_It","OnTop")
		value1=array(Is_Check,Input_Name,Input_Dept,Input_Time,Input_IP,TypeID,n_Title,n_body,Pic_Path,About_It,OnTop)

		sql="UPDATE " & table & " SET "
		for i=0 to ubound(field1)
			sql = sql & field1(i) & "='" & replace(value1(i),"'","''") & "'" 
			if i <> ubound(field1) then
				sql=sql & "," 
			else
				sql=sql & " where newsID=" & editid 
			end if	
		next
		word="你的信息已成功修改!"
	end if 
'测试
'Response.Write sql
'Response.End
	conn.Execute sql

else
	Dim oFCKeditor
'进入页面时(非提交)
	    set rs1=Server.CreateObject("ADODB.RECORDSET")
		rs1.Open "select top 1 * from " & table & " where n_Title ='"& About &"'"  ,conn
		If  Not rs1.EOF then
			editid=rs1("newsID")
			newsID=rs1("newsID")
			typeID=rs1("typeID")
			Input_Name=rs1("Input_Name")
			Input_Dept=rs1("Input_Dept")
			Input_Time=rs1("Input_Time")
			Input_IP=rs1("Input_IP")
			n_Title=rs1("n_Title")
			n_body=rs1("n_body")
			If trim(n_body&" ")="" Then 
				n_body=" 这块内容可以通过后台修改它。 "
			End if
			Pic_Path=rs1("Pic_Path")
			About_It=rs1("About_It")
			Click_Count=rs1("Click_Count")
			OnTop=rs1("OnTop")
			'filecontentid = rs1("filecontentid")
			'测试
			'Response.Write "dsfdg"
			'Response.End()
		else	'添加状态
			Input_Name=session("temp_UserName")
			Input_Dept=session("temp_My_Dept")
			Input_Time=now()
			'Type_name=Request("Type_name")
		
			n_Title=About '标题必须是这个
			n_body=" 这块内容可以通过后台修改。 "
			Pic_Path=""
			About_It=""
			Click_Count="0"

		end if
           Rs1.Close()
           Set Rs1 = Nothing

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

//客户端验证
//if (!checkvalue(add.Input_Name,0,0,1,"操作者")) return false;
//if (!checkvalue(add.Input_Dept,0,0,1,"操作部门")) return false;
//if (!checkvalue(add.Type_name,0,0,1,"分类")) return false;
if (!checkvalue(add.n_Title,0,0,1,"标题")) return false;
if (!checkvalue(add.Remark,1,5000000,33,"具体内容")) return false;
//if (!checkvalue(add.Pic_Path,0,0,1,"图片")) return false;
//if (!checkvalue(add.About_It,0,0,1,"相关资料")) return false;
//if (!checkvalue(add.Click_Count,0,0,1,"点击计数")) return false;

//内容
  if (editor.EditMode.checked==true)
	  document.add.Remark.value=editor.HtmlEdit.document.body.innerText;
  else
	  document.add.Remark.value=editor.HtmlEdit.document.body.innerHTML; 
}

function page_onload(){
//设置单选框、多选框、下拉菜单的值
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
  return true
}

//-->
</SCRIPT>
<script type="text/javascript">
// 参数说明
// s_Type : 文件类型，可用值为"image","flash","media","file"
// s_Link : 文件上传后，用于接收上传文件路径文件名的表单名
// s_Thumbnail : 文件上传后，用于接收上传图片时所产生的缩略图文件的路径文件名的表单名，当未生成缩略图时，返回空值，原图用s_Link参数接收，此参数专用于缩略图
function showUploadDialog(s_Type, s_LinkID_SavePathFileName, s_LinkID_SaveFileName){
	var s_ID="eWebEditor1";//编辑器的名称(因为知道这页已经有了一个编辑器，所以直接用，否则要创建一个)
	//EWEBeditor_Create("editor", "coolblue");

	var editor = document.getElementById(s_ID).contentWindow;
	editor.openUploadDialog(s_Type, 1, s_LinkID_SavePathFileName, s_LinkID_SaveFileName, '', 1);
	/*
	参数说明： 
	s_Type: 上传文件类型，可用值为"image","flash","media","file"
		image: 图片
		media: 媒体
		flash: Flash
		file: 附件

	s_Mode: 上传接口对话框模式
		0:常规模式
		1:常规设置+单文件上传
		2:常规设置+多文件上传(默认)

	s_LinkID_SavePathFileName : 文件上传后，用于接收上传文件路径文件名的表单名，返回包含路径的文件名
	s_LinkID_SaveFileName : 返回上传文件的文件名
	s_LinkID_OriginalFileName : 返回原文件名

	s_ReturnFlag : 返回值方式标志
		1: 输入框始终只有最后一次上传的文件名
		2: (默认)支持多个文件，多个上传或多次操作后，输入框中保留多个文件，多个文件如“|”分隔。
	*/
}

function eWebEditorPopUp(style, field, width, height) {
	window.open("../HtmlEditor/popup.htm?style=popup&link="+field, "", "width="+width+",height="+height+",toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no");
}

//创建一个编辑器实例，只用于上传接口，所以此处是隐藏的
function EWEBeditor_Create(s_ID, s_Style){
	document.write('<input type="hidden" name="'+s_ID+'" value="">'
		+'<iframe id="'+s_ID+'__Iframe" src="../HtmlEditor/ewebeditor.htm?id='+s_ID+'&style='+s_Style+'" width=0 height=0 style="display:none" frameborder="0" scrolling="no"></iframe>');
}
</script>
<% end if '************************************************* %>
<style type="text/css">
<!--
-->
</style>
</head>

<body bgcolor="#FFFFFF"  text="#000000" leftmargin="0" topmargin="0" <%=page_onload%>
<!--# inc lude file file="incLeft.asp"-->
<br />
<table width="100%" border="1">
   <tr align="center">
	<%
	for i=0 to ubound(AboutType)
		Response.Write "<td nowrap  align='center'><a href=""?About="& server.URLEncode(AboutType(i))&""">"&AboutType(i)&"</a></td>"&vbCrlf
	Next
	%>
	</tr>
</table>

<% if request.form("addedit_subed")="true" then %>

<!--center><% =word %></center-->
<%reURL=Request("reURL") '取得前一页的URL
if(reURL="") then
	reURL=Request.ServerVariables("HTTP_REFERER") '取得前一页的URL
end if
Response.Write "<script language=JavaScript1.1>alert(' "& word &" ');/*history.back(-1); 返回前页*/" 
Response.Write " document.location='"& reURL&"';</script>" '自动刷新前一页
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
                    <td height="54" align="center" valign="middle"><H3>修改  <% =HtmlOut(About)  %></h3></td>
  </tr>
</table>

                  
    <table border=0 cellpadding=0 width=100% cellspacing=1 bgcolor="#CCCCCC">
      <tr style='display: none;'> 
        <td width=15% height="25" align=center bgcolor=#F8F9FD><p><span class=fstyle>操作者：</span></p></td>
        <td width=35% height="25" bgcolor="#FFFFFF"> <% =Input_Dept%> <% =Input_Name %>
		<input name="Input_Name" type="hidden"  value="<% =Input_Name %>"> 
          <input name="Input_Dept" type="hidden"  value="<% =Input_Dept %>"> 
        </td>
        <td width=15% height="25" align="center" bgcolor="#F8F9FD">时间：</td>
        <td height="25" bgcolor="#FFFFFF"><input type=text name="Input_Time" size=16 class=fstyle  value="<% =HtmlOut(Input_Time)  %>"> 
          <input name="Type_Name" type="hidden" value="<% =HtmlOut(Type_name)  %>"></td>
      </tr>
      <tr style='display: none;'> 
        <td width=15% height="25" align=center bgcolor=#F8F9FD>新闻分类：</td>
        <td height="25" colspan="3" bgcolor="#FFFFFF">
		<input  name="TypeID"  type="hidden" value="<% =typeID%>">
	  	</td>
      <tr style='display: none;'> 
        <td width=15% height="25" align=center bgcolor=#F8F9FD>标题：</td>
        <td height="25" colspan="3" bgcolor="#FFFFFF"><input type=text name="n_Title" size=44 class=fstyle  value="<% =HtmlOut(n_Title)  %>"> 
        </td>
      </tr>
      <tr>
        <td height="40" colspan="4" align=center bgcolor="#FFFFFF" class="bkx">具体内容：<BR></td>
      </tr>
      <tr>
        <td height="25" colspan="4" align=center bgcolor=#F8F9FD><textarea style="display:none;" name="Remark"><%=Server.HtmlEncode(trim(n_Body)&" ")%>
		   </textarea>
          
          <!--iframe id="eWebEditor1" src="../HtmlEditor/ewebeditor.htm?id=Remark&style=&skin=" frameborder="0" scrolling="no" width="100%" height="350"></iframe-->
          
          <IFRAME ID="eWebEditor1" src="../HtmlEditor/ewebeditor.htm?id=Remark&style=&skin=" frameborder="0" scrolling="no" width="100%" height="350"></IFRAME></td>
      </tr>
      <tr >
        <td width=15% height="25" align=center bgcolor=#F8F9FD>栏目图片路径：</td>
        <td height="25" colspan="3" bgcolor="#FFFFFF"><input type=text name="pic" id="add_pic" size=44 class=fstyle  value="<% =HtmlOut(Pic_Path)  %>">
          &nbsp;(填URL)
		  <input type="button" value="上传图片..." onclick="showUploadDialog('image', 'add_pic', '')"></td>
      </tr>
      <tr  style='display: none;'> 
        <td width=15% height="25" align=center bgcolor=#F8F9FD>资料来源：</td>
        <td height="25" colspan="3" bgcolor="#FFFFFF"><input type=text name="About_It" size=44 class=fstyle  value="<% =HtmlOut(About_It&" ")  %>">
          (填URL) </td>
      </tr>
	<tr style='display: none;'> 
       <td width=208 align=right bgcolor=#65C7E0 Class="hidden">推荐新闻：</td>
        <td width=359><select name="OnTop" size=1  class=fstyle>
                          <option value="0">不推荐</option>
                          <option value="1">推荐</option>
                        </select>
          排名靠前</td>
                    </tr>    </table>
</div>
<div align=center><br>

<input type=submit value="提交"  name=B1 class=fstyle >
<!--input type=submit value="提交"  name=B1 class=fstyle onClick="spilt_long_str(this.value)"-->
&nbsp;&nbsp;&nbsp; 
<input type=reset value="重填" name=B2 class=fstyle>
</div>
</form>
<% end if %>
<!--# inc lude file file="incRight.asp"-->    
</body>
</html>
<%
Set conn= Nothing
%>
