<!--#include file="../inc/setDefType.asp" -->
<%
PATHNAME = GETLISTPATH()  'ͨ��func.asp�е�GETLISTPATH()����ȡ���ļ����ڵĴ��ϼ���
mesql="SELECT * FROM news_Type a,news_TypeGroup b  WHERE ( a.TypeGID=b.TypeGID AND at_Document = '"&pathname&"')"
set mers=Server.CreateObject("ADODB.recordset")
mers.CursorType = 3
mers.Open mesql,conn
  if mers.recordcount <=0 THEN 	
	RESPONSE.WRITE "���ݴ������������"
	response.end
 else
    While (NOT meRs.EOF)   'ѭ���������м�¼
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