<%@LANGUAGE="VBSCRIPT.encode" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--#include file="../inc/setDefType.asp" -->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<%
search = " WHERE Is_Display =1 AND Is_Check =1 AND Is_Del =0 "

if request("Input_Name")<>"" then
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " Input_Name = '" & request("Input_Name") & "' "
end if

if request("Input_Dept")<>"" then
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " Input_Dept = '" & request("Input_Dept") & "' "
end if

if request("TypeID")<>"" then
    TypeID=request("TypeID")
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " TypeID = " &TypeID& " "
else  '设置默认值
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " TypeID = 301"
end if

if request("n_Title")<>"" then
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " n_Title like '%" & request("n_Title") & "%' "
end if
if request("n_Body")<>"" then
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " n_Body like '%" & request("n_Body") & "%' "
end if

table="news_info"

sql="select * from " & table & search & " order by Input_Time DESC"
set rs=Server.CreateObject("ADODB.recordset")
rs.CursorType = 3
'response.write sql
'response.end
rs.Open sql,conn

rs.PageSize =15 '每页记录条数
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

<% sub show_list() %>
<script language="JavaScript" src="../inc/javaScript.js"></script>
<div id="Layer0007" align="center" style="width:183px; height:80px; z-index:1;display: none">网站程序设计:http://www.eraneed.com <br>
<a href="mailto:hiaming@163.com" title="程序作者:李宗明">程序作者:李宗明(湖南邵阳)</a></div>

<!--# inc lude file file="incLeft.asp"-->

<!--# inc lude file file="in_type_select.asp"-->
<% if result_num<=0 then %>

<center><BR><BR><% =word %><BR></center>
<%'Response.Write "<script language=JavaScript1.1>alert(' "& word  &" ');history.back(-1);</script>" %>

<% else %>	   
<form action="" method="get" name="form1">   
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
                    <td align="center"><font color="#FFFFFF">列 表</font></td>
  </tr>
</table>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CBCBCB">
		  <tr bgcolor="#B9D5F2"> 
                    <td height="20"  align=center>标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题</td>
                    <td height="20"  align=center>时&nbsp;&nbsp;间</td>
                  </tr>
				   <% for i=1 to rs.PageSize %>
                  <tr> 
                    <td height="20"  align=left bgcolor="#FFFFFF">&nbsp;<img src="../images/ball4.gif" width="11" height="11">&nbsp;&nbsp;<a href="Service_show.asp?newsID=<% =rs("newsID") %>"> 
                      <% =HtmlOut(rs("n_Title")) %>
                    </a></td>
                    <td height="20"  align=center bgcolor="#FFFFFF">                    <% =Year(rs("Input_Time"))&"/"&Month(rs("Input_Time"))&"/"&day(rs("Input_Time")) %></td>
                    <!--td  align=center><% =HtmlOut(rs("Click_Count")) %></td-->
                  </tr>
                  <% rs.movenext  
if rs.EOF then Exit For  
i=i+1 %>
                  <tr> 
                    <td height="20"  align=left bgcolor="#F9F8FD">&nbsp;<img src="../images/ball4.gif" width="11" height="11">&nbsp;&nbsp;<a href="Service_show.asp?newsID=<% =rs("newsID") %>"> 
                      <% =HtmlOut(rs("n_Title")) %>
                    </a></td>
                    <td height="20"  align=center bgcolor="#F9F8FD">                    <% =Year(rs("Input_Time"))&"/"&Month(rs("Input_Time"))&"/"&day(rs("Input_Time")) %></td>
                    <!--td  align=center><% =HtmlOut(rs("Click_Count")) %></td-->
                  </tr>
                  <%   
rs.movenext:if rs.EOF then Exit For  
next  
%>
                </table>
              </form> 
             
<table width="90%" border="0" cellspacing="2" cellpadding="0" align="center">   
  <tr>    
    <td>【共有<font color="#FF0000"> 
      <% =result_num %>
      </font>条记录】</td>   
    <td><%  call LastNextPage(maxpage,page,"width=100% ","<p  align=center class=font2>") %></td>   
  </tr>   
</table> 
<% end if %>
<!--# inc lude file file="incRight.asp"-->      
<% end sub %>
<% sub dbclose() %>
<%
Rs.Close()
Set Rs = Nothing
Set conn= Nothing
%>

<% end sub %>
