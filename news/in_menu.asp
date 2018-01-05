<!--#include file="../inc/setDefType.asp" -->
<%
PATHNAME = GETLISTPATH()  '通过func.asp中的GETLISTPATH()程序取得文件所在的次料夹名
mesql="SELECT * FROM news_Type a,news_TypeGroup b  WHERE ( a.TypeGID=b.TypeGID AND at_Document = '"&pathname&"')"
set mers=Server.CreateObject("ADODB.recordset")
mers.CursorType = 3
mers.Open mesql,conn
  if mers.recordcount <=0 THEN 	
	RESPONSE.WRITE "数据传输错误，请重试"
	response.end
 else
    While (NOT meRs.EOF)   '循环读出所有记录
  %>
       <tr height="20">
		<td align="right" ><a href="../<%=mers("at_document")%>/list.asp?TypeID=<%=trim(mers("TypeID"))%>"><%=mers("Type_Name")%></a>&nbsp;</td>
	   
		<td width="20"><img src="../images/sanjiao.gif" ></td>
	</tr>
		<tr>
			<td colspan="2" height="20">&nbsp;</td>
		</tr>
	 <% 
	 mers.MoveNext()
	Wend
     meRs.Close()
    Set meRs = Nothing 
end if
%>