
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--# inc lude file file="../inc/check.asp" -->
<%
search = " WHERE Is_Check =1 AND Is_Del=0  AND Is_Display=1 "

if request("p_Code")<>"" then
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " p_Code like '%" & request("p_Code") & "%' "
end if

if request("p_name")<>"" then
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " p_name like '%" & request("p_name") & "%' "
end if

if request("p_CostPrice")<>"" then
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " p_CostPrice = '" & request("p_CostPrice") & "' "
end if

if request("p_RetailPrice")<>"" then
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " p_RetailPrice = '" & request("p_RetailPrice") & "' "
end if


if request("p_class")<>"" then
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " p_class like '" & request("p_class") & "%' "
end if

if request("code_no")<>"" then
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " p_class like '" & request("code_no") & "%' "
end if

if request("mydept")<>"" then
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " mydept = '" & request("mydept") & "' "
end if

if request("mypublic")<>"" then '传入的是 "简体中文" "English"
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " mypublic like  '%" & request("mypublic") & "%' "
end if
'********附加搜索条件
if request("Pitch")<>"" then
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " p_Area like '%Pitch:" & request("Pitch") & "%' "
end if
if request("Voltage")<>"" then
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " p_Area like '%Voltage rating:" & request("Voltage") & "%' "
end if
if request("Current")<>"" then
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " p_Area like '%Current rating:" & request("Current") & "%' "
end if

table="Product_list"

sql="select * from " & table & search &" order by ontop DESC,PID"
'请参考下面代码排序
'sql="select * from " & table & search & " order by dtime DESC"

set rs=Server.CreateObject("ADODB.recordset")
rs.CursorType = 3
'response.write sql
rs.Open sql,conn

rs.PageSize =6 '每页商品条数
result_num=rs.RecordCount '商品总数


if result_num<=0 then
	if search="" then
		word="对不起!<br>还没有输入商品!"
	else	
		word="对不起!<br>还没有找到符合条件的商品!请更换条件重新搜索!"
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
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"> 
<LINK REL="stylesheet" HREF="../inc/style.css" TYPE="text/css">
<script language="javascript" src="../inc/javaScript.js"></script>
<% sub show_list() %>
<div id="Layer0007" align="center" style="width:183px; height:80px; z-index:1;display: none">网站程序设计:http://www.eraneed.com <br>
<a href="mailto:hiaming@163.com" title="程序作者:李宗明">程序作者:李宗明(湖南邵阳)</a></div>

<table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td >
              <!--# inc lude file file="incLeft.asp"-->
                <script src='../inc/javascript.js'></script>
                <!--# inc lude file file="in_type_select.asp"-->
			<% if result_num<=0 then %>
			
			<center><BR><BR><% =word %><BR></center>
			<%'Response.Write "<script language=JavaScript1.1>alert(' "& word  &" ');history.back(-1);</script>" %>
			
			<% else %>	   
              <table width="90%" border="0" cellspacing="2" cellpadding="0" align="center">
                <tr valign="middle">
                  <td align="center" id="page_title">&nbsp;</td>
                </tr>
              </table>
              <table width="90%" border="0" cellspacing="2" cellpadding="0" align="center">
                <tr valign="middle">
                  <td class="white"> &nbsp;&nbsp;【A total of <font color="#FF0000"> <%=#@~^CwAAAA==./;^Y|xEsPbgQAAA==^#~@%> </font> pieces of merchandise found】</td>
                  <td ><%#@~^UgAAAA==~,mC^V,SlkYgn6DnCo`hCXwlTn~aloSEhbNDtxFTTuPE~r@!w,PCsboxx^xO+M~1VCk/{0W	Yy@*J*PKxoAAA==^#~@%></td>
                </tr>
              </table>
              <form action="" method="get" name="form1">
                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="3">
                  <tr>
                    <% for i=1 to rs.PageSize %>
                    <td align="center" valign="top">
					<div align="center"><a href="../product/product_show.asp?pID=<%=HtmlOut(rs("Pid")) %>"><img src="<%=HtmlOut(rs("P_picpath")) %>" onload="reloadImg(this,189,275)" border=0 /></a></div>
					<div align="center"><a href="../product/product_show.asp?pID=<%=HtmlOut(rs("Pid")) %>">『<%=HtmlOut(rs("p_Name")) %>』</a></div>

                    </td>
                    <%if i mod 3 =0 then%>
                  </tr>
                  <tr>
                    <td></td>
                  </tr>
                  <tr>
                    <%end if%>
                    <% 
								rs.movenext:if rs.EOF then Exit For
								next
								%>
                  </tr>
                </table>
              </form>
		              <table width="90%" border="0" cellspacing="2" cellpadding="0" align="center">
                <tr valign="middle">
                  <td class="white"> &nbsp;&nbsp;【A total of <font color="#FF0000"> <%=#@~^CwAAAA==./;^Y|xEsPbgQAAA==^#~@%> </font> pieces of merchandise found】</td>
                  <td ><%#@~^UgAAAA==~,mC^V,SlkYgn6DnCo`hCXwlTn~aloSEhbNDtxFTTuPE~r@!w,PCsboxx^xO+M~1VCk/{0W	Yy@*J*PKxoAAA==^#~@%></td>
                </tr>
              </table>
              
			  <%End if%> 
			  
              <!--# inc lude file file="incRight.asp"-->
            </td>
          </tr>
        </table>
		<% end sub %>
<% sub dbclose() %>
<%
Rs.Close()
Set Rs = Nothing
Set conn= Nothing
%>

<% end sub %>