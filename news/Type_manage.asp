<%@LANGUAGE="VBScript.EnCODE" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--#include file="../inc/check.asp" -->

<%
'Type_Name="��������"
'Edit_It= CheckMight(Type_Name,"Edit_It") '���Ȩ��Ҫ��������Type_Name(ģ����)ֵ�Ժ�ſ�������
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
    <td align="center" class="CSS-Text1"><b>������</b></td>
  </tr>
</table>
<!--�������-->
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
'��ο������������
'sql="select * from " & table & search & " order by dtime DESC"
'response.write sql
'response.end

set rs=Server.CreateObject("ADODB.recordset")
rs.CursorType = 3
rs.Open sql,conn

rs.PageSize =20 'ÿҳ��¼���� 
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
        <font size="+0">��</font> 
        <% next %>
        <font size="+0">��</font>
<input name="ID" type="checkbox"  value="<%=rs("cID")%>" >
                  <a href="Type_join.asp?editid=<%=rs("cID")%>" title="<%=rs("c_Name")%>&nbsp;(<%=rs("c_Code")%>)">
				  <%=rs("c_Name")%>&nbsp;(<%=rs("c_Code")%>)</a>
                  <%if rs("Is_Del")=true then%>
                 <font color="#FF0000">(��ɾ��)</font>
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
              
              <input name="add_type" type="button"  value="����" onClick="add_one_type(this.form)">
                          &nbsp;<%'if Del_It=true  then %> 
                          <input name="CMD" type="submit" id="CMD" value="ɾ��"> &nbsp; <input name="CMD" type="submit" id="CMD" value="�ָ�"> 
              &nbsp; 
              <%'end if %>
              <%'if Check_All=true  then %>
              &nbsp; <input name="CMD" type="submit" id="CMD" onClick="return window.confirm('����ɾ���󲻿ɻָ��������Ҫɾ����')" value="����ɾ��"> 
              <%'end if %>
              &nbsp;
              <input name="reset" type="reset" id="reset" value="����"> </td>
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
  {��/*ʹ��ʱ�ڱ��в���<input type="checkbox" name="chkall" value="on" onclick="CheckAll(this.form)"><font color="#CC3366" >ѡ�и�ҳ���м�¼</font>*/
  for (var i=0;i<form.elements.length;i++)
    {
    var e = form.elements[i];
    if (e.name != 'chkall')
       e.checked = form.chkall.checked;  
	   /*�����м�¼״̬��Ϊ��chkallһ��,ʵ��ȫѡ��ȫ��ѡ*/
    }
  }
function add_one_type(form){
	var e = form.id;
 document.forms[e].action="type_join.asp" ;
 document.forms[e].submit("type_join.asp");
}
//-->
</script>



