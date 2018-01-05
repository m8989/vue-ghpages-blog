<%@LANGUAGE="VBScript.EnCODE" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--#include file="../inc/check.asp" -->

<%
'Type_Name="最新新闻"
'Edit_It= CheckMight(Type_Name,"Edit_It") '检查权限要在设置了Type_Name(模块名)值以后才可以运行
table = "News_Types"

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../inc/style.css">
<title><%= This_Site_Name %></title>
<link href="../inc/style.css" rel="stylesheet" type="text/css">
<link href="../inc/style-Text.css" rel="stylesheet" type="text/css">
</head>

<body topmargin="0" leftmargin="0">
<!--# inc lude file file="incLeft.asp"-->
<table width="450" border="1" align="center" class="body_table">
  <tr>
    <td>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td align="center" class="CSS-Text1"><b>类别管理</b></td>
  </tr>
</table>
<!--类别条件-->
<!--#include file="in_type_select.asp" -->
  <%
search = ""

if trim(request("code_no"))<>"" then
   	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
			search = search & " c_code like '" &trim(request("code_no"))& "%' "
end if

sql="select * from " & table & search & " order by c_Code,c_Name"
'请参考下面代码排序
'sql="select * from " & table & search & " order by dtime DESC"
'response.write sql
'response.end

set rs=Server.CreateObject("ADODB.recordset")
rs.CursorType = 3
rs.Open sql,conn

rs.PageSize =20 '每页记录条数 
result_num=rs.RecordCount '记录总数

if result_num<=0 then
	if search="" then
		word="目前还没有记录!"
	else	
		word="没有查到符合条件的记录!"
	end if	
else
	maxpage=rs.PageCount 
	page=request("page")
	
	if Not IsNumeric(page) or page="" then
		page=1
	else
		page=cint(page)
	end if
	
	if page<1 then
		page=1
	elseif  page>maxpage then
		page=maxpage
	end if

	rs.AbsolutePage=Page
end if
%>
  <% if result_num<=0 then %>
</p>
<center>
  <br>
  <br>
  <%=word %>
</center>
<%'Response.Write "<script language=JavaScript1.1>alert(' "& word  &" ');history.back(-1);</script>" %>
<% else %>
<form action="type_del.asp" method="get" name="Form1" id="Form1" >
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <% for i=1 to result_num %>
          <tr> 
              <td>&nbsp;&nbsp;</td>
			  <td>
			  <%for j=6 to len(rs("c_code")) step 3 %>
        <font size="+0">│</font> 
        <% next %>
        <font size="+0">├</font>
<input name="ID" type="checkbox"  value="<%=rs("cID")%>" >
                  <a href="Type_join.asp?editid=<%=rs("cID")%>" title="<%=rs("c_Name")%>&nbsp;(<%=rs("c_Code")%>)">
				  <%=rs("c_Name")%>&nbsp;(<%=rs("c_Code")%>)</a>
                  <%if rs("Is_Del")=true then%>
                 <font color="#FF0000">(己删除)</font>
                 <%end if%>
               </td>
			   <td>&nbsp;&nbsp;</td>
          </tr>
		  <%  rs.MoveNext
			if rs.EOF then Exit For
			next
			%>
			<tr align="center"> 
            <td colspan="3"><hr> &nbsp; 
              
              <input name="add_type" type="button"  value="新增" onClick="add_one_type(this.form)">
                          &nbsp;<%'if Del_It=true  then %> 
                          <input name="CMD" type="submit" id="CMD" value="删除"> &nbsp; <input name="CMD" type="submit" id="CMD" value="恢复"> 
              &nbsp; 
              <%'end if %>
              <%'if Check_All=true  then %>
              &nbsp; <input name="CMD" type="submit" id="CMD" onClick="return window.confirm('彻底删除后不可恢复，你真的要删除吗？')" value="彻底删除"> 
              <%'end if %>
              &nbsp;
              <input name="reset" type="reset" id="reset" value="重置"> </td>
          </tr>
        </table>
      </form>

<% 'call LastNextPage(maxpage,page,"width=100% ","<p  align=center class=font2>") %>
<% end if %>
</td>
  </tr>
</table>
<!--# inc lude file file="incRight.asp"-->
</body>
</html>
<%
Rs.Close()
Set Rs = Nothing
Set conn= Nothing
%>
<script language="JavaScript">
<!--
function CheckAll(form)
  {　/*使用时在表单中插入<input type="checkbox" name="chkall" value="on" onclick="CheckAll(this.form)"><font color="#CC3366" >选中该页所有记录</font>*/
  for (var i=0;i<form.elements.length;i++)
    {
    var e = form.elements[i];
    if (e.name != 'chkall')
       e.checked = form.chkall.checked;  
	   /*将所有记录状态改为与chkall一样,实现全选或全不选*/
    }
  }
function add_one_type(form){
	var e = form.id;
 document.forms[e].action="type_join.asp" ;
 document.forms[e].submit("type_join.asp");
}
//-->
</script>



