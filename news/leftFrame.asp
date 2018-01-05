<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp"-->
<!--#include file="../inc/func.asp" -->
<!--#include file="../inc/check.asp" -->

<%
   temp_My_Group=TRIM(session("temp_UserName"))
   if len(TRIM(session("temp_My_Group") ))<>0 then
	 temp_My_Group=TRIM(session("temp_My_Group"))  '如果组名不为空，则按组分配权限
    end if
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<base target="mainFrame">
<link href="../inc/style.css" rel="stylesheet" type="text/css">
</head>

<body>
<table border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td> 
<%
PATHNAME = GETLISTPATH()  '通过func.asp中的程序取得文件所在的次料夹名
sql="SELECT * FROM Module_info b INNER JOIN User_Might a ON b.ModuleName = a.ModuleName WHERE document = '"&pathname&"' AND UserName='"&Session("temp_UserName")&"'"
set rs=Server.CreateObject("ADODB.recordset")
'response.write sql
'response.end
rs.CursorType = 3
rs.Open sql,conn
  if rs.recordcount <=0 THEN 	
	RESPONSE.WRITE "数据传输错误，请重试"
	response.end
 else
    While (NOT Rs.EOF)   '循环读出所有记录
	   if rs("Add_it") OR rs("Edit_it") OR rs("Del_it")  OR rs("Check_All") then 
  %> 
	  <table width="130" border="0" cellspacing="0" cellpadding="0">
       
		<tr>
          <td width="25" height="18"><img src="../images/index/m07.gif" width="18" height="12"></td>
          <td><b><%=rs("ModuleName")%></b></td>
        </tr>
		<%if rs("Add_It") then%>	
		<tr> 
          <td width="25" height="18">&nbsp;</td>
          <td ><a href="../<%=rs("document")%>/join.asp?Type_Name=<%=trim(rs("ModuleName"))%>">&nbsp;&nbsp;新增记录<%'=rs("ModuleName")%></a></td>
        </tr>
		<%end if 
		if rs("Edit_It") then%>
 		<tr> 
          <td width="25" height="18">&nbsp;</td>
          <td ><a href="../<%=rs("document")%>/manage.asp?Type_Name=<%=trim(rs("ModuleName"))%>&Is_Del=0">&nbsp;&nbsp;修改记录<%'=rs("ModuleName")%></a></td>
        </tr>
		<%end if 
		if rs("Del_It") then%>
 		<tr> 
          <td width="25" height="18">&nbsp;</td>
          <td ><a href="../<%=rs("document")%>/manage.asp?Type_Name=<%=trim(rs("ModuleName"))%>&Is_Del=0">&nbsp;&nbsp;删除记录<%'=rs("ModuleName")%></a></td>
        </tr>
		<%end if 
		if rs("Check_All") then%>
 		<tr> 
          <td width="25" height="18">&nbsp;</td>
          <td ><a href="../<%=rs("document")%>/manage.asp?Type_Name=<%=trim(rs("ModuleName"))%>&Is_Check=0">&nbsp;&nbsp;审核记录<%'=rs("ModuleName")%></a></td>
        </tr>
 		<tr> 
          <td width="25" height="18">&nbsp;</td>
          <td ><a href="../<%=rs("document")%>/manage.asp?Type_Name=<%=trim(rs("ModuleName"))%>">&nbsp;&nbsp;全部记录<%'=rs("ModuleName")%></a></td>
  	   </tr>
	   <%end if%>
        </table>
	<% end if
	 rs.MoveNext()
	Wend 
end if
%>
        </tr>
	<tr> 
          <td ><img src="../images/index/m07.gif" width="18" height="12"><a href="type_manage.asp"><b>&nbsp;&nbsp;管理类别</b></a></td>
        </tr>
  <tr> 
    <td> </td>
  </tr>
  <tr> 
    <td><center>
	<a href="../admin/admin.asp" target="_top">主菜单</a><BR>
	<a href="javascript:history.back(1)">后 退</a><BR>
	<a href="javascript:history.go(1)">前 进</a><BR>
</center></td>
 </tr>
</table>
</body>
</html>
