<%@LANGUAGE="VBScript.EnCODE" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--# inc lude file file="../inc/check.asp" -->

<%
table = "News_Types"
code_1=trim(request("code_1"))
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../inc/style.css">
<title><%= This_Site_Name %></title>
<link href="../inc/style-Text.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="#FFFFFF" topmargin="0" leftmargin="0">
<!--# inc lude file file="incLeft.asp"-->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td align="center" class="CSS-Text1"><b>商 品 分 类</b></td>
  </tr>
</table>
  <%
search = " WHERE Is_Del=0 "

if trim(request("code_1"))<>"" then
   	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " c_code like '" &trim(request("code_1"))& "___' "
else
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " c_code like '___' "   '只读取第一级分类
end if

sql="select * from " & table & search & " order by c_Code,c_Name"
'请参考下面代码排序
'sql="select * from " & table & search & " order by dtime DESC"
'response.write sql
'response.end

set rs=Server.CreateObject("ADODB.recordset")
rs.CursorType = 3
'response.write sql
'response.end
rs.Open sql,conn

rs.PageSize =20 '每页记录条数 
result_num=rs.RecordCount '记录总数

if result_num<=0 then
	if code_1="" then
		word="目前还没有记录!"
	else	
		word="己经到最下级分类了!"
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
<form action="Dept_del.asp" method="get" name="Form1" id="Form1" >
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <%if trim(request("code_1"))<>"" then%>
		  <tr> 
              <td>&nbsp;&nbsp;</td>
			  <td>&nbsp;&nbsp;</td>
      		  <td><a href="<%= Request.ServerVariables("SCRIPT_NAME")%>?code_1=<%=Left(code_1,len(code_1)-3 )%>">  &lt;&lt;......</a></td>   
      		  <td><a href="<%= Request.ServerVariables("SCRIPT_NAME")%>?code_1=<%=Left(code_1,len(code_1)-3 )%>">回上级分类</a>&nbsp;</td>
          </tr>
		  <%end if %>
		<% for i=1 to result_num %>
		  <tr> 
              <td>&nbsp;&nbsp;</td>
			  <td width="20"><%'=rs("c_Code")%>&nbsp;</td>
			  <td>
			  <a href="Type_List.asp?code_1=<%=rs("c_code")%>" title="单击查看<%=rs("c_Name")%>&nbsp;(<%=rs("c_Code")%>)下级分类">
				  <%=rs("c_Name")%>&nbsp;</a>
               </td>
			   
      <td><a href="Product_list.asp?p_class=<%=rs("c_Code")%>">看 该类商品</a>&nbsp;</td>
          </tr>
		  <%  rs.MoveNext
			if rs.EOF then Exit For
			next
			%>
        </table>
      </form>

<% 'call LastNextPage(maxpage,page,"width=100% ","<p  align=center class=font2>") %>
<% end if %>
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



