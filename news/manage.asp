<%@LANGUAGE="VBSCRIPT.encode" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--#include file="../inc/check.asp" -->
<!--#include file="../inc/setDefType.asp" -->
<%
search = " WHERE IsSystem=0 "
if request("Is_Check")<>"" then
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " Is_Check = " & request("Is_Check") & " "
end if

if request("Is_Del")<>"" then
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " Is_Del = " & request("Is_Del") & " "
end if

if request("Is_Display")<>"" then
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " Is_Display = " & request("Is_Display") & " "
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
else  '����Ĭ��ֵ
       	'TypeID=setDefaultType("News_Type","News_TypeGroup")   '��setDefType�ļ���setDefaultType������Ĭ�Ϸ���
       	'TypeID="101"

'	if search="" then
'		search = search & " WHERE "
'	else
'		search = search & " AND "
'	end if
'	search = search & " TypeID = " &TypeID& " "
end if

if request("Input_Name")<>""  then    '�������Input_Name����
	search = search & " AND "  '��Ϊǰ�漺��ǿ��ʹ��Type_Name,���Բ����ټ��search�Ƿ�Ϊ��
	search = search & " Input_Name = '" &Request("Input_Name")& "' "  
end if
'Type_Name=getTypeName("News_Type",TypeID)
Type_Name="���Ź���" '���з���
'response.write Type_Name
'response.end
See_It= CheckMight(Type_Name,"See_It")
Edit_It= CheckMight(Type_Name,"Edit_It")
Del_it=CheckMight(Type_Name,"Del_It")
Check_All=CheckMight(Type_Name,"Check_All")    '���Ȩ��Ҫ��������Type_Nameֵ�Ժ�ſ���


	if Check_All<>true AND Edit_It<>true AND Del_It<>true then  '���Ȩ��   'Check_All���ֶ���
		Response.Write ("<script language=JavaScript1.1>alert(' Sorry! ����Ȩ��������! ');history.back(-1);</script>" )
		Response.end 
	end if 

if  Check_All<>true then  '���Ȩ��   
	search = search & " AND "
	search = search & " Input_Name = '" &Session("temp_UserName") & "' "  
	'���û��������м�¼��Ȩ�ޣ���ֻ�г��Լ���������� ���Դ����Input_Name����
end if


table="News_Info as n left JOIN News_Types as t ON n.TypeID = t.c_Code"

sql="select n.*,t.c_Name from " & table & search & " order by n.Is_del DESC,n.Is_check DESC,Input_Time DESC,newsID DESC"
set rs=Server.CreateObject("ADODB.recordset")
rs.CursorType = 3
'response.write sql
'response.end
rs.Open sql,conn

rs.PageSize =15 'ÿҳ��¼����
result_num=rs.RecordCount '��¼����


if result_num<=0 then
	if search="" then
		word="Ŀǰ��û�м�¼!"
	else	
		word="û�в鵽���������ļ�¼!"
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
<html>
<head>
<title><%= This_Site_Name %></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../inc/Adminstyle.css">
<script language="JavaScript" src="../inc/check.js"></script>
<script language="JavaScript">
<!--
function CheckAll(thisform){
  for (var i=0;i<thisform.elements.length;i++)
    {
    var e = thisform.elements[i];
    if (e.name != 'chkall')
       e.checked = thisform.chkall.checked;  
    }
  }
//-->
</script>
</head>

<body bgcolor="#FFFFFF" topmargin="0" leftmargin="0">
<!--# inc lude file file="incLeft.asp"-->

<% if result_num<=0 then %>

<center><BR><BR><BR><BR><% =word %><BR><BR><BR><BR><a href=join.asp?typeid=<%=typeid%>>������¼�¼��</a></center>
<%'Response.Write "<script language=JavaScript1.1>alert(' "& word  &" ');history.back(-1);</script>" %>
<% else %>
<table width="400" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="20" align="center"><h3><%=trim(Type_Name)%>&nbsp;</h3></td>
  </tr>
</table>
<form action="del.asp" method="get" name="Form1">
<table width="100%" border="0" cellspacing="1" cellpadding="0" align="center" bgcolor=#94A2CE>
  <tr align=center bgcolor=#C6E3FF> 
    <td><b>ѡ��</b></td>
    <td><b>����</b></td>
    <td><b>����ʱ��</b></td>
    <td><b>�������</b></td>
    <td><b>�����</b></td>
    <td><b>δɾ��</b></td>
    <% 'if Edit_it=true  then%>
    <td><b>�༭</b></td>
    <% 'end if%>
  </tr>
  <% for i=1 to rs.PageSize %>
  <tr bgcolor=#FFFFFF> 
    <td  align=center> <input name="newsID" type="checkbox"  value="<% =rs("newsID") %>" > 
    ��<% =HtmlOut(rs("c_Name")) %>��</td>
    <td  align=center><a href="show.asp?newsID=<% =rs("newsID") %>"> 
      
      <% =HtmlOut(rs("n_Title")) %>
      </a></td>
    <td  align=center>
      <% =Year(rs("Input_Time"))&"/"&Month(rs("Input_Time"))&"/"&day(rs("Input_Time")) %>
    </td>
    <td  align=center>
      <% =HtmlOut(rs("Click_Count")) %>
    </td>
    <td  align="center"> 
      <% if cbool(rs("Is_Check")=1) then response.write "��" else  response.write "<font color=#FF0000>��</font>" end if %>
    </td>
    <td  align="center"> 
      <% if cbool(rs("Is_Del")=1) then response.write "<font color=#FF0000>��</font>" else  response.write "��" end if %>
    </td>
    <% if Edit_it=true  then%>
    <td  align="center"> <a href="join.asp?editid=<% response.write rs("newsID") %>">�༭</a></td>
    <% end if%>
  </tr>
  <% 
rs.movenext:if rs.EOF then Exit For
next
%>
</table>
  <center><input type="checkbox" name="chkall" value="on" onclick="CheckAll(this.form);"   >
<font color="#CC3366" >ѡ�и�ҳ���м�¼</font><BR>
    <%if Del_It=true  then %><input name="CMD" type="submit" id="CMD" value="ɾ��">
                  &nbsp;
				  <input name="CMD" type="submit" id="CMD" value="�ָ�">
                  &nbsp;<%end if %>
                  <%if CheckMight(Type_Name,"Check_All")=true  then %><input name="CMD" type="submit" id="CMD" value="ͨ�����">
                  &nbsp;
                  <input name="CMD" type="submit" id="CMD" value="����ɾ��"><%end if %>
       &nbsp; 
    <input name="reset" type="reset" id="reset" value="����ѡ��">
                </center>
</form>
<table width="90%" border="0" cellspacing="2" cellpadding="0" align="center">
  <tr> 
    <td>������<font color="#FF0000"> <% =result_num %></font>����¼��</td>
    <td>
      <%  call LastNextPage(maxpage,page,"width=100% ","<p  align=center class=font2>") %></td>
	<td><a href=join.asp?typeid=<%=typeid%>>������¼�¼��</a></td>
  </tr>
</table>
<% end if %>
<!--# inc lude file file="incRight.asp"--> 
</body>
</html>
<%
Rs.Close()
Set Rs = Nothing
Set conn= Nothing
%>
